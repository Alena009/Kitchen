<?php

/**
 * Description of Menu
 *
 * @author Alena
 */
class Menu {
    
    public static function saveMenu($record) {
        //Устанавливаем соединение с БД
        $db = DB::getConnection();
        
        $nameMenu = $record['name'];
        $receipts = $record['receipts'];
        
        //Сохраняем информацию в главную таблицу
        $newMenuId = Functions::insertRecord('kt_menus', '"' . $nameMenu . '"');
        
        //Сохраняем информацию в дочернюю таблицу
        if ($newMenuId) {
            for ($i = 0; $i < count($receipts); $i++) {
                $newReceiptInMenuId = Functions::insertRecord('kt_menus_receipts', 
                        $newMenuId . ', ' . $receipts[$i]);
                
                if (!$newReceiptInMenuId) {
                    return false;
                } 
            }          
        }
        
        return $newMenuId;
    }
    
    public static function updateMenu($record, $idRecord) {
        //Устанавливаем соединение с БД
        $db = DB::getConnection();
        
        $nameMenu = $record['name'];
        $receipts = $record['receipts'];
        
        //Обновляем информацию в главной таблице
        $updMenu = Functions::updateRecord('kt_menus', 'name_menu = "' . $nameMenu . '"', 'id = ' . $idRecord);
        
        //Обновляем информацию в дочерних таблицах
        if ($updMenu) {
            Functions::deleteRecord('kt_menus_receipts', 'id_menu = ' .$idRecord);

            for ($i = 0; $i < count($receipts); $i++) {
                $updReceiptInMenuId = Functions::insertRecord('kt_menus_receipts', 
                            $idRecord . ', ' . $receipts[$i]);

                if (!$updReceiptInMenuId) {
                    return false;
                } 
            }          
        }
        
        return $updMenu;
    }    
    
}
