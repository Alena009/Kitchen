<?php

class CalcController {

    public static function actionIndex() {
        
        //require_once(ROOT . '/views/calculations/index.php');
        self::actionShow();

        return true;
    }
        
    public static function actionShow() {
        
        $listCalculations = Functions::getRecords('query', null, 
                'Select kc.*,(select confirm from kt_requests where id=kc.has_request) as confirm, 
            (select group_concat(id_stock_oper) from kt_stock_oper where id_type_oper = 1 and id_request = kc.has_request) as removes, 
            (select group_concat(id_stock_oper) from kt_stock_oper where id_type_oper = 3 and id_request = kc.has_request) as rets
                 from kt_calcs kc order by kc.id desc');                  

        require_once(ROOT . '/views/calculations/listCalculations.php');       
        
        return true;
    }    
    
    public static function actionAdd() {
        
        $typeOper = 'add';
        
        $calculations = new Calculations();
        
        $organizations = $calculations->organizations;        
        $stocks = $calculations->stocks;
        $base = $calculations->base;
        $score = $calculations->score;
        $listProdCateg = $calculations->listProdCateg;
        $prods = $calculations->prods;
        $allCatReceipts = $calculations->allCatReceipts;
        $allReceipts = $calculations->allReceipts;        
        $allMenus = $calculations->allMenus;        
        $allMenusReceipts = $calculations->allMenusReceipts;
        
        require_once(ROOT . '/views/calculations/newCalculation.php');
        
        return true;
    }   
    
    public static function actionSave() {
        
        $mas = json_decode($_POST["jsonData"], true);
        
        Calculations::saveCalculation($mas);      
        
        return true;
    }
    
    public static function actionShowcalc($idCalc) {
        
        $calculation = Calculations::getOneCalculation($idCalc);
        $calcReceipts = Calculations::getReceiptsByCalc($idCalc);        
        $calcReceiptsProds = Calculations::getProdsByReceiptsCalcs($idCalc);
        
        $totalReceipts = Functions::getRecords('query', null, 
                'Select kdr.name_receipt, sum(kcr.count) as count
                from kt_calcs_receipts kcr 
                left join kt_dir_receipts kdr on kdr.id = kcr.id_receipt
                where kcr.id_calc = ' . $idCalc . '
                group by kcr.id_receipt');

        require_once(ROOT . '/views/calculations/showCalculation.php');
        
        return true;
    }
    
    public static function actionUpdcalc($idCalc) {
        
        $typeOper = 'updcalc';
        
        $calculations = new Calculations();
        
        $organizations = $calculations->organizations;        
        $stocks = $calculations->stocks;
        $base = $calculations->base;
        $score = $calculations->score;
        $listProdCateg = $calculations->listProdCateg;
        $prods = $calculations->prods;
        $allCatReceipts = $calculations->allCatReceipts;
        $allReceipts = $calculations->allReceipts;        
        $allMenus = $calculations->allMenus;        
        $allMenusReceipts = $calculations->allMenusReceipts;        
        
        $calculation = Calculations::getOneCalculation($idCalc);
        $calcReceipts = Calculations::getReceiptsByCalc($idCalc);      
        $calcReceiptsProds = Calculations::getProdsByReceiptsCalcs($idCalc);

        require_once(ROOT . '/views/calculations/newCalculation.php');
        
        return true;
    }  
    
    public static function actionDelCalc($idCalc) {       
      
        $idRequest = Functions::getRecords('query', null, 
                "Select has_request from kt_calcs where id = " . $idCalc . " LIMIT 1");
        
        self::actionDeleteRequest($idRequest[0]['has_request']);
        
        Functions::deleteRecord('kt_calcs', 'id = ' . $idCalc); 
        
        return true;
    }
    
    public static function actionSaveUpdate($idCalc) {
        
        $mas = json_decode($_POST["jsonData"], true);            
        
        Calculations::updateCalculation($idCalc, $mas);         
        
        return true;
        
    }
    
    public static function actionAddRequest($idRequest) {
        
        return Calculations::createRequest($idRequest);
        
    }  
    
    public static function actionShowRequest($idRequest) {
        
        $request = Functions::getRecords('query', null, 
                'SELECT * FROM kt_requests where id = ' . $idRequest);            
        $requestProds = Functions::getRecords('query', null, 
                'SELECT krp.id, krp.id_request, krp.id_prod, round(krp.count, 3) as count, 
                    round(krp.done, 3) as done, kdp.name_prod, kde.short_edizm 
                 FROM kt_requests_prods krp
                 LEFT JOIN kt_dir_prod kdp on kdp.iddir_prod = krp.id_prod
                 LEFT JOIN kt_dir_edizm kde on kde.id_edizm = kdp.id_edizm
                 WHERE krp.id_request = ' . $idRequest);    
        $basics = Functions::getRecords('query', null, 
                'SELECT  ( select count(id_receipt) from kt_calcs_receipts where id_calc = kcr.id_calc and id_basic = kcr.id_basic) as count , kcr.id_basic, kdb.name_base
                 FROM kt_calcs_receipts kcr
                 LEFT JOIN kt_dir_base kdb ON kdb.id_dir_base = kcr.id_basic
                 WHERE kcr.id_calc = ( SELECT id_calc FROM kt_requests
                                       WHERE id =  ' . $idRequest . ' ) 
                 GROUP BY kcr.id_basic
                 ORDER BY kcr.id_basic ASC ' );
        $orgs = Functions::getRecords('query', null, 
                'SELECT  kcr.id_basic, kcr.id_org, kdo.name_org
                 FROM kt_calcs_receipts kcr
                 LEFT JOIN kt_dir_org kdo ON kdo.id_dir_org = kcr.id_org
                 WHERE kcr.id_calc = ( SELECT id_calc FROM kt_requests
                                       WHERE id = ' . $idRequest . ')
                 
                 ORDER BY kcr.id_basic ASC');
        
        $receipts = Functions::getRecords('query', null, 
                'SELECT kcr.id_calc, (select sum(count) from kt_calcs_receipts where id_receipt = kcr.id_receipt and id_basic = kcr.id_basic and id_org = kcr.id_org) as count,  
                    kcr.id_receipt, kdr.name_receipt, kcr.id_basic, kcr.id,
                    round(sum(kcrp.brutto_1), 3) as output_weight
                 FROM kt_calcs_receipts kcr
                 left join kt_calcs_rec_prods kcrp ON kcrp.id_calc_receipt = kcr.id
                 LEFT JOIN kt_dir_receipts kdr ON kdr.id = kcr.id_receipt                 
                 WHERE kcr.id_calc = (SELECT id_calc FROM kt_requests
                                      WHERE id = ' . $idRequest . ' )
                 group by kcr.id_receipt, kcr.id_basic, kcr.id_org
                 ORDER BY kcr.id_basic ASC '); 
        $receiptProds = Functions::getRecords('query', null, 
                'Select kcrp.*, round(sum(kcrp.brutto_1), 3) as summa, round(kcr.count, 3) as count,
                    round((select done from kt_requests_prods where id_prod = kcrp.id_prod and id_request=18), 3) as done
                  from kt_calcs_rec_prods kcrp
                 left join kt_calcs_receipts kcr on kcr.id=kcrp.id_calc_receipt
                 where kcrp.id_calc = (SELECT id_calc FROM kt_requests WHERE id =' . $idRequest . ' )
                 group by kcrp.id_calc_receipt, kcrp.id_prod
                 order by kcrp.id_prod');

        require_once(ROOT . '/views/calculations/request.php');
        
        return true;
        
    } 
    
    public static function actionShowRemRet($id) { 
        
        $typeOper = Functions::getRecords('query', null, 
                'Select id_type_oper from kt_stock_oper where id_stock_oper = ' . $id . ' LIMIT 1');
        
        if ($typeOper[0]['id_type_oper'] == 1) { 
            $header = 'Список накладных на выдачу'; 
            $type = 'Выдача';
        }
        else {
            $header = 'Список накладных на возврат';
            $type = 'Возврат';
        }

        $headRecord = Functions::getRecords('query', null, 
                'Select kso.*, kds.name_stock, kso.id_request, kc.id, 
                    round(sum(ksop.summa), 2) as total_sum, 
                    round(sum(ksop.amount), 2) as total_amount
                 from kt_stock_oper kso 
                 left join kt_stock_oper_pos ksop on ksop.id_so = kso.id_stock_oper
                 left join kt_dir_stocks kds on kds.id_dir_stock = kso.id_stock
                 left join kt_calcs kc on kc.has_request = kso.id_request
                 where kso.id_stock_oper =' . $id);

        $posRecord = Functions::getRecords('query', null, 
                'Select ksop.id_so_pos, ksop.id_so, ksop.id_prod, round((ksop.amount),2) as amount,
                    ksop.price, round((ksop.summa),2) as summa,
                    kdp.name_prod, kde.short_edizm 
                 from kt_stock_oper_pos ksop                      
                 left join kt_dir_prod kdp on kdp.iddir_prod = ksop.id_prod
                 left join kt_dir_edizm kde on kde.id_edizm = kdp.id_edizm
                 where ksop.id_so = ' . $id);

        require_once(ROOT . '/views/calculations/remove.php'); 
        
        return true;
    }
    
    public static function actionDeleteRequest($idRequest) { 
        
        $idCalc = Functions::getRecords('query', null, 
                'SELECT id_calc FROM kt_requests WHERE id = ' . $idRequest);
        
        Functions::deleteRecord('kt_requests', 'id = ' . $idRequest);  
        Functions::deleteRecord('kt_stock_oper', 'id_request = ' . $idRequest);  
        
        Functions::updateRecord('kt_calcs', 'has_request = null', 'id = ' . $idCalc[0]['id_calc']);        
        
        return true;
        
    }
    
    public static function actionListRequests() { 
        
        $listRequests = Functions::getRecords('query', null,
                'Select * from kt_requests order by 1 desc');
        $listStockOper = Functions::getRecords('query', null, 
                'select * from kt_stock_oper where id_type_oper = 1');
        $listCalculations = Functions::getRecords('query', null,
                'Select * from kt_calcs where has_request is null');

        require_once(ROOT . '/views/calculations/listRequests.php');       
        
        return true;
        
    }    
    
    public static function actionListRemoves($idRequest) { 
        $removes = Functions::getRecords('query', null, 
                'Select kso.*, kc.id as id_calc 
                 from kt_stock_oper kso 
                 left join kt_calcs kc on kc.has_request = kso.id_request
                 where kso.id_type_oper = 1 group by kso.id_request order by kso.id_request desc');
        $listRemoves = Functions::getRecords('query', null, 
                'Select kso.id_stock_oper, kso.dt_oper, kso.id_request,kds.name_stock,kc.id as id_calc,
       ksop.id_prod, kdp.name_prod, round((ksop.amount * -1), 3) as amount, kde.short_edizm, ksop.price, round((ksop.summa * -1), 3) as summa
                 from kt_stock_oper kso 
                 left join kt_stock_oper_pos ksop on ksop.id_so = kso.id_stock_oper
                 left join kt_dir_prod kdp on kdp.iddir_prod = ksop.id_prod
                 left join kt_dir_edizm kde on kde.id_edizm = kdp.id_edizm
                 left join kt_dir_type_oper kdto on kdto.id_type_oper = kso.id_type_oper
                 left join kt_dir_stocks kds on kds.id_dir_stock = kso.id_stock
                 left join kt_calcs kc on kc.has_request = kso.id_request
                 where kso.id_type_oper = 1');            

        require_once(ROOT . '/views/calculations/listRemoves.php');       
        
        return true;
        
    }   
    
    public static function actionListReturns($idRequest) {
        
        $returns = Functions::getRecords('query', null, 
                'Select kso.*, kc.id as id_calc 
                 from kt_stock_oper kso 
                 left join kt_calcs kc on kc.has_request = kso.id_request
                 where kso.id_type_oper = 3 group by kso.id_request order by kso.id_request desc');        
        
        $listReturns = Functions::getRecords('query', null, 
                'Select kso.id_stock_oper, kso.dt_oper, kso.id_request,kds.name_stock,kc.id as id_calc,
       ksop.id_prod, kdp.name_prod, round((ksop.amount), 3) as amount, kde.short_edizm, ksop.price, round((ksop.summa), 3) as summa
                 from kt_stock_oper kso 
                 left join kt_stock_oper_pos ksop on ksop.id_so = kso.id_stock_oper
                 left join kt_dir_prod kdp on kdp.iddir_prod = ksop.id_prod
                 left join kt_dir_edizm kde on kde.id_edizm = kdp.id_edizm
                 left join kt_dir_type_oper kdto on kdto.id_type_oper = kso.id_type_oper
                 left join kt_dir_stocks kds on kds.id_dir_stock = kso.id_stock
                 left join kt_calcs kc on kc.has_request = kso.id_request
                 where kso.id_type_oper = 3');

        require_once(ROOT . '/views/calculations/listReturns.php');      
        
        return true;
        
    }      

    public static function actionShowHistory($idCalc) {
        
        $history = Functions::getRecords('query', null, 
                "Select kso.id_stock_oper, kso.dt_oper, kso.id_type_oper, kso.id_request, 
                       kdto.name_type_oper, ksop.id_prod, kdp.name_prod, ksop.amount, 
                       ksop.price, ksop.summa, kds.name_stock, kde.short_edizm, 
                       krp.count, krp.done
                from kt_stock_oper kso
                left join kt_stock_oper_pos ksop on ksop.id_so = kso.id_stock_oper
                left join kt_dir_prod kdp on kdp.iddir_prod = ksop.id_prod
                left join kt_dir_type_oper kdto on kdto.id_type_oper = kso.id_type_oper
                left join kt_dir_stocks kds on kds.id_dir_stock = kso.id_stock
                left join kt_dir_edizm kde on kde.id_edizm = kdp.id_edizm
                left join kt_requests_prods krp on krp.id_prod = ksop.id_prod and kso.id_type_oper = 1 and krp.id_request = kso.id_request
                where kso.id_request = (Select has_request from kt_calcs where id = $idCalc) order by ksop.id_prod asc");
                
        require_once(ROOT . '/views/calculations/calcHistory.php');       
        
        return true;
    } 


//    public static function actionCalcOper($typeOper, $parameter = null) {
//        //Просмотр списка калькуляций
//        if ($typeOper == 'show') {    
//            
//            $listCalculations = Functions::getRecords('query', null, 
//                    'Select kc.*,(select confirm from kt_requests where id=kc.has_request) as confirm
//                     from kt_calcs kc order by kc.id desc');            
//            
//            require_once(ROOT . '/views/calculations/listCalculations.php'); 
//            
//        //Выбираем нужную информацию при добавлении новой, просмотре и редактировании существующей калькуляции    
//        } else if ($typeOper == 'add' || $typeOper == 'showcalc' || $typeOper == 'updcalc') {           
//            if ($typeOper != 'showcalc') {
//                $organizations = Functions::getRecords('listRecords', 'kt_dir_org', null);
//                $stocks = Functions::getRecords('listRecords', 'kt_dir_stocks', NULL);
//                $base = Functions::getRecords('query', NULL, 'Select * from kt_dir_base');                        
//                $score = Functions::getRecords('listRecords','kt_dir_score',  NULL);  
//
//                //Список категорий продуктов
//                $listProdCateg = Functions::getRecords('query', null, 
//                        'Select * from kt_dir_cat_prod order by name_category asc');
//
//                //Все записи из справочника продуктов
//                $prods = Functions::getRecords('query', null, 'SELECT * FROM kt_dir_prod t '
//                        . 'LEFT JOIN kt_dir_edizm kde ON kde.id_edizm=t.id_edizm');
//
//                //Список всех категорий рецептов
//                $allCatReceipts = Functions::getRecords('query', null, 
//                        'Select * from kt_dir_cat_receipt order by 1 asc');
//
//                //Список технологический карт в данной категории технологических карт
//                $allReceipts = Functions::getRecords('listRecords', 'kt_dir_receipts', null);
//                
//                //Список всех меню
//                $allMenus = Functions::getRecords('listRecords', 'kt_menus',  null);
//                
//                //Рецепты по меню
//                $allMenusReceipts = Functions::getRecords('query', null, 
//                        'Select kmr.*, kdr.name_receipt, kdr.output_weight_1, kdr.output_weight_2 
//                         from kt_menus_receipts kmr 
//                         left join kt_dir_receipts kdr on kdr.id = kmr.id_receipt');
//            } 
//            if ($typeOper != 'add') {
//                $calculation = Functions::getRecords('query', null, 
//                        'Select * from kt_calcs where id = ' . $parameter);
//                $calcOrgs = Functions::getRecords('query' , null, 
//                        'SELECT DISTINCT kco.id_calc, kco.id_org, kco.id_calc_rec, kdo.name_org from kt_calcs_orgs kco 
//                        LEFT JOIN kt_dir_org kdo on kdo.id_dir_org = kco.id_org 
//                        where kco.id_calc = ' . $parameter);
//                $calcReceipts = Functions::getRecords('query', null, 
//                        'SELECT kcr . * , kdr.name_receipt, kdr.output_weight_1, kdr.output_weight_2, 
//                            kdb.name_base
//                         FROM kt_calcs_receipts kcr
//                         LEFT JOIN kt_dir_receipts kdr ON kdr.id = kcr.id_receipt
//                         LEFT JOIN kt_dir_base kdb on kdb.id_dir_base = kcr.id_basic
//                         WHERE kcr.id_calc = ' . $parameter);
//                $calcReceiptsProds = Functions::getRecords('query', null, 
//                        'SELECT kcrp.id, kcrp.id_calc, kcrp.id_calc_receipt, kcrp.id_prod,
//                            round(kcrp.brutto_1 * 1000) as brutto_1, 
//                            round(kcrp.netto_1 * 1000) as netto_1,
//                            round(kcrp.brutto_2 * 1000) as brutto_2,
//                            round(kcrp.netto_2 * 1000) as netto_2, kdp.name_prod, kdr.name_receipt
//                         FROM kt_calcs_receipts kcr
//                         LEFT JOIN kt_calcs_rec_prods kcrp ON kcrp.id_calc = kcr.id_calc
//                         AND kcrp.id_calc_receipt = kcr.id
//                         LEFT JOIN kt_dir_receipts kdr ON kdr.id = kcr.id_receipt
//                         LEFT JOIN kt_dir_prod kdp ON kdp.iddir_prod = kcrp.id_prod
//                         WHERE kcrp.id_calc = ' . $parameter);                
//            }
//            
//            require_once(ROOT . '/views/calculations/newCalculation.php');
//            
//        //Сохраняем калькуляцию    
//        }  else if ($typeOper == 'save') {            
//            //Получаем данные из массива POST, потому что отправляли из скрипта 
//            //js при помощи POST запроса 
//            $mas = json_decode($_POST["jsonData"], true);
//            //print_r($_POST);
//            Calculations::saveCalculation($mas);    
//            
//        //Удаление калькуляции    
//        } else if ($typeOper == 'del') {   
//            
//            Functions::deleteRecord('kt_calcs', 'id = ' . $parameter);        
//            
//        //Редактирование калькуляции   
//        } else if ($typeOper == 'update') {            
//            $mas = json_decode($_POST["jsonData"], true);            
//            Calculations::updateCalculation($parameter, $mas);            
//            
//        //Показать список требований на продукты    
//        } else if ($typeOper == 'listrequests') {  
//            
//            $listRequests = Functions::getRecords('query', null,
//                    'Select * from kt_requests order by 1 desc');
//            //Список списаний по требованию
//            $listStockOper = Functions::getRecords('query', null, 
//                    'select * from kt_stock_oper where id_type_oper = 1');
//            $listCalculations = Functions::getRecords('query', null,
//                    'Select * from kt_calcs where has_request is null');
//            
//            require_once(ROOT . '/views/calculations/listRequests.php'); 
//            
//        //Добавление требования на пролукты    
//        } else if ($typeOper == 'addrequest') {            
//            
//            return Calculations::createRequest($parameter);   
//            
//        //Удаление требования на продукты
//        } else if ($typeOper == 'delreq') { 
//            $idCalc = Functions::getRecords('query', null, 
//                    'SELECT id_calc FROM kt_requests WHERE id = ' . $parameter);
//            Functions::deleteRecord('kt_requests', 'id = ' . $parameter);  
//            Functions::updateRecord('kt_calcs', 'has_request = 0', 'id = ' . $idCalc[0]['id_calc']);
//            
//        //Просмотр требования на продукты    
//        } else if ($typeOper == 'showrequest') {            
//            $request = Functions::getRecords('query', null, 
//                    'SELECT * FROM kt_requests where id = ' . $parameter);            
//            $requestProds = Functions::getRecords('query', null, 
//                    'SELECT krp.*, kdp.name_prod, kde.short_edizm 
//                     FROM kt_requests_prods krp
//                     LEFT JOIN kt_dir_prod kdp on kdp.iddir_prod = krp.id_prod
//                     LEFT JOIN kt_dir_edizm kde on kde.id_edizm = kdp.id_edizm
//                     WHERE krp.id_request = ' . $parameter);    
//            $basics = Functions::getRecords('query', null, 
//                    'SELECT  ( select count(id_receipt) from kt_calcs_receipts where id_calc = kcr.id_calc and id_basic = kcr.id_basic) as count , kcr.id_basic, kdb.name_base
//                     FROM kt_calcs_receipts kcr
//                     LEFT JOIN kt_dir_base kdb ON kdb.id_dir_base = kcr.id_basic
//                     WHERE kcr.id_calc = ( SELECT id_calc FROM kt_requests
//                                           WHERE id =  ' . $parameter . ' ) 
//                     GROUP BY kcr.id_basic
//                     ORDER BY kcr.id_basic ASC ' );
//            $orgs = Functions::getRecords('query', null, 
//                    'SELECT distinct kco.id_org, kdo.name_org, kcr.id_basic
//                     FROM kt_calcs_orgs kco
//                     LEFT JOIN kt_dir_org kdo ON kdo.id_dir_org = kco.id_org
//                     LEFT JOIN kt_calcs_receipts kcr ON kcr.id = kco.id_calc_rec
//                     WHERE kco.id_calc = (SELECT id_calc FROM kt_requests 
//                                          WHERE id = ' . $parameter . ' ) order by kcr.id_basic'); 
//            $receipts = Functions::getRecords('query', null, 
//                    'SELECT kcr.id_calc, kcr.count,  
//                        kcr.id_receipt, kdr.name_receipt, kcr.id_basic, kcr.id,
//                        round(kcrp.brutto_1, 3) as output_weight
//                     FROM kt_calcs_receipts kcr
//                     LEFT JOIN kt_dir_receipts kdr ON kdr.id = kcr.id_receipt
//                     left join kt_calcs_rec_prods kcrp ON kcrp.id_calc_receipt = kcr.id
//                     WHERE kcr.id_calc = (SELECT id_calc FROM kt_requests
//                                          WHERE id = ' . $parameter . ' )
//                     
//                     ORDER BY kcr.id_basic ASC '); 
//            $receiptProds = Functions::getRecords('query', null, 
//                    'Select kcrp.*, round(sum(kcrp.brutto_1), 3) as summa, kcr.count,
//                        round((select done from kt_requests_prods where id_prod = kcrp.id_prod and id_request=18), 3) as done
//                      from kt_calcs_rec_prods kcrp
//                     left join kt_calcs_receipts kcr on kcr.id=kcrp.id_calc_receipt
//                     where kcrp.id_calc = (SELECT id_calc FROM kt_requests WHERE id =' . $parameter . ' )
//                     group by kcrp.id_calc_receipt, kcrp.id_prod
//                     order by kcrp.id_prod');
//            
//            require_once(ROOT . '/views/calculations/request.php');             
//            
//        }  else if ($typeOper == 'listremoves') {  
//            
//            $listRemoves = Functions::getRecords('query', null, 
//                    'Select kso.id_stock_oper, kso.dt_oper, kso.id_request,kds.name_stock,
//                        (select id_stock_oper 
//                        from kt_stock_oper 
//                        where id_request = kso.id_request and id_type_oper = 3) as isremove  
//                     from kt_stock_oper kso 
//                     left join kt_dir_type_oper kdto on kdto.id_type_oper = kso.id_type_oper
//                     left join kt_dir_stocks kds on kds.id_dir_stock = kso.id_stock
//                     where kso.id_type_oper = 1 
//                     order by kso.dt_oper desc');            
//            
//            require_once(ROOT . '/views/calculations/listRemoves.php');             
//        
//        }  else if ($typeOper == 'listreturns') {  
//            
//            $listReturns = Functions::getRecords('query', null, 
//                    'Select kso.id_stock_oper, kso.dt_oper, kso.id_request 
//                     from kt_stock_oper kso 
//                     left join kt_dir_type_oper kdto on kdto.id_type_oper = kso.id_type_oper
//                     where kso.id_type_oper = 3 
//                     order by kso.dt_oper desc');            
//            
//            require_once(ROOT . '/views/calculations/listReturns.php');             
//        
//        } else if ($typeOper == 'showremove' || $typeOper == 'showreturn') {
//            
//            if ($typeOper == 'showremove') { 
//                $header = 'Список накладных на выдачу'; 
//                $type = 'Выдача';
//            }
//            else {
//                $header = 'Список накладных на возврат';
//                $type = 'Возврат';
//            }
//            
//            $headRecord = Functions::getRecords('query', null, 
//                    'Select kso.*, kds.name_stock, kso.id_request, kc.id, 
//                        round(sum(ksop.summa), 2) as total_sum, 
//                        round(sum(ksop.amount), 2) as total_amount
//                     from kt_stock_oper kso 
//                     left join kt_stock_oper_pos ksop on ksop.id_so = kso.id_stock_oper
//                     left join kt_dir_stocks kds on kds.id_dir_stock = kso.id_stock
//                     left join kt_calcs kc on kc.has_request = kso.id_request
//                     where kso.id_stock_oper =' . $parameter);
//            
//            $posRecord = Functions::getRecords('query', null, 
//                    'Select ksop.id_so_pos, ksop.id_so, ksop.id_prod, round((ksop.amount),2) as amount,
//                        ksop.price, round((ksop.summa),2) as summa,
//                        kdp.name_prod, kde.short_edizm 
//                     from kt_stock_oper_pos ksop                      
//                     left join kt_dir_prod kdp on kdp.iddir_prod = ksop.id_prod
//                     left join kt_dir_edizm kde on kde.id_edizm = kdp.id_edizm
//                     where ksop.id_so = ' . $parameter);
//                    
//            require_once(ROOT . '/views/calculations/remove.php');             
//            
//        }
//        
//        return true;
//    }

}
