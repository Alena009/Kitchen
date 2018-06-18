<?php

/*
 * Контроллер склада
 */

class StockController {
    
    public static function actionIndex() {          

        require_once(ROOT . '/views/stock/index.php');

        return true;
    }
    
    //Переход на форму для добавления записей в склад
    public static function actionAdd() {
        
        $numNakl = Stock::getNextOperId();
        $listProdCateg = Functions::getRecords('query', null, 'Select * from kt_dir_cat_prod order by name_category asc');   
        $prods = Stock::getDirProds();
        $score = Functions::getRecords('listRecords', 'kt_dir_score', null);
        $countProdCateg = count($listProdCateg);
        $countProds = count($prods);                
        $stocks = Functions::getRecords('query', null, 'Select * from kt_dir_stocks order by 1 asc');        
        
        require_once(ROOT . '/views/stock/add_prods.php');  
        
        return true;
        
    }
    
    //Переход на форму для выдачи продуктов со склада
    public static function actionRem($id) {
        
        $organizations = Functions::getRecords('listRecords', 'kt_dir_org', null);
        $requests = Functions::getRecords('listRecords', 'kt_requests', null);            
        $base = Functions::getRecords('listRecords', 'kt_dir_base', null);                                    
        $listRequests = Stock::getListRequests();
        $prodsByRequests = Stock::getListProdsByRequests(); 
        $prodsByPartsRequests = Stock::getListProdsByPartsRequests();            
        $prods = Stock::getProdsOnStocks();  
        $score = Functions::getRecords('listRecords', 'kt_dir_score', null);
        $stocks = Functions::getRecords('query', null, 
                'Select * from kt_dir_stocks order by 1 asc');  
        $listProdCateg = Functions::getRecords('query', null, 
                'Select * from kt_dir_cat_prod order by name_category asc');   
        
        require_once(ROOT . '/views/stock/remove_prods.php');   
        
        return true;
    }
    
    //Переход на форму для возврата продуктов на склад
    public static function actionRet($id) {
        $numNakl = Stock::getNextOperId();
        
        $requests = Functions::getRecords('query', null, 
                'Select kr.* from kt_requests kr where kr.confirm <> 0 order by id desc');
        
        $prods = Functions::getRecords('query', null, 
                'select kdp.name_prod, round((sum(ksop.amount) * -1), 2) as amount, 
                    ksop.price, kde.short_edizm, ksop.num_part,ksop.id_so_rel_pos,
                    kdp.*, kso.id_stock as id_dir_stock, kso.id_request as id_request
                 from kt_stock_oper kso
                 left join kt_stock_oper_pos ksop on ksop.id_so = kso.id_stock_oper
                 inner join kt_requests kr on kr.id = kso.id_request
                 LEFT JOIN kt_dir_prod kdp ON kdp.iddir_prod = ksop.id_prod
                 LEFT JOIN kt_dir_edizm kde on kde.id_edizm = kdp.id_edizm                     
                 group by ksop.id_prod, kso.id_request
                 order by kdp.name_prod asc');    
        
        $score = Functions::getRecords('listRecords', 'kt_dir_score', null);
        
        $listProdCateg = Functions::getRecords('query', null, 
                'Select * from kt_dir_cat_prod order by name_category asc');
        
        require_once(ROOT . '/views/stock/return_prods.php');   
        
        return true;
    }
    
    //Переход на форму списания 
    public static function actionOut() {
        
        $score = Functions::getRecords('listRecords', 'kt_dir_score', null);   
        $stocks = Functions::getRecords('query', null, 'Select * from kt_dir_stocks order by 1 asc');        
        $listProdCateg = Functions::getRecords('query', null, 'Select * from kt_dir_cat_prod order by name_category asc');   
        $prods = Stock::getProdsOnStocks();                        
        
        require_once(ROOT . '/views/stock/out_prods.php');  
        
        return true;
        
    }
    
    //Список инвентаризаций 
    public static function actionInvList() {
        
        $invs = Functions::getRecords('listRecords', 'kt_inv', null);
        
        $invsPos = Functions::getRecords('listRecords', 'kt_inv_pos', null);           
        
        require_once(ROOT . '/views/stock/inventarization.php'); 
        
        return true;
        
    }
    
    //Просмотр одной инвентаризации
    public static function actionShowInv($id) {
        
        $inv = Functions::getRecords('query', null, 'Select * from kt_inv where id = ' . $id);
        
        $prods = Functions::getRecords('query', null, 
                'Select kip.id, kdp.name_prod, kip.amount, kde.short_edizm, 
                        kip.price, kip.summa, kds.name_stock, kip.prim
                 from kt_inv_pos kip 
                 left join kt_dir_prod kdp on kdp.iddir_prod = kip.id_prod
                 left join kt_dir_edizm kde on kde.id_edizm = kdp.id_edizm
                 left join kt_dir_stocks kds on kds.id_dir_stock = kip.id_stock
                 where kip.id_inv = ' . $id . ' order by kdp.name_prod asc');            
        
        $total = Functions::getRecords('query', null, 
                'Select round(sum(kip.amount), 2) as total_amount, 
                    round(sum(kip.summa), 2) as total_summa 
                 from kt_inv_pos kip where kip.id_inv = ' . $id);  
        
        require_once(ROOT . '/views/stock/showInv.php'); 
        
        return true;
    }
    
    //Провести инвентаризацию
    public static function actionInv() {
        
        Stock::inventarization();            
        
        $invs = Functions::getRecords('listRecords', 'kt_inv', null);
        
        $invsPos = Functions::getRecords('listRecords', 'kt_inv_pos', null);                       
        
        require_once(ROOT . '/views/layouts/invlist.php');      
        
        return true;
        
    }    
    
    //Сохранение прихода и выдачи со склада
    public static function actionSaveAddRemOut() {
        
        $mas = json_decode($_POST["jsonData"], true);   

        Stock::saveStockOper($mas);            

        require_once(ROOT . '/views/layouts/afterProdSave.php');  
        
        return true;
        
    }       
    
    //Сохранение возврата на склад
    public static function actionSaveReturn() {
        
        $mas = json_decode($_POST["jsonData"], true);  
        
        Stock::saveReturn($mas);
          
        require_once(ROOT . '/views/layouts/afterProdSave.php');    
        
        return true;
        
    }  
    
    //Сохраняем часть выдачи продуктов
    public static function actionSavePartRem() {
        
        $mas = json_decode($_POST["jsonData"], true);               
        
        Stock::savePartRemove($mas);             
        
        return true;
    }
    
    //Просмотр содержимого склада
    public static function actionShowStockInner() {
        
        $listProdCateg = Functions::getRecords('query', null, 'Select * from kt_dir_cat_prod order by name_category asc');   
        
        $prods = Functions::getRecords('query', null, 
                'Select ksop.id_prod, kdp.name_prod, round(sum(ksop.amount),2) as amount, 
                    kde.short_edizm, kdp.id_category_prod, kds.name_stock 
                    from kt_stock_oper_pos ksop
                    left join kt_stock_oper kso on kso.id_stock_oper=ksop.id_so
                    left join kt_dir_type_oper kdto on kdto.id_type_oper=kso.id_type_oper
                    left join kt_dir_prod kdp on kdp.iddir_prod=ksop.id_prod
                    left join kt_dir_edizm kde on kde.id_edizm=kdp.id_edizm
                    left join kt_dir_stocks kds on kds.id_dir_stock = kso.id_stock
                    group by ksop.id_prod
                    order by kdp.name_prod asc');    
        
        require_once(ROOT . '/views/stock/stockInner.php'); 
        
        return true;
        
    }
    
    //Просмотр списка всех операций
    public static function actionShowListOper($typeOper) {
        
        $usl = ($typeOper)? ' where kso.id_type_oper = ' . $typeOper : '';
        
        switch ($typeOper) {
                case 2: 
                    $typeOper = 'add';
                    break;
                case 1: 
                    $typeOper = 'rem';
                    break;  
                case 3:                    
                    $typeOper = 'ret';
                    break;    
                case 4: 
                    $typeOper = 'out';
                    break;  
        }        
        
        $listNakl = Functions::getRecords('query', null, 
                'SELECT kso.*, kdto.name_type_oper, kds.name_stock, kdto.type_oper, 
                    (select group_concat(kdp.name_prod) from kt_stock_oper_pos ksop
                    inner join kt_dir_prod kdp on kdp.iddir_prod = ksop.id_prod 
                    where id_so = kso.id_stock_oper and id_so_pos in (select id_so_rel_pos from kt_stock_oper_pos)) as blocked
                 FROM kt_stock_oper kso
                 left join kt_dir_stocks kds on kds.id_dir_stock = kso.id_stock
                 LEFT JOIN kt_dir_type_oper kdto on kdto.id_type_oper = kso.id_type_oper 
                 ' . $usl . '
                 order by kso.id_stock_oper desc');
        
        $listNaklPos = Functions::getRecords('query', null, 
                'SELECT ksop.*, kdp.name_prod, kde.short_edizm
                 FROM kt_stock_oper_pos ksop                    
                 LEFT JOIN kt_dir_prod kdp on kdp.iddir_prod = ksop.id_prod 
                 LEFT JOIN kt_dir_edizm kde on kde.id_edizm = kdp.id_edizm'); 
        
        $listRelPosIds = Functions::getRecords('query', null, 'Select id_so_rel_pos from kt_stock_oper_pos');
        
        require_once(ROOT . '/views/stock/listNakl.php'); 
        
        return true;
                    
    }
    
    //Просмот операции
    public static function actionShowOper($id) {
        
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
        
        switch ($headRecord[0]['id_type_oper']) {
            case 2:                 
                $type = 'Приход на склад';
                break;
            case 1:                 
                $type = 'Выдача со склада';
                break;  
            case 3:                 
                $type = 'Возврат на склад';
                break;    
            case 4:                 
                $type = 'Списание со склада';
                break;                
        }     
        
        require_once(ROOT . '/views/stock/oper.php');          
        
        return true;
        
    }
    
    //Редактирование записи
    public static function actionUpdateOper($id) {
        
        $stocks = Functions::getRecords('query', null, 'Select * from kt_dir_stocks order by 1 asc');        
        $score = Functions::getRecords('listRecords', 'kt_dir_score', null);   
        $listProdCateg = Functions::getRecords('query', null, 'Select * from kt_dir_cat_prod order by name_category asc');      
        
        $headRecord = Functions::getRecords('query', null, 
                'Select kso.*, kds.name_stock, kso.id_request, kc.id, 
                    round(abs(sum(ksop.summa)), 2) as total_sum, 
                    round(abs(sum(ksop.amount)), 2) as total_amount
                 from kt_stock_oper kso 
                 left join kt_stock_oper_pos ksop on ksop.id_so = kso.id_stock_oper
                 left join kt_dir_stocks kds on kds.id_dir_stock = kso.id_stock
                 left join kt_calcs kc on kc.has_request = kso.id_request
                 where kso.id_stock_oper =' . $id);            
        $posRecord = Functions::getRecords('query', null, 
                'Select ksop.id_so_pos, ksop.id_so, ksop.id_prod, round(abs(ksop.amount),2) as amount,
                    ksop.price, round(abs(ksop.summa),2) as summa,
                    kdp.name_prod, kde.short_edizm, ksop.num_part,
                    (select id_so_rel_pos from kt_stock_oper_pos 
                    where id_so_rel_pos = ksop.id_so_pos and id_prod = ksop.id_prod limit 1) as blocked
                 from kt_stock_oper_pos ksop                      
                 left join kt_dir_prod kdp on kdp.iddir_prod = ksop.id_prod
                 left join kt_dir_edizm kde on kde.id_edizm = kdp.id_edizm
                 where ksop.id_so = ' . $id);          
        
        switch ($headRecord[0]['id_type_oper']) {
            case 2:     
                $prods = Stock::getDirProds();
                $type = 'add';
                break;
            case 1:                 
                $prods = Stock::getDirProds();
                $type = 'rem';
                break;  
            case 3:                 
                $prods = Stock::getDirProds();
                $type = 'ret';
                break;    
            case 4:                 
                $prods = Stock::getProdsOnStocks();                        
                $type = 'out';
                break;                
        }     
        
        require_once(ROOT . '/views/stock/update_oper.php');          
        
        return true;
        
    } 
    
    //Сохраняем результат редактирования операции
    public static function actionSaveUpd() {
        
        $mas = json_decode($_POST["jsonData"], true);   
        
        Stock::saveUpdateOper($mas);
        
        return true;
        
    }
    
    //Удаление операции
    public static function actionDeleteOper($id) {             
        
        $oper = Functions::getRecords('query', null, 
                'Select id_type_oper, id_request from kt_stock_oper where id_stock_oper = ' . $id);
        
        if ($oper[0]['id_type_oper'] == 3) {
            
            $operProds = Functions::getRecords('query', null, 
                    'Select * from kt_stock_oper_pos where id_so = ' . $id);
            $requestProds = Functions::getRecords('query', null, 
                    'Select * from kt_requests_prods where id_request = ' . $oper[0]['id_request']);

            for ($i = 0; $i < count($operProds); $i++) {
                for ($j = 0; $j < count($requestProds); $j++) {
                    if ($operProds[$i]['id_prod'] == $requestProds[$j]['id_prod']) {
                        Functions::updateRecord('kt_requests_prods', 'done = done + ' . $operProds[$i]['amount'], 
                                'id_prod = ' . $operProds[$i]['id_prod'] . ' and id_request = ' . $requestProds[$j]['id_request']);
                    }
                } 
            }    
        }
        
        Functions::deleteRecord('kt_stock_oper', 'id_stock_oper = ' . $id);            
        
        return true;        
        
    }
    
    public static function actionDeleteInv($idRecord) {
        
        return Functions::deleteRecord('kt_inv', 'id = ' . $idRecord);        
        
    }





















    /*
    public static function actionStockOper($motion, $typeOper, $idRecord) {
        
        if ($typeOper == 'delete') {
            
            $request = Functions::getRecords('query', null, 
                    'Select id_request from kt_stock_oper where id_stock_oper = ' . $idRecord);  
            $requestProds = Functions::getRecords('query', null, 
                    'Select * from kt_requests_prods where id_request = ' . $request[0]['id_request']);
            Functions::updateRecord('kt_requests', 'confirm = 0', 'id = ' . $request[0]['id_request']);
            for ($i = 0; $i < count($requestProds); $i++) {
                Functions::updateRecord('kt_requests_prods', 'done = 0', 'id = ' . $requestProds[$i]['id']);                
            }            
            Functions::deleteRecord('kt_stock_oper', 'id_stock_oper = ' . $idRecord);            
            return true;
            
        } elseif ($typeOper == 'showadd' || $typeOper == 'showrem' || 
                $typeOper == 'showreturn' || $typeOper == 'showout') {            
            
           
            require_once(ROOT . '/views/stock/oper.php');  
            
        } elseif ($typeOper == 'showinv') {
            
            $inv = Functions::getRecords('query', null, 'Select * from kt_inv where id = ' . $idRecord);
            $prods = Functions::getRecords('query', null, 
                    'Select kip.id, kdp.name_prod, kip.amount, kde.short_edizm, 
                            kip.price, kip.summa, kds.name_stock, kip.prim
                     from kt_inv_pos kip 
                     left join kt_dir_prod kdp on kdp.iddir_prod = kip.id_prod
                     left join kt_dir_edizm kde on kde.id_edizm = kdp.id_edizm
                     left join kt_dir_stocks kds on kds.id_dir_stock = kip.id_stock
                     where kip.id_inv = ' . $idRecord . ' order by kdp.name_prod asc');            
            $total = Functions::getRecords('query', null, 
                    'Select round(sum(kip.amount), 2) as total_amount, 
                        round(sum(kip.summa), 2) as total_summa 
                     from kt_inv_pos kip where kip.id_inv = ' . $idRecord);            
            require_once(ROOT . '/views/stock/showInv.php');  
            
        } elseif ($typeOper == 'removeinv') {
            
            Functions::deleteRecord('kt_inv', 'id = ' . $idRecord);
                      
        } elseif ($typeOper == 'updinvpos') {
            
            $mas = json_decode($_POST["jsonData"], true); 
            
            Functions::updateRecord('kt_inv_pos', 'prim = "' . $mas['value'] . '"','id = ' . $idRecord);
                      
        } elseif ($typeOper == 'showlist') {
            
            $listNakl = Functions::getRecords('query', null, 
                    'SELECT kso.*, kdto.name_type_oper, kds.name_stock, 
                        if (kdto.id_type_oper = 2, "add", 
                        if (kdto.id_type_oper = 1, "rem", 
                        if(kdto.id_type_oper = 3, "return", 
                        if(kdto.id_type_oper = 4, "out", 0)))) as type_oper 
                     FROM kt_stock_oper kso
                     left join kt_dir_stocks kds on kds.id_dir_stock = kso.id_stock
                     LEFT JOIN kt_dir_type_oper kdto on kdto.id_type_oper = kso.id_type_oper 
                     where kso.id_type_oper = ' . $idRecord . ' order by 1 desc ');
            $listNaklPos = Functions::getRecords('query', null, 
                    'SELECT ksop.*, kdp.name_prod, kde.short_edizm
                     FROM kt_stock_oper_pos ksop                    
                     LEFT JOIN kt_dir_prod kdp on kdp.iddir_prod = ksop.id_prod 
                     LEFT JOIN kt_dir_edizm kde on kde.id_edizm = kdp.id_edizm'); 
            
            switch ($idRecord) {
                case 2: 
                    $type = 'add';
                    break;
                case 1: 
                    $type = 'rem';
                    break;  
                case 3:                    
                    $type = 'return';
                    break;    
                case 4: 
                    $type = 'out';
                    break;  
            }
            
            require_once(ROOT . '/views/stock/listNakl.php');  
            
        }          
    }
*/
}
