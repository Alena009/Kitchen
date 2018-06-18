<?php

class FaqController {

    public static function actionIndex() {
        //Список категорий продуктов
        $listProdCateg = Functions::getRecords('listRecords', 'kt_dir_cat_prod', null);
        //Количество записей в справочнике продуктов
        $countProds = Functions::getRecords('countRecords', 'kt_dir_prod', null);        
        
        $prods = Functions::getRecords('query', null, 'kt_dir_prod');
        
        require_once(ROOT . '/views/faq/index.php');

        return true;
    }

}