<?php

class ReceiptController {

    public static function actionIndex() {
        
        $receiptsCategories = Functions::getRecords('query', null, 
                'select * from kt_dir_cat_receipt order by 1 asc');        

        require_once(ROOT . '/views/receipts/index.php');

        return true;
    }
    
    public static function actionShowReceipts($idCategoryReceipts) {
        //Список категорий продуктов
        $listProdCateg = Functions::getRecords('listRecords', 'kt_dir_cat_prod', null);
        //Все записи из справочника продуктов
        $prods = Functions::getRecords('query', null, 'SELECT * FROM kt_dir_prod t '
                . 'LEFT JOIN kt_dir_edizm kde ON kde.id_edizm=t.id_edizm');    
        
        $receiptsCategories = Functions::getRecords('listRecords', 'kt_dir_cat_receipt', null);        
            
        $categoryReceipts = Receipts::getRecords('kt_dir_cat_receipt', 'oneRecord', ' id = ' . $idCategoryReceipts);        
            
        $receipts = Functions::getRecords('query', null, "Select * from kt_dir_receipts where id_categ_receipt = $idCategoryReceipts order by name_receipt asc");  
        
        $prodsByReceipt = Receipts::getRecords(null, "query", "SELECT kdpr.*, kdr.id_categ_receipt, kdp.name_prod, kde.short_edizm 
                                                            FROM kt_dir_prod_receipt kdpr
                                                            LEFT JOIN kt_dir_receipts kdr on kdr.id = kdpr.id_receipt
                                                            left join kt_dir_prod kdp on kdp.iddir_prod=kdpr.id_prod
                                                            left join kt_dir_edizm kde on kde.id_edizm=kdp.id_edizm
                                                            where kdr.id_categ_receipt = $idCategoryReceipts");          
        
        require_once(ROOT . '/views/receipts/listReceipts.php');
        
        return true;
        
    }
    
    public static function actionAddIngr($idReceipt) {
        //Список категорий продуктов
        $listProdCateg = Functions::getRecords('listRecords', 'kt_dir_cat_prod', null);
        //Все записи из справочника продуктов
        $prods = Functions::getRecords('query', null, 'SELECT * FROM kt_dir_prod t '
                . 'LEFT JOIN kt_dir_edizm kde ON kde.id_edizm=t.id_edizm');         
                
        require_once(ROOT . '/views/receipts/addIngr.php');
        
        return true;
    }
    
    public static function actionSaveReceipt($idCategory) {
        
        $mas = json_decode($_POST["jsonData"], true);
            
        Receipts::saveReceipt($mas); 
        
//Список категорий продуктов
        $listProdCateg = Functions::getRecords('listRecords', 'kt_dir_cat_prod', null);
        //Все записи из справочника продуктов
        $prods = Functions::getRecords('query', null, 'SELECT * FROM kt_dir_prod t '
                . 'LEFT JOIN kt_dir_edizm kde ON kde.id_edizm=t.id_edizm');    
        
        $receiptsCategories = Functions::getRecords('listRecords', 'kt_dir_cat_receipt', null);        
            
        $categoryReceipts = Receipts::getRecords('kt_dir_cat_receipt', 'oneRecord', ' id = ' . $idCategory);        
            
        $receipts = Functions::getRecords('query', null, "Select * from kt_dir_receipts where id_categ_receipt = $idCategory order by name_receipt asc");  
        
        $prodsByReceipt = Receipts::getRecords(null, "query", "SELECT kdpr.*, kdr.id_categ_receipt, kdp.name_prod, kde.short_edizm 
                                                            FROM kt_dir_prod_receipt kdpr
                                                            LEFT JOIN kt_dir_receipts kdr on kdr.id = kdpr.id_receipt
                                                            left join kt_dir_prod kdp on kdp.iddir_prod=kdpr.id_prod
                                                            left join kt_dir_edizm kde on kde.id_edizm=kdp.id_edizm
                                                            where kdr.id_categ_receipt = $idCategory"); 
        
        include ROOT . '/views/receipts/receipts.php';
        
        return true;
    }    
    
    public static function actionUpdateReceipt($idReceipt) {
        
        $mas = json_decode($_POST["jsonData"], true);

        Receipts::updateReceipt($mas); 
        
        return true;
    }
    
    public static function actionDeleteReceipt($idReceipt) {
        
        $mas = json_decode($_POST["jsonData"], true);
        
        $idCategory = Functions::getRecords('query', null, 
                'Select id_categ_receipt from kt_dir_receipts where id = ' . $idReceipt);
        $idCategory = $idCategory[0]['id_categ_receipt'];

        Receipts::deleteRecord('kt_dir_receipts', 'id = ' . $idReceipt);   
        
//Список категорий продуктов
        $listProdCateg = Functions::getRecords('listRecords', 'kt_dir_cat_prod', null);
        //Все записи из справочника продуктов
        $prods = Functions::getRecords('query', null, 'SELECT * FROM kt_dir_prod t '
                . 'LEFT JOIN kt_dir_edizm kde ON kde.id_edizm=t.id_edizm');    
        
        $receiptsCategories = Functions::getRecords('listRecords', 'kt_dir_cat_receipt', null);        
            
        $categoryReceipts = Receipts::getRecords('kt_dir_cat_receipt', 'oneRecord', ' id = ' . $idCategory);        
            
        $receipts = Functions::getRecords('query', null, "Select * from kt_dir_receipts where id_categ_receipt = $idCategory order by name_receipt asc");  
        
        $prodsByReceipt = Receipts::getRecords(null, "query", "SELECT kdpr.*, kdr.id_categ_receipt, kdp.name_prod, kde.short_edizm 
                                                            FROM kt_dir_prod_receipt kdpr
                                                            LEFT JOIN kt_dir_receipts kdr on kdr.id = kdpr.id_receipt
                                                            left join kt_dir_prod kdp on kdp.iddir_prod=kdpr.id_prod
                                                            left join kt_dir_edizm kde on kde.id_edizm=kdp.id_edizm
                                                            where kdr.id_categ_receipt = $idCategory"); 
        
        require_once(ROOT . '/views/receipts/receipts.php');        
        
        return true;
    } 
    
    public static function actionShowRecIngr($idReceipt) {
        
        $prodsByReceipt = Receipts::getRecords(null, "query", 
                "SELECT kdpr.id, kdpr.id_receipt, kdpr.id_prod, round(kdpr.brutto_1 * 1000) as brutto_1, 
                    round(kdpr.netto_1 * 1000) as netto_1, round(kdpr.brutto_2 * 1000) as brutto_2, 
                    round(kdpr.netto_2 * 1000) as netto_2, kdr.id_categ_receipt, 
                    kdp.name_prod, kde.short_edizm 
                 FROM kt_dir_prod_receipt kdpr
                 LEFT JOIN kt_dir_receipts kdr on kdr.id = kdpr.id_receipt
                 left join kt_dir_prod kdp on kdp.iddir_prod=kdpr.id_prod
                 left join kt_dir_edizm kde on kde.id_edizm=kdp.id_edizm
                 where kdr.id = $idReceipt");
        
        $sumNetto = Receipts::getRecords(null, 'query', 
                'SELECT output_weight_1 as netto_1,
                 output_weight_2 as netto_2
                 FROM kt_dir_receipts
                 WHERE id = ' . $idReceipt);

        require_once(ROOT . '/views/calculations/receiptIngredients.php'); 
        
        return true;
        
    }
    
    public static function actionShowAllReceipts() {
        
        $receipts = Functions::getRecords('query', null, 
                'SELECT kdr.*, kdcr.name_categ_receipt 
                 FROM kt_dir_receipts kdr 
                 LEFT JOIN kt_dir_cat_receipt kdcr on kdcr.id = kdr.id_categ_receipt
                 order by kdr.name_receipt asc');

        require_once(ROOT . '/views/receipts/allReceipts.php');   
        
        return true;
    }


//    public static function actionReceiptOper($typeOper, $parameter = null) {      
//
//        //Список категорий продуктов
//        $listProdCateg = Functions::getRecords('listRecords', 'kt_dir_cat_prod', null);
//        //Все записи из справочника продуктов
//        $prods = Functions::getRecords('query', null, 'SELECT * FROM kt_dir_prod t '
//                . 'LEFT JOIN kt_dir_edizm kde ON kde.id_edizm=t.id_edizm');    
//        
//        $receiptsCategories = Functions::getRecords('listRecords', 'kt_dir_cat_receipt', null);        
//            
//        $categoryReceipts = Receipts::getRecords('kt_dir_cat_receipt', 'oneRecord', ' id = ' . $parameter);        
//            
//        $receipts = Receipts::getRecords('kt_dir_receipts', 'listRecords', "id_categ_receipt=$parameter");  
//        
//        $prodsByReceipt = Receipts::getRecords(null, "query", "SELECT kdpr.*, kdr.id_categ_receipt, kdp.name_prod, kde.short_edizm 
//                                                            FROM kt_dir_prod_receipt kdpr
//                                                            LEFT JOIN kt_dir_receipts kdr on kdr.id = kdpr.id_receipt
//                                                            left join kt_dir_prod kdp on kdp.iddir_prod=kdpr.id_prod
//                                                            left join kt_dir_edizm kde on kde.id_edizm=kdp.id_edizm
//                                                            where kdr.id_categ_receipt = $parameter");      
//        
//        if ($typeOper == 'show') {
//     
//            require_once(ROOT . '/views/receipts/listReceipts.php');
//            
//        } else if ($typeOper == 'delete') {
//            
//            Receipts::deleteRecord('kt_dir_receipts', 'id = ' . $parameter);            
//            
//        } else if ($typeOper == 'save') {
//
//            $mas = json_decode($_POST["jsonData"], true);
//            
//            Receipts::saveReceipt($mas);           
//            
//        } else if ($typeOper == 'upd') {
//            
//            $mas = json_decode($_POST["jsonData"], true);
//            
//            Receipts::updateReceipt($mas);            
//            
//        } else if ($typeOper == 'showrecingr') {
//            
//            $prodsByReceipt = Receipts::getRecords(null, "query", 
//                    "SELECT kdpr.id, kdpr.id_receipt, kdpr.id_prod, round(kdpr.brutto_1 * 1000) as brutto_1, 
//                        round(kdpr.netto_1 * 1000) as netto_1, round(kdpr.brutto_2 * 1000) as brutto_2, 
//                        round(kdpr.netto_2 * 1000) as netto_2, kdr.id_categ_receipt, 
//                        kdp.name_prod, kde.short_edizm 
//                     FROM kt_dir_prod_receipt kdpr
//                     LEFT JOIN kt_dir_receipts kdr on kdr.id = kdpr.id_receipt
//                     left join kt_dir_prod kdp on kdp.iddir_prod=kdpr.id_prod
//                     left join kt_dir_edizm kde on kde.id_edizm=kdp.id_edizm
//                     where kdr.id = $parameter");
//            $sumNetto = Receipts::getRecords(null, 'query', 
//                    'SELECT output_weight_1 as netto_1,
//                     output_weight_2 as netto_2
//                     FROM kt_dir_receipts
//                     WHERE id = ' . $parameter);
//            
//            require_once(ROOT . '/views/calculations/receiptIngredients.php');
//            
//        } else if ($typeOper == 'showall') {
//            
//            $receipts = Functions::getRecords('query', null, 
//                    'SELECT kdr.*, kdcr.name_categ_receipt 
//                     FROM kt_dir_receipts kdr 
//                     LEFT JOIN kt_dir_cat_receipt kdcr on kdcr.id = kdr.id_categ_receipt
//                     order by kdr.name_receipt asc');
//            
//            require_once(ROOT . '/views/receipts/allReceipts.php');
//            
//        } else if ($typeOper == 'print') {
//            
//            Functions::getPrintFormDoc('receipt'); 
//            
//        }         
//        
//        return true;		
//    }

}
