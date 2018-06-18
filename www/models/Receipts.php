<?php

/*
 * @author ALENA
 */
class Receipts {
    
    public static function getRecords($table, $operation, $where = null) {
        
        //Устанавливаем соединение с БД
        $db = DB::getConnection();
        
        if ($operation == "listRecords" && !$where) {
            // Текст запроса к БД
            $sql = 'SELECT * FROM ' . $table;
        } else if ($operation == "countRecords") {
            $sql = 'SELECT COUNT(*) AS count FROM ' . $table;
        } else if ($operation == "listRecords" && $where) {
            $sql = 'SELECT * FROM ' . $table . ' WHERE ' . $where;
        } else if ($operation == "query") {
            $sql = $where;
        } else if ($operation == "oneRecord") {
            $sql = 'SELECT * FROM ' . $table . ' where ' . $where;
        }

        // Используется подготовленный запрос
        $result = $db->prepare($sql);

        // Указываем, что хотим получить данные в виде массива
        $result->setFetchMode(PDO::FETCH_ASSOC);

        // Выполняем запрос
        $result->execute();

        // Возвращаем данные
        return $result->fetchAll();        
    }   
    
    public static function saveReceipt($record) {
        
        //Формируем строку с данными из заглавной части записи
        $receipt = '"' . 
                $record["name"] . '", "' . 
                $record["tech"] . '", "' . 
                $record["chem"] . '", ' . 
                '"", ' . 
                $record["idcr"] . ', "' .
                $record["outputone"] . '", "' . 
                $record["outputtwo"] . '"'; 
        
        //Формируем строку с данными из позиционной части записи
        $prodsByReceipt = $record["prodsByReceipt"];
        
        //Сохраняем заглавную часть записи
        $idOper = self::insertRecord('kt_dir_receipts', $receipt);  
       
        //Если заглавная часть сохранена успешно, то сохраняем позиционную часть
        if ($idOper <> 0) {
            for ($i = 0; $i < count($prodsByReceipt); $i++) {
                $str = '' . $idOper . ',' . $prodsByReceipt[$i]["id"] . ', ' . 
                        $prodsByReceipt[$i]["amountbrone"] . ', ' . 
                        $prodsByReceipt[$i]["amountnone"] . ', ' . 
                        $prodsByReceipt[$i]["amountbrtwo"] . ', ' .
                        $prodsByReceipt[$i]["amountntwo"];
                self::insertRecord('kt_dir_prod_receipt', $str);
            }
            return $idOper;
        }
        
        return false;
    }
    
    public static function updateReceipt($record) {
        
        //Формируем строку с данными из заглавной части записи
        $receipt = 'name_receipt = "' . $record["name"] . '", '
                . 'tech_prigotov = "' . $record["tech"] . '", '
                . 'chem_sostav = "' . $record["chem"] . '", '
                . 'output_weight_1 = "' . $record["outputone"] . '", '
                . 'output_weight_2 = "' . $record["outputtwo"] . '"';     
        
        //Определяем идентификатор рецепта
        $idReceipt = $record["id"];
        
        //Формируем строку с данными из позиционной части записи
        $prodsByReceipt = $record["prodsByReceipt"];       
        
        self::deleteRecord('kt_dir_prod_receipt', 'id_receipt = ' . $idReceipt);
        
        //Редактируем заглавную часть рецепта
        if (self::updateRecord('kt_dir_receipts', $receipt, 'id = ' . $idReceipt)) {
            for ($i = 0; $i < count($prodsByReceipt); $i++) {
                $str = '' . $idReceipt . ',' . $prodsByReceipt[$i]["idprod"] . ', ' . 
                        $prodsByReceipt[$i]["amountbrone"] . ', ' . 
                        $prodsByReceipt[$i]["amountnone"] . ', ' . 
                        $prodsByReceipt[$i]["amountbrtwo"] . ', ' .
                        $prodsByReceipt[$i]["amountntwo"];
                self::insertRecord('kt_dir_prod_receipt', $str);
            }
        }
        
        return true;
    }
    
    public static function insertRecord($table, $values) {
        
        //Устанавливаем соединение с БД
        $db = DB::getConnection();
             
        // Текст запроса к БД
        $sql = 'INSERT INTO ' . $table . ' VALUES (0, ' . $values . ')';
        //echo $sql;
        // Получение и возврат результатов. Используется подготовленный запрос
        $result = $db->prepare($sql);

        if ($result->execute()) {
            // Если запрос выполенен успешно, возвращаем id добавленной записи
            return $db->lastInsertId();
        }
        // Иначе возвращаем 0
        return false;         
    }   
    
    public static function updateRecord($table, $values, $id) {
        
        //Устанавливаем соединение с БД
        $db = DB::getConnection();
             
        // Текст запроса к БД
        $sql = 'UPDATE ' . $table . ' SET ' . $values . ' WHERE ' . $id;
        //echo $sql;
        // Получение и возврат результатов. Используется подготовленный запрос
        $result = $db->prepare($sql);

        if ($result->execute()) {
            // Если запрос выполенен успешно
            return 1;
        }
        // Иначе возвращаем 0
        return 0;         
    }     
    
    public static function deleteRecord($table, $idRecord) {
        //Устанавливаем соединение с БД
        $db = DB::getConnection();
             
        // Текст запроса к БД
        $sql = "DELETE FROM $table WHERE $idRecord";

        // Получение и возврат результатов. Используется подготовленный запрос
        $result = $db->prepare($sql);

        $result->execute(); 
        
        return $result;                
    }
}
