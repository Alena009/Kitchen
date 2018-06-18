<?php

/**
 * FRONT CONTROLLER
 * Главный контроллер сайта
 */

//Общие настройки
ini_set('display_errors', 1);
error_reporting(E_ALL & ~E_NOTICE);

//Запуск сессии
session_start();

//Подключение файлов системы, инициализация константы ROOT, 
//которая будет содержать адрес директории сайта и подключение файла Autoload
define('ROOT', __DIR__);
require_once (ROOT . '/components/Autoload.php');

//Вызов Router
$router = new Router();
$router->run();



