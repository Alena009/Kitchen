<?php

/*
 * @author ALENA
 */
class Directories {
    
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
        }

        // Используется подготовленный запрос
        $result = $db->prepare($sql);

        // Указываем, что хотим получить данные в виде массива
        $result->setFetchMode(PDO::FETCH_BOTH);

        // Выполняем запрос
        $result->execute();

        // Возвращаем данные
        return $result->fetchAll();        
    } 
    
    public static function saveAnalytic($record, $table) {
        
        $nameAnalytic = $record['nameAnalytic'];
        $posAnalytic = $record['positions'];
        
        $idAnalytic = Functions::insertRecord($table, '"' . $nameAnalytic . '"');
        
        if ($idAnalytic) {
            for ($i = 0; $i < count($posAnalytic); $i++) {
                Functions::insertRecord('kt_dir_analytic_pos', $idAnalytic . ', ' . 
                        $posAnalytic[$i]['debitScore'] . ', ' . 
                        $posAnalytic[$i]['creditScore'] . ', "' . 
                        $posAnalytic[$i]['namePos'] . '", ' . 
                        $posAnalytic[$i]['typeAnalytic']);
            }
        }
        
        return $idAnalytic;
    }
    
    public static function updateAnalytic($record, $table, $id) {
        
        $nameAnalytic = $record['nameAnalytic'];
        $posAnalytic = $record['positions'];
        
        Functions::updateRecord($table, 'name_analytic = "' . $nameAnalytic . '"', "id = $id");
                
        for ($i = 0; $i < count($posAnalytic); $i++) {
            Functions::insertRecord('kt_dir_analytic_pos', $id . ', ' . 
                    $posAnalytic[$i]['debitScore'] . ', ' . 
                    $posAnalytic[$i]['creditScore'] . ', "' . 
                    $posAnalytic[$i]['namePos'] . '", ' . 
                    $posAnalytic[$i]['typeAnalytic']);
        }        
        
        return true;
    }    

    public static function saveOper($record) {
        
        //Формируем строку с данными из заглавной части записи
        $headOper = '0, ' . 
                $record["oper"] . ', ' . 
                $record["organization"] . ', ' . 
                $record["stock"] . ', ' . 
                $record["osnov"] . ', ' . 
                $record["bill"] . ', 0'; 
        
        //Формируем строку с данными из позиционной части записи
        $bodyOper = $record["prods"];
        
        //Сохраняем заглавную часть записи
        $idOper = self::insertRecord('kt_stock_oper', $headOper);  
        
        //Если заглавная часть сохранена успешно, то сохраняем позиционную часть
        if ($idOper <> 0) {
            for ($i = 0; $i < count($bodyOper); $i++) {
                $str = $idOper . ',' . $bodyOper[$i]["id"] . ', ' . 
                        $bodyOper[$i]["amount"] . ', ' . 
                        $bodyOper[$i]["price"] . ', ' . 
                        $bodyOper[$i]["summa"] . ', 0';
                self::insertRecord('kt_stock_oper_pos', $str);
            }
            return $idOper;
        }
        
        return 0;
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
        return 0;         
    }
    
    public static function deleteRecord($table, $idRecord) {
        //Устанавливаем соединение с БД
        $db = DB::getConnection();
             
        // Текст запроса к БД
        $sql = "DELETE FROM $table WHERE id = $idRecord";

        // Получение и возврат результатов. Используется подготовленный запрос
        $result = $db->prepare($sql);

        $result->execute(); 
        
        return $result;                
    }
}
