<?php

/**
 * Класс роутер, который выполняет маршрутизацию, 
 * перенаправляя запросы пользователя на конкретные контроллеры
 */
class Router {
    
    private $routes;
    
    public function __construct() 
    {
        $routesPath = ROOT . '/config/routes.php';
        $this->routes = include($routesPath);        
    }
    
    /**
     * Возвращает строку запроса, введенную пользователем
     */
    private function getURI() 
    {
        if (!empty($_SERVER['REQUEST_URI'])) {
            return trim($_SERVER['REQUEST_URI'], '/');
        }  
    }
    
    /**
     * Основная функция роутера, выполняющая маршрутизацию    
     */
    public function run() 
    {
        $uri = $this->getURI();    
        
        foreach ($this->routes as $uriPattern => $path) {
                    
            if (preg_match("~$uriPattern~", $uri)) {
                
                //Получаем внутренний путь
                $internalRoute = preg_replace("~$uriPattern~", $path, $uri);
                
                //При помощи функции explode разбиваем путь на элементы по символу "/"
                $segments = explode('/', $internalRoute);
                
                //Добываем первый елемент массива, получееного в результате работы 
                //предыдущей строки, присоединяем к нему слово Controller и убираем его из массива
                $controllerName = array_shift($segments) . 'Controller';
                
                //Делаем эту запись с большой буквы
                $controllerName = ucfirst($controllerName);
                
                //Добываем следующий элемент из массива, присоединяем к нему слова action и удаляем
                $actionName = 'action' . ucfirst(array_shift($segments));
                
                //оставшиеся элементы массива перекидываем в массив параметров
                $parameters = $segments;
                
                //Ищем контроллер по получившемуся имени        
                $controllerFile = ROOT . '/controlers/' . $controllerName . '.php';
                
                //Если такой класс-контроллер есть, то подключаем его
                if (file_exists($controllerFile)) {
                    include_once($controllerFile);
                }
                
                //Создаем экземпляр класса контроллер
                $controllerObject = new $controllerName;
                
                //Вызываем функцию actionName у объекта $controllerObject, передавая ей параметры $parameters       
                $result = call_user_func_array(array($controllerObject, $actionName), $parameters);
                
                //если результат не пустой, то выходим из выполнения функции       
                if ($result != null) {
                    break;
                }
            }
        }
    }
}
