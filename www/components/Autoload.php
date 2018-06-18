<?php

/**
 * Функция автозагрузки, которая подгружает файлы при вызове класса
 * @param type $className
 */

function __autoload($className)
{
    $arrayPaths = array(
        '/models/',
        '/components/'
    );
    
    foreach($arrayPaths as $path){
        $path = ROOT . $path.$className. '.php';
        if(is_file($path)){
            include_once $path;
        }
    }
    
}
