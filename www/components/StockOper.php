<?php

/**
 * Description of StockOper
 *
 * @author ALENA
 */
class StockOper {
    
    public $listProdCateg;
    public $score;
    public $prods;
    public $countProdCateg;
    public $countProds;
    public $numNakl;
    public $stocks;

    public function __construct()
    {
        $this->numNakl = Stock::getNextOperId();
        $this->listProdCateg = Functions::getRecords('query', null, 'Select * from kt_dir_cat_prod order by name_category asc');   
        $this->prods = Stock::getDirProds();
        $this->score = Functions::getRecords('listRecords', 'kt_dir_score', null);
        $this->countProdCateg = count($listProdCateg);
        $this->countProds = count($prods);                
        $this->stocks = Functions::getRecords('query', null, 'Select * from kt_dir_stocks order by 1 asc');        
    }
    
    public function __destruct()
    {
        --self::$userCount;
    }    
}
