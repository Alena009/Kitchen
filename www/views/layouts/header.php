<!DOCTYPE html>
<html ng-app>
    <head>
        <title>Кухня</title>

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

        <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <link href="/templates/css/print.css" rel="stylesheet" type="text/css" media="print" />
        <link href="/templates/css/hint.css" rel="stylesheet">         
<!--        <link href="/templates/css/font-awesome.min.css" rel="stylesheet">         -->
        <link href="/templates/css/style.css?<?php echo time(); ?>" rel="stylesheet">   
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body> 
        <div id="containerdiv" style="display: none;"></div>
        <?php if (User::isGuest()): ?>  
            <div class="container" id="header"> 
                <form action="/user/login/" method="post">
                    <input type="text" id="user-name" name="name" placeholder="Имя пользователя">
                    <input type="text" id="user-password" name="password" placeholder="Пароль">
                    <input type="submit" class="btn btn-success" value="Вход">
                </form> 
            </div>
            <div class="container">
                <img id="mainLogo" src="images/kitchen.jpg">
                <div style="height: 40px;"></div>                
            </div>
        <?php die; ?>
        <?php else: ?>
            <div class="container" id="header"> 
                <div>
                    <input type="button" class="btn btn-primary" 
                           onclick="showHideHelpBlock($(this).closest('div').nextAll('div.help'))" value="Помощь">
                </div>            
                <form action="/user/logout/" method="post">
                    <input type="submit" class="btn btn-success" value="Выход">
                </form>
                <div class="help">
                    <i>Общий порядок движения информации</i>
                    <p>Начало работы - приход продукии на склад. Каждую поставку продукции 
                        необходимо принять на склад в разделе "Склад". На каждую поставку будет оформлена накладная. 
                        Список всех накладных можно увидеть в разделе "Склад" - "Список операций по складу".
                        Одинаковые продукты с разными ценами будут разделены по разным партиям автоматически. 
                        Например, если пришел на склад картофель по 5 грн за кг и по 8 грн за кг, то такой 
                        картофель будет считаться в разных партиях, для обеспечения правильного учета продуктов с разной стоимостью.
                        Продукты с одинаковым наименованием и ценой будут формироваться в одну партию.
                    </p>
                    <p>После того как продукция принята на склад, она может быть выдана для использования в производстве.
                        Из склада на производство продукты выдаются по требованию на продукты, 
                        которое оформляется на основании меню-калькуляции. Для оформления меню-калькуляции, необходимо
                        в пункте "Калькуляции и требования" выбрать пункт "Заполнить меню калькуляццию".
                        Далее, для заполненной калькуляции необходимо сформировать требование (по клику на кнопку).
                    </p>       
                    <p>На основании оформленного требования в разделе "Склад" - "Выдача со склада" можно 
                        оформить выдачу продуктов со склада в производство.
                    </p>    
                    <p>Если в процессе производства некоторые продукты не были использованы, то их можно вернуть на склад
                        в разделе "Склад" - "Возврат неиспользованной продукции".
                    </p>   
                    <p>Если со склада необходимо списать испортившуюся продукцию, 
                        то это можно сделать в разделе "Склад" - "Списание испорченной продукции". 
                    </p>                 
                </div>                
            </div>                
        <?php endif; ?>          
