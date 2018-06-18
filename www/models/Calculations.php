<?php

class Calculations {
    
    public $listCalculations; 
    public $organizations;
    public $stocks;
    public $base;
    public $score;
    public $listProdCateg;
    public $prods;
    public $allCatReceipts;
    public $allReceipts;
    public $allMenus;
    public $allMenusReceipts;

    public function __construct() {        
        
        $this->organizations = Functions::getRecords('listRecords', 'kt_dir_org', null);
        $this->stocks = Functions::getRecords('listRecords', 'kt_dir_stocks', NULL);
        $this->base = Functions::getRecords('query', NULL, 'Select * from kt_dir_base'); 
        $this->score = Functions::getRecords('listRecords','kt_dir_score',  NULL); 
        $this->listProdCateg = Functions::getRecords('query', null, 
                'Select * from kt_dir_cat_prod order by name_category asc');
        $this->prods = Functions::getRecords('query', null, 'SELECT * FROM kt_dir_prod t '
                . 'LEFT JOIN kt_dir_edizm kde ON kde.id_edizm=t.id_edizm');
        $this->allCatReceipts = Functions::getRecords('query', null, 
                'Select * from kt_dir_cat_receipt order by 1 asc');
        $this->allReceipts = Functions::getRecords('listRecords', 'kt_dir_receipts', null);
        $this->allMenus = Functions::getRecords('listRecords', 'kt_menus',  null);
        $this->allMenusReceipts = Functions::getRecords('query', null, 
                'Select kmr.*, kdr.name_receipt, kdr.output_weight_1, kdr.output_weight_2 
                 from kt_menus_receipts kmr 
                 left join kt_dir_receipts kdr on kdr.id = kmr.id_receipt'); 
        
    }
    
    public static function getOneCalculation($idCalc) {
        
        return Functions::getRecords('query', null, 
                'Select * from kt_calcs where id = ' . $idCalc); 
        
    }
    
    public static function getReceiptsByCalc($idCalc) {
        
        return Functions::getRecords('query', null, 
                'SELECT kcr . * , kdr.name_receipt, kdr.output_weight_1, kdr.output_weight_2, 
                    kdb.name_base, kdo.name_org
                 FROM kt_calcs_receipts kcr
                 LEFT JOIN kt_dir_receipts kdr ON kdr.id = kcr.id_receipt
                 LEFT JOIN kt_dir_base kdb on kdb.id_dir_base = kcr.id_basic
                 LEFT JOIN kt_dir_org kdo on kdo.id_dir_org = kcr.id_org
                 WHERE kcr.id_calc = ' . $idCalc);
        
    }
    
    public static function getProdsByReceiptsCalcs($idCalc) {
        
        return Functions::getRecords('query', null, 
                'SELECT kcrp.id, kcrp.id_calc, kcrp.id_calc_receipt, kcrp.id_prod,
                    round(kcrp.brutto_1 * 1000) as brutto_1, 
                    round(kcrp.netto_1 * 1000) as netto_1,
                    round(kcrp.brutto_2 * 1000) as brutto_2,
                    round(kcrp.netto_2 * 1000) as netto_2, kdp.name_prod, kdr.name_receipt
                 FROM kt_calcs_receipts kcr
                 LEFT JOIN kt_calcs_rec_prods kcrp ON kcrp.id_calc = kcr.id_calc
                 AND kcrp.id_calc_receipt = kcr.id
                 LEFT JOIN kt_dir_receipts kdr ON kdr.id = kcr.id_receipt
                 LEFT JOIN kt_dir_prod kdp ON kdp.iddir_prod = kcrp.id_prod
                 WHERE kcrp.id_calc = ' . $idCalc); 
        
    }

    public static function updateCalculation($idCalc, $calculation) {
        //Устанавливаем соединение с БД
        $db = DB::getConnection();
        
        Functions::deleteRecord('kt_calcs_receipts', 'id_calc = ' . $idCalc);                    
        
        //Получаем массив рецептов из калькуляции
        $receipts = $calculation['receipts'];   
        
        //Если масисвы с блюдами или ингредиентами пустые, 
        //то возможно произошла ошибка, останавливаем выполнение функции
        if (empty($receipts)) {
            die;
        } 

        for ($i = 0; $i < count($receipts); $i++) {
            $str = explode("/", $receipts[$i]['weights']);
            $idRecord = Functions::insertRecord('kt_calcs_receipts', $idCalc . ',' . 
                            $receipts[$i]['idReceipt'] . ',' . 
                            $receipts[$i]['count'] . ',"' . 
                            $receipts[$i]['weights'] . '", ' . 
                            $receipts[$i]['basic'] . ', ' . 
                            $receipts[$i]['org'] . ', ' . 
                            $str[0] . ', ' . 
                            $str[1]);
            if ($idRecord) {
                //Выбираем игредиенты для текущего блюда и сохраняем их
                //Если список ингредиентов был изменен, тогда сохраняем изменения
                if (!empty($receipts[$i]['prods'])) {
                    
                    $prods = $receipts[$i]['prods'];
                    
                    for ($j = 0; $j < count($prods); $j++) {
                        if ($prods[$j]['idReceipt'] == $receipts[$i]['idReceipt']) {
                            Functions::insertRecord('kt_calcs_rec_prods', 
                                                $idCalc . ',' . $idRecord . ',' . 
                                                $prods[$j]['idProd'] . ',' . 
                                                $prods[$j]['brutto_1'] . ',' .
                                                $prods[$j]['netto_1'] . ',' . 
                                                $prods[$j]['brutto_2'] . ',' .
                                                $prods[$j]['netto_2']);
                        }
                    } 
                } else {
                    //Если ингредиенты не менялись, 
                    //то можно их "подхватить" из справочника блюд
                    $prodsByDir = Functions::getRecords('query', null, 
                                        'SELECT * from kt_dir_prod_receipt where id_receipt = ' . $receipts[$i]['idReceipt']);
                    for ($j = 0; $j < count($prodsByDir); $j++) {
                        Functions::insertRecord('kt_calcs_rec_prods', 
                                            $idCalc . ',' . $idRecord . ',' . 
                                            $prodsByDir[$j]['id_prod'] . ',' . 
                                            $prodsByDir[$j]['brutto_1'] . ',' .
                                            $prodsByDir[$j]['netto_1'] . ',' . 
                                            $prodsByDir[$j]['brutto_2'] . ',' .
                                            $prodsByDir[$j]['netto_2']);                                    
                    }                                          
                }                                                 
            }                    
        }
        
        $idRequest = Functions::getRecords('query', null, 
                'Select id from kt_requests where id_calc = ' . $idCalc . ' LIMIT 1');
        
        self::updateRequest($idRequest[0]['id']);
        
        return true;
    }  

    public static function saveCalculation($calculation) {
        //Устанавливаем соединение с БД
        $db = DB::getConnection();
        
        //Достаем из массива рецепты
        $receipts = $calculation['receipts'];      
        
        if (empty($receipts)) {
            die;
        }
        
        //Сохраняем информацию в главную таблицу калькуляций
        $newCalcId = Functions::insertRecord('kt_calcs', '"' . $calculation['dateCalc'] . '", null');
        
        //Если сохранилось удачно выполняем сохранение в подчиненные таблицы
        if ($newCalcId) {
            for ($i = 0; $i < count($receipts); $i++) {
                $str = explode("/", $receipts[$i]['weights']);
                $idRecord = Functions::insertRecord('kt_calcs_receipts', $newCalcId . ',' . 
                                $receipts[$i]['idReceipt'] . ',' . 
                                $receipts[$i]['count'] . ',"' . 
                                $receipts[$i]['weights'] . '", ' . 
                                $receipts[$i]['basic'] . ', ' . 
                                $receipts[$i]['org'] . ', ' . 
                                $str[0] . ', ' . 
                                $str[1]);
                if ($idRecord) {
                    //Выбираем игредиенты для текущего блюда и сохраняем их
                    //Если список ингредиентов был изменен, тогда сохраняем изменения
                    if (!empty($receipts[$i]['prods'])) {

                        $prods = $receipts[$i]['prods'];

                        for ($j = 0; $j < count($prods); $j++) {
                            Functions::insertRecord('kt_calcs_rec_prods', 
                                                $newCalcId . ',' . $idRecord . ',' . 
                                                $prods[$j]['idProd'] . ',' . 
                                                $prods[$j]['brutto_1'] . ',' .
                                                $prods[$j]['netto_1'] . ',' . 
                                                $prods[$j]['brutto_2'] . ',' .
                                                $prods[$j]['netto_2']); 
                        } 
                    } else {
                        //Если ингредиенты не менялись, 
                        //то можно их "подхватить" из справочника блюд
                        $prodsByDir = Functions::getRecords('query', null, 
                                            'SELECT * from kt_dir_prod_receipt where id_receipt = ' . $receipts[$i]['idReceipt']);
                        for ($j = 0; $j < count($prodsByDir); $j++) {
                            Functions::insertRecord('kt_calcs_rec_prods', 
                                                $newCalcId . ',' . $idRecord . ',' . 
                                                $prodsByDir[$j]['id_prod'] . ',' . 
                                                $prodsByDir[$j]['brutto_1'] . ',' .
                                                $prodsByDir[$j]['netto_1'] . ',' . 
                                                $prodsByDir[$j]['brutto_2'] . ',' .
                                                $prodsByDir[$j]['netto_2']);                                    
                        }                                          
                    }                                                 
                }                    
            } 
            
            return $newCalcId;
            
        }
            
        return false;            
        
    }
    
    public static function createRequest($parameter) {
        $idRequest = Functions::insertRecord('kt_requests', $parameter . ', null, null');
        
        $prods = Functions::getRecords('query', null, 
                "SELECT kcrp.id_prod, SUM( kcrp.brutto_1 * kcr.count ) AS count
                 FROM kt_calcs_rec_prods kcrp
                 left join kt_calcs_receipts kcr on kcr.id = kcrp.id_calc_receipt
                 WHERE kcrp.id_calc = $parameter
                 GROUP BY kcrp.id_prod");
        for ($i = 0; $i < count($prods); $i++) {
            Functions::insertRecord('kt_requests_prods', $idRequest . ', ' . 
                    $prods[$i]['id_prod'] . ', ' . $prods[$i]['count'] . ', ""');
        }
        
        Functions::updateRecord('kt_calcs', 'has_request = ' . $idRequest, 'id = ' . $parameter);
        
        return $idRequest;
    }
    
    public static function updateRequest($idRequest) {      
        //Получаем данные требования
        $request = Functions::getRecords('query', null, 
                'Select * from kt_requests where id = ' . $idRequest . ' LIMIT 1');
        //продукты по требованию
        $requestProds = Functions::getRecords('query', null, 
                'Select * from kt_requests_prods where id_request = ' . $idRequest);                
        //продукты по обновленной калькуляции
        $updCalcProds = Functions::getRecords('query', null, 
                'Select kcrp.id_prod, round(sum(kcrp.brutto_1 * kcr.count), 3) as count   
                from kt_calcs_rec_prods kcrp 
                left join kt_calcs_receipts kcr on kcr.id = kcrp.id_calc_receipt
                where kcr.id_calc = ' . $request[0]['id_calc'] . ' group by kcrp.id_prod ');
        //идентификаторы продуктов в обоих массивах
        $idsRequestProds = array_column($requestProds, 'id_prod');
        $idsUpdCalcProds = array_column($updCalcProds, 'id_prod');
        //узнаем идентификаторы продуктов, которых нет в обновленной калькуляции, но остались в требовании
        $idsDeletingProds = array_diff($idsRequestProds, $idsUpdCalcProds);
        //узнаем идентификаторы продуктов, которые есть в обновленной калькуляции, но нет в требовании
        $idsInsertingProds = array_diff($idsUpdCalcProds, $idsRequestProds);
        //Удаляем продукты из требования, которых нет в обновленной калькуляции
        if (count($idsDeletingProds)) {
            Functions::deleteRecord('kt_requests_prods', 'id_prod in (' . implode(",", $idsDeletingProds) . ') AND id_request = ' . $idRequest);   
        }
        //Определяем массив продуктов, которые будут добавляться в требоание после редактирования калькуляции
        $insertingProds = Functions::getRecords('query', null, 
        'Select kcrp.id_prod, round((kcrp.brutto_1 * kcr.count), 3) as count  
        from kt_calcs_rec_prods kcrp left join kt_calcs_receipts kcr on kcr.id = kcrp.id_calc_receipt
        where kcrp.id_calc = ' . $request[0]['id_calc'] . ' and kcrp.id_prod in (' . implode(",", $idsInsertingProds) . ')');
        print_r($idsDeletingProds );
        print_r($idsInsertingProds);
        print_r($insertingProds);
        print_r($updCalcProds);
        if (count($insertingProds)) {
            for ($i = 0; $i < count($insertingProds); $i++) {        
                Functions::insertRecord('kt_requests_prods', 
                        $idRequest . ', ' . $insertingProds[$i]['id_prod'] . ', ' . $insertingProds[$i]['count'] . ', 0');
            }
        }
        
        for ($i = 0; $i < count($updCalcProds); $i++) {        
            Functions::updateRecord('kt_requests_prods', 'count = ' . $updCalcProds[$i]['count'], 
                    'id_request = ' . $idRequest . ' and id_prod = ' . $updCalcProds[$i]['id_prod']);
        }
        
        Functions::updateRecord('kt_requests', 'confirm = 2', 'id = ' . $idRequest);
        
        return true;        
    }
    
}