<?php
/*
 * Главный вид раздела "Склад"
 */
require_once ROOT . '/views/layouts/header.php';
?>

<div class="container sklad" id="sklad">
    <div>
        <ul class="breadcrumb">
            <li><a href="/">На главную</a> <span class="divider">/</span></li>
            <li class="active">Операции по складу <span class="divider">/</span></li>
            <li><a href="#" onclick="showHideHelpBlock($(this).closest('ul').next())" 
                   class="glyphicon glyphicon-question-sign" title="Помощь по данному разделу"></a></li>             
        </ul>  
        <div class="help" style="background: white;">
            <i>Приход продукции на склад</i>
            <p>В данном разделе оформляются приходные накладные на продукты, которые прибывают на склад.
                В списке складов, необходимо выбрать склад, на который приходят продукты,
                а в списке продуктов (список формируется на основании справочника продуктов (справочники - продукты)) - 
                выбрать продукты, которые приходят на склад. Продукты в списке разбиты по категориям 
                и отображаются в алфавитном порядке. Для добавления продукта, 
                необходимо кликнуть по нему два раза мышкой или перетянуть на таблицу "Список продуктов".
                По окончанию заполнения списка продуктов, необходимо нажать кнопку "Сохранить".
            </p>     
            <i>Выдача со склада</i>
            <p>В данном разделе оформляется выдача продуктов со склада на основании требований на продукты.
                Можно оформить выдачу как и целиком на конкретное требование, так и частично по требованию.
            </p>
            <i>Возврат неиспользованной продукции</i>
            <p>В данном разделе оформляется возврат неиспользованной в процессе продукции на склад.
                Возврат осуществляется на основании требования на продукты, по которому была выдача продуктов. 
                Для оформления возврата, необходимо выбрать нужное требование и заполнить список продуктов на возврат.
            </p>
            <i>Списание испорченной продукции</i>
            <p>В данном разделе оформляется списание продукции, которая испортилась. 
                Списание происходит автоматически с того склада, на который продукци приходила.
                Для оформления списания, необходимо выбрать склад, с которого списывается продукция, 
                выбрать счет для списания, указать причину списания и продукты, которые списываем.
            </p>    
            <i>Склад</i>
            <p>В данном разделе можно увидеть актуальное количество продукции на складах.
            </p>  
        </div> 
    </div>
    
    <div class="row">
        <div class="col-lg-10">
            <div class="row">
                <div class="col-lg-6 col-md-6 mini default">
                    <label>Приход продукции на склад</label>
                    <a href="/sklad/showlist/2">
                        <img src="../images/basket2.png" class="miniatures" alt="logo">
                    </a>
                </div>
<!--                <div class="col-lg-4 col-md-6 mini">
                    <label>Выдача со склада</label>
                    <a href="/sklad/showlist/1">
                        <img src="../images/basket1.png" class="miniatures" alt="logo">
                    </a>
                </div>-->
<!--                <div class="col-lg-4 col-md-6 mini">
                    <label>Возврат неиспользованной продукции</label>
                    <a href="/sklad/showlist/3">
                        <img src="../images/basket.png" class="miniatures" alt="logo">                    
                    </a>
                </div>-->
                <div class="col-lg-6 col-md-6 mini default">
                    <label>Списание испорченной продукции</label>
                    <a href="/sklad/showlist/4">
                        <img src="../images/basket1.png" class="miniatures" alt="logo">                    
                    </a>
                </div>   
            </div>
            <div class="row">     
                <div class="col-lg-6 col-md-6 mini default">
                    <label>Содержимое складов</label>
                    <a href="/sklad/inner">
                        <img src="../images/stock.png" class="miniatures" alt="logo">                    
                    </a>
                </div>        
                <div class="col-lg-6 col-md-6 mini default">
                    <label>Список всех операций по складу</label>
                    <a href="/sklad/showlist/0">
                        <img src="../images/list.png" class="miniatures" alt="logo">                    
                    </a>
                </div>        
            </div>             
        </div>
        <div class="col-lg-2">
            <div class="row">
                <div class="col-lg-12 mini default" style="height: 400px;">
                    <label>Инвентаризация</label>
                    <a href="/sklad/invlist">
                        <img src="../images/list.png" class="miniatures" alt="logo">                    
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<?php require_once ROOT . '/views/layouts/footer.php'; ?>

