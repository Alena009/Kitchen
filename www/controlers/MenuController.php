<?php

/**
 * Description of MenuController
 *
 * @author Alena
 */
class MenuController {
    
    public static function actionIndex() {
        
        $menus = Functions::getRecords('listRecords', 'kt_menus', null);
        $menusReceipts = Functions::getRecords('query', null, 
                'SELECT kmr.*, kdr.name_receipt, kdr.output_weight_1, kdr.output_weight_2 
                 FROM kt_menus_receipts kmr 
                 LEFT JOIN kt_dir_receipts kdr ON kdr.id = kmr.id_receipt');
        
        //Список всех категорий рецептов
        $allCatReceipts = Functions::getRecords('listRecords', 'kt_dir_cat_receipt', null);
        
        //Список технологический карт в данной категории технологических карт
        $allReceipts = Functions::getRecords('listRecords', 'kt_dir_receipts', null);        
        
        require_once(ROOT . '/views/menus/index.php');

        return true;
    }
    
    public static function actionMenuOper($nameOperation, $idRecord) {
        //Сохраняем новое меню
        if ($nameOperation == 'addmenu') {
            
            $mas = json_decode($_POST["jsonData"], true);
           
            Menu::saveMenu($mas);
            
        } elseif ($nameOperation == 'delete') {
            
            Functions::deleteRecord('kt_menus', 'id = ' . $idRecord);
            
        } elseif ($nameOperation == 'updmenu') {
            
            $mas = json_decode($_POST["jsonData"], true);
            print_r($mas);
            
            Menu::updateMenu($mas, $idRecord);
            
        } elseif ($nameOperation == 'deleterec') {
            
            Functions::deleteRecord('kt_menus_receipts', 'id = ' . $idRecord);
            
        }
        
        return true;
    }
}
