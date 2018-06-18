<?php

/*
 * @author ALENA
 */
class Stock {   
    
    public static function saveReturn($mas) {
        
        $prods = $mas['prods'];           
        
        for ($i = 0; $i < count($prods); $i++) {                
            $idStockOper = Functions::insertRecord('kt_stock_oper', 
                        '"' . date('Y-m-d H:i:s') . '", 3, 0, ' . $prods[$i]['stock'] . ', 0, 0,' . $mas['request'] . '');
            
            Functions::insertRecord('kt_stock_oper_pos', $idStockOper . ',' . $prods[$i]["id"] . ', ' . 
                    $prods[$i]["amount"] . ', ' . 
                    $prods[$i]["price"] . ', ' . 
                    $prods[$i]["summa"] . ', 0, "' . 
                    $prods[$i]["part"] . '", ' . 
                    $prods[$i]["rel"]);
            Functions::updateRecord('kt_requests_prods', 'done = round(done - ' . $prods[$i]["amount"] . ', 3)', 
                    'id_prod = ' .  $prods[$i]["id"] . ' AND ' . ' id_request = ' . $mas['request']);
        }   
        
        $done = Functions::getRecords('query', null, 
                'Select sum(done) as done  
                 from kt_requests_prods where id_request = ' . $mas['request']);            
        
        if (!$done[0]['done']) {    
            Functions::updateRecord('kt_requests', 'confirm = 0', 'id = ' . $mas['request']);
        } else {
            Functions::updateRecord('kt_requests', 'confirm = 2', 'id = ' . $mas['request']);
        }          
        
    }

    public static function saveStockOper($record) {
        
        //Формируем строку с данными из заглавной части записи
        $headOper = '"' . date('Y-m-d H:i:s') . '", ' . 
                $record["oper"] . ', ' . 
                $record["organization"] . ', ' . 
                $record["stock"] . ', ' . 
                $record["osnov"] . ', ' . 
                $record["bill"] . ', ' . 
                $record["request"];
        
        //Формируем строку с данными из позиционной части записи
        $bodyOper = $record["prods"];
        
        //Сохраняем заглавную часть записи
        $idOper = Functions::insertRecord('kt_stock_oper', $headOper);       
        
        //Если заглавная часть сохранена успешно, то сохраняем позиционную часть
        if ($idOper <> 0) {        
            if (!empty($record["reason"])) {
                Functions::insertRecord('kt_reasons', $idOper . ', "' . $record["reason"] . '"');  
            }              
            for ($i = 0; $i < count($bodyOper); $i++) {
                $str = $idOper . ',' . $bodyOper[$i]["id"] . ', ' . 
                        $bodyOper[$i]["amount"] . ', ' . 
                        $bodyOper[$i]["price"] . ', ' . 
                        $bodyOper[$i]["summa"] . ', 0, "' . 
                        $bodyOper[$i]["part"] . '", ' . 
                        $bodyOper[$i]["rel"];                
                $idPos = Functions::insertRecord('kt_stock_oper_pos', $str);                    
//                if ($record["oper"] == 2) {                    
//                    Functions::insertRecord('kt_moves_prods', 
//                            $bodyOper[$i]["id"] . ', ' . $idPos . ', ' . $idPos . ',' . $bodyOper[$i]["amount"] . ', ' . $bodyOper[$i]["amount"]);                    
//                } else {
//                    $previousAmount = Functions::getRecords('query', null, 
//                            'Select remaining_amount from kt_moves_prods where id_prod_in_system = ' . $bodyOper[$i]["rel"] . ' order by id desc limit 1');
//                    $previousAmount = $previousAmount[0]['remaining_amount'];
//                    $nowAmount = $previousAmount + $bodyOper[$i]["amount"];                        
//                                        
//                    Functions::insertRecord('kt_moves_prods', 
//                            $bodyOper[$i]["id"] . ', ' . $bodyOper[$i]["rel"] . ', ' . $idPos . ', ' . $bodyOper[$i]["amount"] . ', ' . $nowAmount);                    
//                }
            }   
            
            return $idOper;
        }
        
        return 0;
    }
    
    public static function saveUpdateOper($mas) { 
        
        $prods = $mas['prods'];        
        $idsProds = array_column($prods, 'idpos');
        //print_r($idsProds);
        //Вытягиваем позиции операции, которые были ранее
        $oldProds = Functions::getRecords('query', null, 'Select id_so_pos from kt_stock_oper_pos where id_so = ' . $mas['id']);     
        
        //Пробегаемся по старым позициям и если их нет в массиве новых позиций, то удаляем
        for ($i = 0; $i < count($oldProds); $i++) {
            if (array_search($oldProds[$i]['id_so_pos'], $idsProds) === FALSE) {
                Functions::deleteRecord('kt_stock_oper_pos', 'id_so_pos = ' . $oldProds[$i]['id_so_pos']);
            }
        }        
        Functions::updateRecord('kt_stock_oper', 
                'id_type_oper = ' . $mas['oper'] . ', id_org = ' . $mas['organization'] . 
                                                   ', id_stock = ' . $mas['stock'] . 
                                                   ', id_base = ' . $mas['osnov'] . 
                                                   ', id_score = ' . $mas['bill'] . 
                                                   ', id_request = ' . $mas['request'], 
                'id_stock_oper = ' . $mas['id']);        
        for ($i = 0; $i < count($prods); $i++) {
            if ($prods[$i]['idpos']) {
                Functions::updateRecord('kt_stock_oper_pos', 
                        'amount = ' . $prods[$i]['amount'] . ', price = ' . $prods[$i]['price'] . ', summa = ' . $prods[$i]['summa'], 
                        'id_so_pos = ' . $prods[$i]['idpos']);
            } else {
                $idPos = Functions::insertRecord('kt_stock_oper_pos', 
                        $mas['id'] . ', ' . $prods[$i]['id'] . ', ' . 
                        $prods[$i]['amount'] . ', ' . $prods[$i]['price'] . ', ' . 
                        $prods[$i]['summa'] . ', 0, "' . $prods[$i]['part'] . '", ' . $prods[$i]['rel']);                                  
            }            
        } 

        return true;   
        
    }

    public static function savePartRemove($mas) {
        
        //информация из требования на продукты
        $idRequest = $mas['idRequest'];
        $idScore = $mas['idScore'];
        $needingProds = $mas['prods'];
        
        $idsNeedingProds = implode(",", array_column($needingProds, 'id_prod'));

        //получаем все продукты на складе
        $prods = Functions::getRecords('query', null, 
                "select ksop.id_so_pos, ksop.id_prod, kso.id_stock, ksop.num_part, 
                 (select round(sum(amount), 3) from kt_stock_oper_pos where id_so_pos = ksop.id_so_pos or id_so_rel_pos = ksop.id_so_pos) as on_stock, 
                 (select round(sum(count - done),3) from kt_requests_prods where id_prod = ksop.id_prod and id_request = $idRequest) as need, ksop.price, ksop.summa, krp.id_request          
                 from kt_stock_oper_pos ksop 
                 left join kt_stock_oper kso on kso.id_stock_oper = ksop.id_so
                 left join kt_requests_prods krp on krp.id_prod = ksop.id_prod                 
                 where ksop.amount > 0 and ksop.id_prod in ($idsNeedingProds) and krp.id_request = $idRequest                     
                 group by ksop.id_prod, ksop.id_so_pos");
        
        $amount = 0;
        $totalAmount = 0; 
        
        for ($i = 0; $i < count($prods); $i++) {
            if ($prods[$i]['id_prod'] != $prods[$i - 1]['id_prod']) {                                
                if ($prods[$i]['need'] <= $prods[$i]['on_stock']) {
                    $amount = $prods[$i]['need'];
                } else {
                    $amount = $prods[$i]['on_stock'];                     
                }   
                $idOper = Functions::insertRecord('kt_stock_oper', 'null, 1, 0, ' . 
                        $prods[$i]['id_stock'] . ', 0, ' . 
                        $idScore . ', ' . $idRequest); 
                Functions::insertRecord('kt_stock_oper_pos', $idOper . ', ' . 
                        $prods[$i]['id_prod'] . ', ' . 
                        ($amount * -1) . ', ' . 
                        $prods[$i]['price'] . ', ' . 
                        ($amount * -1) * $prods[$i]['price'] . ', 0, "' . 
                        $prods[$i]['num_part'] . '", ' . 
                        $prods[$i]['id_so_pos']);
                Functions::updateRecord('kt_requests_prods', 
                        'done = done + ' . $amount, 
                        'id_prod = ' . $prods[$i]['id_prod'] . ' and id_request = ' . $idRequest);               
            } else {
                if ($amount < $prods[$i]['need']) {                    
                    //$amount = $amount + $prod[$i]['on_stock'];
                    $ostatok = $prods[$i]['need'] - $amount;
                    if ($ostatok <= $prods[$i]['on_stock']) {
                        $amount = $ostatok;
                    } else {
                        $amount = $prods[$i]['on_stock'];
                    }
                    $idOper = Functions::insertRecord('kt_stock_oper', 'null, 1, 0, ' . 
                            $prods[$i]['id_stock'] . ', 0, ' . 
                            $idScore . ', ' . $idRequest); 
                    Functions::insertRecord('kt_stock_oper_pos', $idOper . ', ' . 
                            $prods[$i]['id_prod'] . ', ' . 
                            ($amount * -1). ', ' . 
                            $prods[$i]['price'] . ', ' . 
                            ($amount * -1) * $prods[$i]['price'] . ', 0, "' . 
                            $prods[$i]['num_part'] . '", ' . 
                            $prods[$i]['id_so_pos']);
                    Functions::updateRecord('kt_requests_prods', 
                            'done = done + ' . $amount, 
                            'id_prod = ' . $prods[$i]['id_prod'] . ' and id_request = ' . $idRequest);                   
                } else {
                    continue;
                }
            }           
        }
        
        $amountByRequest = Functions::getRecords('query', null, 
                'select round(sum(count), 3) as count, round(sum(done), 3) as done from kt_requests_prods where id_request = ' . $idRequest);
          
        if ($amountByRequest[0]['done'] < $amountByRequest[0]['count']) {
            Functions::updateRecord('kt_requests', 
                    'confirm = 2', 
                    'id = ' . $idRequest);             
        } else {
            Functions::updateRecord('kt_requests', 
                    'confirm = 1', 
                    'id = ' . $idRequest);            
        }
       
        return true;
        
        
//        $head = Functions::getRecords('query', null, 
//                'SELECT distinct kc.*, kso.id_stock
//                 FROM kt_calcs kc
//                 left join kt_calcs_receipts kcr on kcr.id_calc = kc.id
//                 left join kt_calcs_rec_prods kcrp on kcrp.id_calc_receipt = kcr.id
//                 LEFT JOIN kt_stock_oper_pos ksop on ksop.id_prod = kcrp.id_prod
//                 LEFT JOIN kt_stock_oper kso on kso.id_stock_oper = ksop.id_so
//                 where kc.has_request = ' . $idRequest . ' and kso.id_stock is not null 
//                 order by kc.has_request asc');           
//        
//        $prods = Stock::getRequestHardProds($idRequest);                                               
//        
//        for ($i = 0; $i < count($head); $i++) {
//            
//            $idRemoveOper = Functions::insertRecord('kt_stock_oper', 'null, 1, 0, ' . 
//                    $head[$i]['id_stock'] . ', 0, ' . 
//                    $idScore . ', ' . $idRequest);                
//            
//            $remCount = 0;
//            $total = 0;
//            $idProd = 0;  
//            
//            for ($j = 0; $j < count($prods); $j++) {
//                if ($prods[$j]['id_stock'] == $head[$i]['id_stock']) {
//                    if ($prods[$j]['id_prod'] == $idProd) {
//                        if ($total < $prods[$j]['count']) {
//                            if (($prods[$j]['count'] - $remCount) < $prods[$j]['amount']) {
//                                $remCount = $prods[$j]['count'] - $remCount;                                
//                            } else {
//                                $remCount = $prods[$j]['amount'];
//                            }                            
//                            $total += $remCount;
//                        } else { continue; }
//                    } else {
//                        if ($prods[$j]['count'] <= $prods[$j]['amount']) {
//                            $remCount = $prods[$j]['count'];                                
//                        } else {
//                            $remCount = $prods[$j]['amount'];
//                        }   
//                        $total = $remCount;
//                    }
//                    $idProd = $prods[$j]['id_prod'];                                             
//                } else { continue; }                    
//                Functions::insertRecord('kt_stock_oper_pos', $idRemoveOper . ', ' . 
//                                        $prods[$j]['id_prod'] . ', ' . $remCount * -1 . ', ' . 
//                                        $prods[$j]['price'] . ', ' . 
//                                        $prods[$j]['price'] * $remCount * -1 . ', 0, "' . 
//                                        $prods[$j]['num_part'] . '", 0');
//                Functions::updateRecord('kt_requests_prods', 
//                            ' done = ' . $total, ' id_request = ' . $idRequest . ' AND id_prod = ' . $prods[$j]['id_prod']);                    
//            }                
//            Stock::recalcRequest($idRequest);
//        } 
//
//        return true;        
        
    }

    public static function getNextOperId() {
        
        $record = Functions::getRecords('query', null, 
                'Select max(id_stock_oper) as maxid from kt_stock_oper');
        
        return $record[0]['maxid'] + 1;
    }
    
    public static function getDirProds() {
        
        return Functions::getRecords('query', null, 
                'SELECT * FROM kt_dir_prod kdp 
                 LEFT JOIN kt_dir_edizm kde ON kde.id_edizm=kdp.id_edizm 
                 left join kt_dir_cat_prod kdcp on kdcp.id = kdp.id_category_prod
                 order by kdp.name_prod asc ');
    }
    
    public static function getListRequests() {
        
        return Functions::getRecords('query', null, 
                    'SELECT DISTINCT kr . *,group_concat(distinct kdb.name_base) as name_base
                     FROM kt_requests kr
                     LEFT JOIN kt_calcs kc ON kc.id = kr.id_calc
                     LEFT JOIN kt_calcs_receipts kcr ON kcr.id_calc = kc.id
                     LEFT JOIN kt_dir_base kdb ON kdb.id_dir_base = kcr.id_basic
                     group by kr.id order by kr.id desc');        
    }
    
    public static function getListProdsByRequests() {
        
        return Functions::getRecords('query', null, 
                    'SELECT krp . id, krp.id_request, krp.id_prod, round(krp.count-krp.done, 3) as count, 
                        krp.done, kdp.name_prod, round(sum(ksop.amount),2) as available, 
                        min(ksop.price) as price, kde.short_edizm, ksop.num_part, kso.id_stock
                     FROM kt_requests_prods krp
                     LEFT JOIN kt_dir_prod kdp ON kdp.iddir_prod = krp.id_prod
                     LEFT JOIN kt_stock_oper_pos ksop on ksop.id_prod = krp.id_prod
                     left join kt_stock_oper kso on kso.id_stock_oper = ksop.id_so
                     LEFT JOIN kt_dir_edizm kde on kde.id_edizm = kdp.id_edizm
                     group by krp.id_prod, krp.id_request');        
    }
    
    public static function getListProdsByPartsRequests() {
        
        return Functions::getRecords('query', null, 
                    'SELECT kc.*, kdb.name_base, kdp.name_prod, sum(kcrp.brutto_1) as count,
                        sum(ksop.amount) as available, ksop.num_part
                     FROM kt_calcs kc
                     left join kt_calcs_receipts kcr on kcr.id_calc = kc.id
                     left join kt_calcs_rec_prods kcrp on kcrp.id_calc_receipt = kcr.id
                     left join kt_dir_prod kdp on kdp.iddir_prod=kcrp.id_prod
                     left join kt_dir_receipts kdr on kdr.id=kcr.id_receipt
                     left join kt_dir_base kdb on kdb.id_dir_base = kcr.id_basic
                     LEFT JOIN kt_stock_oper_pos ksop on ksop.id_prod = kcrp.id_prod
                     where kc.has_request is not null
                     group by kcr.id_basic,kcrp.id_prod, kc.id');        
    }
    
    public static function getProdsOnStocks() {
        
        return Functions::getRecords('query', null, 
                    'select ksop.id_so_pos, ksop.id_so,ksop.id_prod, 
                       round(sum(ksop.amount),2) as amount,
                       ksop.price, round(sum(ksop.summa),2) as summa, 
                       ksop.id_ed_izm, kdp.name_prod, kdp.id_category_prod, 
                       kdp.img_prod, kdp.iddir_prod, kde.short_edizm, kds.id_dir_stock,
                       kds.name_stock, ksop.num_part, if(ksop.id_so_rel_pos = 0, ksop.id_so_pos, ksop.id_so_rel_pos) as fi                      
                       from kt_stock_oper_pos ksop 
                       left join kt_stock_oper kso on kso.id_stock_oper = ksop.id_so
                       left join kt_dir_prod kdp ON kdp.iddir_prod=ksop.id_prod 
                       left join kt_dir_edizm kde ON kde.id_edizm=kdp.id_edizm 
                       left join kt_dir_stocks kds on kds.id_dir_stock = kso.id_stock
                       where ksop.amount <> 0
                       group by fi');        
        
//        return Functions::getRecords('query', null, 
//                    'select ksop.id_so_pos, ksop.id_so,ksop.id_prod, 
//                       round(sum(ksop.amount),2) as amount,
//                       ksop.price, round(sum(ksop.summa),2) as summa, 
//                       ksop.id_ed_izm, kdp.name_prod, kdp.id_category_prod, 
//                       kdp.img_prod, kdp.iddir_prod, kde.short_edizm, kds.id_dir_stock,
//                       kds.name_stock, ksop.num_part
//                       from kt_stock_oper_pos ksop 
//                       left join kt_stock_oper kso on kso.id_stock_oper = ksop.id_so
//                       left join kt_dir_prod kdp ON kdp.iddir_prod=ksop.id_prod 
//                       left join kt_dir_edizm kde ON kde.id_edizm=kdp.id_edizm 
//                       left join kt_dir_stocks kds on kds.id_dir_stock = kso.id_stock
//                       where ksop.amount <> 0
//                       group by ksop.id_so_pos');
    }
    
    public static function getRequestHardProds($idRequest) {
        
        return Functions::getRecords('query', null, 
                'Select krp.*, round(sum(ksop.amount),2) as amount, ksop.price, ksop.num_part, kso.id_stock,
                  round((select sum(amount) from kt_stock_oper_pos where id_prod = krp.id_prod), 2) as available
                 from kt_requests_prods krp
                 left join kt_stock_oper_pos ksop on ksop.id_prod = krp.id_prod
                 left join kt_stock_oper kso on kso.id_stock_oper = ksop.id_so  
                 where krp.id_request = ' . $idRequest . '  and krp.done < krp.count
                 group by ksop.num_part 
                 order by krp.id_prod asc');
    }    
    
    public static function recalcRequest($idRequest) {
        
        $record = Functions::getRecords('query', null, 
                'Select round(sum(count),3) as summa_count, round(sum(done),3) as summa_done 
                 from kt_requests_prods where id_request = ' . $idRequest);
        $totalCount = $record[0]['summa_count'];
        $totalDone = $record[0]['summa_done'];        
        
        if ($totalCount == $totalDone) {
            Functions::updateRecord('kt_requests', 'confirm = 1', 'id = ' . $idRequest);
        } else if ($totalCount > $totalDone) {
            Functions::updateRecord('kt_requests', 'confirm = 2', 'id = ' . $idRequest);
        }
        
        return true;
    }
    
    public static function inventarization() {
        
        $prods = Functions::getRecords('query', null, 
                    'Select ksop.id_prod, kdp.name_prod, round(sum(ksop.amount), 3) as amount, 
                        kde.short_edizm, kdp.id_category_prod, ksop.price, round(sum(ksop.amount) * ksop.price, 3) as summa,
                        kso.id_stock
                        from kt_stock_oper_pos ksop
                        left join kt_stock_oper kso on kso.id_stock_oper=ksop.id_so
                        left join kt_dir_type_oper kdto on kdto.id_type_oper=kso.id_type_oper
                        left join kt_dir_prod kdp on kdp.iddir_prod=ksop.id_prod
                        left join kt_dir_edizm kde on kde.id_edizm=kdp.id_edizm
                        group by ksop.id_prod, ksop.num_part
                        order by kdp.name_prod asc'); 
        
        $idInv = Functions::insertRecord('kt_inv', '"' . date('Y-m-d H:i:s') . '"');
        
        for ($i = 0; $i < count($prods); $i++) {
            $values = $idInv . ',' . 
                    $prods[$i]['id_prod'] . ',' . 
                    $prods[$i]['amount'] . ',' . 
                    $prods[$i]['price'] . ',' . 
                    $prods[$i]['summa'] . ',' . 
                    $prods[$i]['id_stock'] . ',""';
            Functions::insertRecord('kt_inv_pos', $values);
        }       
        
        return true;
    }

}
