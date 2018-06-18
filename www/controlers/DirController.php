<?php

class DirController {

    public static function actionIndex() {     

        $listDirectories = Directories::getRecords('kt_list_directories', 'listRecords', null);
        
//print_r($listDirectories);
        //Список категорий продуктов
        $listProdCateg = Functions::getRecords('listRecords', 'kt_dir_cat_prod', null);
        $idDefCatProd = $listProdCateg[0]['id'];
        //Количество записей в справочнике категорий продуктов
        $countProdCateg = count($listProdCateg);
        //Количество записей в справочнике продуктов
        $countProds = Functions::getRecords('countRecords', 'kt_dir_prod', null);
        //Все записи из справочника продуктов
        $prods = Functions::getRecords('query', null, 'SELECT *, 
            (select id_prod from kt_dir_prod_receipt where id_prod = t.iddir_prod limit 1) as blocked1, 
            (select id_prod from kt_stock_oper_pos where id_prod = t.iddir_prod limit 1) as blocked2
             FROM kt_dir_prod t
             LEFT JOIN kt_dir_edizm kde ON kde.id_edizm=t.id_edizm');
        
        $listEdizm = Functions::getRecords('listRecords', 'kt_dir_edizm', null);
        
        $listTypeOper = Functions::getRecords('listRecords', 'kt_dir_type_oper', null);
        $listScore = Functions::getRecords('listRecords', 'kt_dir_score', null);
        $listTypeAnalytic = Functions::getRecords('listRecords', 'kt_dir_type_analytic', null);
        $listAnalytics = Functions::getRecords('listRecords', 'kt_dir_analytic', null);

        require_once(ROOT . '/views/directories/index.php');

        return true;
    }
    
    public static function actionShowDirectory($directoryName, $idDirectory) {

        $directoryFields = Directories::getRecords('kt_list_fields_directories', 'listRecords', 'id_directory = ' . $idDirectory);
        
        $countDirectoryFields = count($directoryFields);
        
        $records = Directories::getRecords($directoryName, 'listRecords');

        require_once(ROOT . '/views/directories/simplyDirectory.php');    
        
        return true;
    }

    public static function actionSave($directoryName, $idDirectory) {

        $directoryFields = Directories::getRecords('kt_list_fields_directories', 'listRecords', 'id_directory = ' . $idDirectory);

        $mas = json_decode($_POST["jsonData"], true);
        
        for($i = 1; $i < count($directoryFields); $i++) {
            $values = $values . ',"' . $mas[$i-1] . '"';
        }

        $values = substr($values, 1);

        $idRecord = Functions::insertRecord($directoryName, $values); 
        
        self::actionShowDirectory($directoryName, $idDirectory);    
                      
        return true;
    }    
    
    public static function actionSaveProd() {

        $mas = json_decode($_POST["jsonData"], true);
        $idDefCatProd = $mas['idCatProd'];
        
        $idProd = Functions::insertRecord('kt_dir_prod', '"' . $mas['nameProd'] . '", "", ' . $mas['idEdIzm'] . ', "", ' . $mas['idCatProd']);               
        
        $filename = Functions::loader($idProd);
        
        if ($filename) { 
            Functions::updateRecord('kt_dir_prod', 'img_prod = "/images/products/' . $filename . '"', 'iddir_prod = ' . $idProd);
        }
        
        //Список категорий продуктов
        $listProdCateg = Functions::getRecords('listRecords', 'kt_dir_cat_prod', null);
        //Количество записей в справочнике категорий продуктов
        $countProdCateg = count($listProdCateg);
        //Количество записей в справочнике продуктов
        $countProds = Functions::getRecords('countRecords', 'kt_dir_prod', null);
        //Все записи из справочника продуктов
        $prods = Functions::getRecords('query', null, 'SELECT *, 
            (select id_prod from kt_dir_prod_receipt where id_prod = t.iddir_prod limit 1) as blocked1, 
            (select id_prod from kt_stock_oper_pos where id_prod = t.iddir_prod limit 1) as blocked2
             FROM kt_dir_prod t
             LEFT JOIN kt_dir_edizm kde ON kde.id_edizm=t.id_edizm');
        
        $listEdizm = Functions::getRecords('listRecords', 'kt_dir_edizm', null);        
        
        require(ROOT . '/views/directories/prods.php');    
        
        return true;
    } 

    public static function actionUpdProd($id) {

        $mas = json_decode($_POST["jsonData"], true);
        
        $idProd = Functions::updateRecord('kt_dir_prod', 'name_prod = "' . $mas['nameProd'] . 
                '", id_edizm = ' . $mas['edIzm'] . 
                ', id_category_prod = ' . $mas['catProd'], 
                'iddir_prod = ' . $id);               
        
        $filename = Functions::loader($id);
        
        if ($filename) { 
            Functions::updateRecord('kt_dir_prod', 'img_prod = "/images/products/' . $filename . '"', 'iddir_prod = ' . $id);
        }
        
        //Список категорий продуктов
        $listProdCateg = Functions::getRecords('listRecords', 'kt_dir_cat_prod', null);
        //Количество записей в справочнике категорий продуктов
        $countProdCateg = count($listProdCateg);
        //Количество записей в справочнике продуктов
        $countProds = Functions::getRecords('countRecords', 'kt_dir_prod', null);
        //Все записи из справочника продуктов
        $prods = Functions::getRecords('query', null, 'SELECT *, 
            (select id_prod from kt_dir_prod_receipt where id_prod = t.iddir_prod limit 1) as blocked1, 
            (select id_prod from kt_stock_oper_pos where id_prod = t.iddir_prod limit 1) as blocked2
             FROM kt_dir_prod t
             LEFT JOIN kt_dir_edizm kde ON kde.id_edizm=t.id_edizm');
        
        $listEdizm = Functions::getRecords('listRecords', 'kt_dir_edizm', null);        
        
        require(ROOT . '/views/directories/prods.php');           
        
        return true;
    }  
    
    public static function actionDeleteProd($id) {
        
        $fileName = Functions::getRecords('query', null, 
                'Select img_prod from kt_dir_prod where iddir_prod = ' . $id);

        Functions::deleteRecord('kt_dir_prod', 'iddir_prod = ' . $id);            

        if (file_exists($_SERVER['DOCUMENT_ROOT'] . $fileName[0]['img_prod'])) {
            unlink($_SERVER['DOCUMENT_ROOT'] . $fileName[0]['img_prod']);
        }
        
        return true;
    }
    
    public static function actionDelete($tableName, $id) {

        return Functions::deleteRecord($tableName, $id);          
        
    }
    
    public static function actionUpdate($tableName, $id) {

        $mas = json_decode($_POST["jsonData"], true);
        $mas = $mas['fields'];

        for ($i = 0; $i < count($mas); $i++) {
            $values = $values . ',' . $mas[$i]['nameField'] . '="' . $mas[$i]['valueField'] . '"';
        }
        
        $values = substr($values, 1);

        return Functions::updateRecord($tableName, $values, $id);             
        
    }    

        
    
    
    
    
    
    public static function actionDirectoryOper($typeOper, $tableName, $id) {
        
        if ($typeOper == 'show') {
            
            $directoryName = $tableName;
            $idDirectory = $id;
            
            $directoryFields = Directories::getRecords('kt_list_fields_directories', 'listRecords', 'id_directory = ' . $id);
            $countDirectoryFields = count($directoryFields);
            $records = Directories::getRecords($tableName, 'listRecords');
            
            require_once(ROOT . '/views/directories/simplyDirectory.php');
            
        } else if ($typeOper == 'save') {          
            
            $values = '"' . $_POST["name-prod"] . '","",' . $_POST["add-prod-edizm"] . ', "", ' . $_POST["add-prod-categ"];            
            $idRecord = Functions::insertRecord($tableName, $values);
            
            if ($idRecord) {                
                $filename = Functions::loadFile('/images/products/', $idRecord);    

                if ($filename) {                    
                    Functions::updateRecord('kt_dir_prod', 
                            'img_prod = "/images/products/' . $filename . '"', 
                            'iddir_prod = ' . $idRecord);                    
                }                
            } 
            
            self::actionIndex();
            
        } else if ($typeOper == 'del') {
            $fileName = Functions::getRecords('query', null, 
                    'Select img_prod from kt_dir_prod where iddir_prod = ' . $id);
            
            Functions::deleteRecord($tableName, 'iddir_prod = ' . $id);            
            
            unlink($_SERVER['DOCUMENT_ROOT'] . $fileName[0]['img_prod']);
            
            self::actionIndex();
            
        } else if ($typeOper == 'simplysave') {
            
            $directoryFields = Directories::getRecords('kt_list_fields_directories', 'listRecords', 'id_directory = ' . $id);
            
            for($i = 1; $i < count($directoryFields); $i++) {
                $values = $values . ',"' . $_POST[$directoryFields[$i]["name_field"]] . '"';
            }
            
            $values = substr($values, 1);
            
            $idRecord = Functions::insertRecord($tableName, $values);
            self::actionIndex();
            
        } else if ($typeOper == 'simplydel') {
            
            Functions::deleteRecord($tableName, $id);                      
            
        } else if ($typeOper == 'simplyupd') {
            
            $mas = json_decode($_POST["jsonData"], true);
            $mas = $mas['fields'];

            for ($i = 0; $i < count($mas); $i++) {
                $values = $values . ',' . $mas[$i]['nameField'] . '="' . $mas[$i]['valueField'] . '"';
            }
            $values = substr($values, 1);
            
            Functions::updateRecord($tableName, $values, $id);                   
            
        } else if ($typeOper == 'delpic') {
            
            $fileName = json_decode($_POST["jsonData"], true);            
            
            unlink($_SERVER['DOCUMENT_ROOT'] . $fileName['img']);
            
            Functions::updateRecord($tableName, 'img_prod = ""', 'iddir_prod = ' .$id);                   
            
        } else if ($typeOper == 'updrec') {   
            if (count($_FILES)) {
                $filename = Functions::loadFile('/images/products/', $id);    
                if ($filename) {                    
                    Functions::updateRecord('kt_dir_prod', 
                            'img_prod = "/images/products/' . $filename . '"', 
                            'iddir_prod = ' . $id);                     
                }         
                
                header('Location: '.$_SERVER['HTTP_REFERER']);
            } else {
                $values = json_decode($_POST["jsonData"], true);   
                $values = $values['fields'];
                
                Functions::updateRecord('kt_dir_prod', 
                    'name_prod = "' . $values[0] . '", id_edizm = ' . $values[1] . ', id_category_prod = ' . $values[2], 
                    'iddir_prod = ' .$id); 
            }      
        } else if ($typeOper == 'savean') {
                    
            $mas = json_decode($_POST["jsonData"], true);
            
            Directories::saveAnalytic($mas, $tableName);          
            
            $listTypeOper = Functions::getRecords('listRecords', 'kt_dir_type_oper', null);
            $listScore = Functions::getRecords('listRecords', 'kt_dir_score', null);
            $listTypeAnalytic = Functions::getRecords('listRecords', 'kt_dir_type_analytic', null);
            $listAnalytics = Functions::getRecords('listRecords', 'kt_dir_analytic', null);
            
            include ROOT . '/views/directories/analyticList.php';
           
        } else if ($typeOper == 'showanpos') {
            
            $listAnalyticPos = Functions::getRecords('query', null, "Select kdap.*, kds.num_score as debit_score, kds1.num_score as credit_score
                                                    from kt_dir_analytic_pos kdap 
                                                    left join kt_dir_score kds on kds.id_dir_score = kdap.debit_score
                                                    left join kt_dir_score kds1 on kds1.id_dir_score = kdap.credit_score
                                                    where id_analytic = $id");                      
            
            include ROOT . '/views/directories/analyticPos.php';
            
        } else if ($typeOper == 'delan') {
            
            Functions::deleteRecord($tableName, "id = $id");
            
        } else if ($typeOper == 'delanpos') {
            
            Functions::deleteRecord($tableName, "id = $id");
            
        } else if ($typeOper == 'updan') {
                    
            $mas = json_decode($_POST["jsonData"], true);
            
            Directories::updateAnalytic($mas, $tableName, $id);          
            
            $listTypeOper = Functions::getRecords('listRecords', 'kt_dir_type_oper', null);
            $listScore = Functions::getRecords('listRecords', 'kt_dir_score', null);
            $listTypeAnalytic = Functions::getRecords('listRecords', 'kt_dir_type_analytic', null);
            $listAnalytics = Functions::getRecords('listRecords', 'kt_dir_analytic', null);
            
            include ROOT . '/views/directories/analyticList.php';
           
        }   
                
        return true;
    }
}
