<?php

/**
 * Description of Report
 *
 * @author Alena
 */
class Report {
    
    public static function getData($mas, $typeReport) {
        /*Поискать функцию для массива в строку*/
        $fields = $mas['fields'];
        $conditions = $mas['conditions'];

        $strFields = implode("," ,$fields);

        for ($i = 0; $i < count($conditions); $i++) {
            if ($conditions[$i]['typeCondition'] == 'select') {
                $strConditions = $strConditions . ' AND ' . $conditions[$i]['nameCondition'] . ' = ' . 
                                                        $conditions[$i]['valueCondition'];
            } elseif ($conditions[$i]['typeCondition'] == 'multidate') {
                $valueCondition = explode(",", $conditions[$i]['valueCondition']);
                $valueCondition = '"' . $valueCondition[0] . '" AND "' . $valueCondition[1] . '"';
                
                $strConditions = $strConditions . ' AND date(' . $conditions[$i]['nameCondition'] . ') BETWEEN ' . $valueCondition;                
            }
        }        
        
        if ($typeReport == 'stock') {
            $sql = 'Select ' . $strFields . 
                   ' from kt_stock_oper kso
                     left join kt_stock_oper_pos ksop on ksop.id_so = kso.id_stock_oper
                     left join kt_dir_prod kdp on kdp.iddir_prod = ksop.id_prod
                     left join kt_dir_edizm kde on kde.id_edizm = kdp.id_edizm
                     left join kt_dir_type_oper kdto on kdto.id_type_oper = kso.id_type_oper
                     left join kt_dir_stocks kds on kds.id_dir_stock = kso.id_stock
                     left join kt_dir_cat_prod kdcp on kdcp.id = kdp.id_category_prod 
                     left join kt_reasons ktres on ktres.id_so = kso.id_stock_oper  
                     where kso.id_stock_oper is not null ' . $strConditions . ' 
                     group by ' . $strFields;
        } else if ($typeReport == 'kitchen') {
            $sql = 'Select ' . $strFields . 
                   ' from kt_calcs kc 
                     LEFT JOIN kt_calcs_receipts kcr on kcr.id_calc = kc.id
                     left join kt_calcs_rec_prods kcrp on kcrp.id_calc = kc.id                     
                     left join kt_dir_prod kdp on kdp.iddir_prod = kcrp.id_prod
                     left join kt_dir_org kdo on kdo.id_dir_org = kcr.id_org
                     left join kt_dir_base kdb on kdb.id_dir_base = kcr.id_basic
                     left join kt_dir_receipts kdr on kdr.id = kcr.id_receipt
                     where kc.id is not null ' . $strConditions . ' 
                     group by ' . $strFields ;            
        } else if ($typeReport = 'options') {
            $sql = 'Select ' . $strFields . 
                   ' from kt_stock_oper kso
                    left join kt_stock_oper_pos ksop on ksop.id_so = kso.id_stock_oper
                    left join kt_dir_type_oper kdto on kdto.id_type_oper = kso.id_type_oper
                    left join kt_dir_prod kdp on kdp.iddir_prod = ksop.id_prod
                    left join kt_dir_cat_prod kdcp on kdcp.id = kdp.id_category_prod
                    left join kt_dir_org kdo on kdo.id_dir_org = kso.id_org
                    left join kt_dir_base kdb on kdb.id_dir_base = kso.id_base
                    left join kt_dir_score kds on kds.id_dir_score = kso.id_score
                    left join kt_dir_stocks kdst on kdst.id_dir_stock = kso.id_stock
                    left join kt_requests kr on kr.id = kso.id_request and kso.id_type_oper = 1
                    left join kt_calcs kc on kc.id = kr.id_calc
                    left join kt_calcs_receipts kcr on kcr.id_calc = kc.id
                    left join kt_dir_receipts kdr on kdr.id = kcr.id_receipt
                    left join kt_dir_edizm kde on kde.id_edizm = kdp.id_edizm
                    where kso.id_stock_oper is not null ' . $strConditions;               
        }
        //echo $sql;
        
        return Functions::getRecordsNum('query', null, $sql);
    }
}
