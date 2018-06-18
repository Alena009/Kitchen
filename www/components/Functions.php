<?php

class Functions {
    
    public static function getRecords($operation, $table = null, $query = null) {
        
        //Устанавливаем соединение с БД
        $db = DB::getConnection();
        
        if ($operation == "listRecords") {
            // Текст запроса к БД
            $sql = 'SELECT * FROM ' . $table . ' order by 1 desc';
        } else if ($operation == "countRecords") {
            $sql = 'SELECT COUNT(*) AS count FROM ' . $table;
        } else if ($operation == "query") {
            $sql = $query;      
        }
        //echo $sql;
        // Используется подготовленный запрос
        $result = $db->prepare($sql);

        // Указываем, что хотим получить данные в виде массива
        $result->setFetchMode(PDO::FETCH_ASSOC);

        // Выполняем запрос
        $result->execute();   

        // Возвращаем данные
        return $result->fetchAll();        
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
            return true;
        }
        // Иначе возвращаем 0
        return false;         
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
    
    public static function loader($filename) {
        
        if (isset($_POST['my_file_upload'])) {  
            // ВАЖНО! тут должны быть все проверки безопасности передавемых файлов и вывести ошибки если нужно
                       
            $types = array('image/gif', 'image/png', 'image/jpg', 'image/jpeg');          
            
            $uploaddir = '/images/products/';

            // cоздадим папку если её нет
            //if (!is_dir($uploaddir)) mkdir($uploaddir, 0777);

            $files = $_FILES; // полученные файлы
            
            $done_files = array();

            // переместим файлы из временной директории в указанную
            foreach($files as $file){
                    //$filename = $file['name'];
                                    // Проверяем тип файла
                    if (!in_array($file['type'], $types))
                        die ('Запрещённый тип файла');
                    
                    $filename = $filename . '.' . substr($file['type'], 6); 
                    
                    if(move_uploaded_file($file['tmp_name'], $_SERVER['DOCUMENT_ROOT'] . "$uploaddir/$filename")){
                            $done_files[] = realpath("$uploaddir/$filename");
                    }
            }

            $data = $done_files ? array('files' => $done_files ) : array('error' => 'Ошибка загрузки файлов.');

            //die(json_encode($data));
            return $filename;
        }  else {
            return false;
        }
        
        
    }    
    
    public static function loadFile($path, $filename) {
        
        if (!$_FILES["uploadfile"]["error"]) {
            // Загрузка файла и вывод сообщения
            //$_FILES['uploadfile']['name']

            $filename = $filename . '.' . substr($_FILES['uploadfile']['type'], 6); 
                    
            $types = array('image/gif', 'image/png', 'image/jpg', 'image/jpeg');          
            
            //$size = 1024000;
            

            /*
            if ($_FILES['picture']['size'] > $size)
                die('Слишком большой размер файла');
            */
            if (!move_uploaded_file($_FILES['uploadfile']['tmp_name'], $_SERVER['DOCUMENT_ROOT'] . $path . $filename)) {
                echo 'Файл не загружен';
            }
            else{
                return $filename;                
            }            
        }    
        
        return false;
    }
    
    public static function getRecordsNum($operation, $table = null, $query = null) {
        
        //Устанавливаем соединение с БД
        $db = DB::getConnection();
        
        if ($operation == "listRecords") {
            // Текст запроса к БД
            $sql = 'SELECT * FROM ' . $table . ' order by 2 asc';
        } else if ($operation == "query") {
            $sql = $query;      
        }
        
        // Используется подготовленный запрос
        $result = $db->prepare($sql);

        // Указываем, что хотим получить данные в виде массива
        $result->setFetchMode(PDO::FETCH_NUM);

        // Выполняем запрос
        $result->execute();   

        // Возвращаем данные
        return $result->fetchAll();        
    }    
      
    
}
