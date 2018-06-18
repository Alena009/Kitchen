<?php
/*
 * Главный вид раздела "Склад"
 */
require_once ROOT . '/views/layouts/header.php';
?>

<div class="container calculation" id="calculation">
    <div>
        <ul class="breadcrumb">
            <li><a href="/">На главную</a> <span class="divider">/</span></li>
            <li class="active">Меню-калькуляции <span class="divider">/</span></li>
            <li><a href="#" onclick="showHideHelpBlock($(this).closest('ul').next())" 
                   class="glyphicon glyphicon-question-sign" title="Помощь по данному разделу"></a></li>                        
        </ul> 
        <div class="help" style="background: white;">
            <i>Заполнить меню-калькуляцию</i>
            <p>В данном разделе можно заполнить меню-калькуляцию на текущий день. 
               Для оформления необходимо выбрать прием еды и на какие организации он будет расчитан.
               Если организации имеют разный рацион, то можно просто переставлять переключатели, выбирая
               приемы еды и блюда для разных организаций.
            </p>
            <i>Список меню-калькуляций</i>
            <p>Оформленные ранее меню-калькуляции можно увидеть в данном разделе. 
                Пока на калькуляцию небыло составлено требование на продукты - ее можно редактировать.
                Требование на продукты создается по щелчку на соответствующую кнопку.                
            </p>   
            <i>Список требований на продукты</i>
            <p>Оформленные ранее требования на продукты по разным калькуляциям можно увидеть в данном пункте.
               Если по требованию были списания со склада, то такое требование удалять и редактировать нельзя,
               сначала нужно оформить возврат продуктов на склад, а потом удалять.
            </p>  
            <i>Выдачи по требованиям</i>
            <p>В данном разделе можно увидеть список накладных на выдачу продуктов по разным требованиям.                
            </p>   
            <i>Возвраты</i>
            <p>В данном разделе можно увидеть список накладных на возврат неиспользованной продукции на склад.                
            </p>             
        </div>
    </div> 
    <div class="row">
        <div class="col-lg-3 mini">
            <label>Меню-калькуляции</label>
            <a href="/calculations/show">
                <img src="../images/list.png" class="miniatures" alt="logo">
            </a>
        </div>        
<!--        <div class="col-lg-3 mini">
            <label>Список требований на продукты</label>
            <a href="/calculations/listrequests">
                <img src="../images/list.png" class="miniatures" alt="logo">
            </a>
        </div>   
        <div class="col-lg-3 mini">
            <label>Выдачи по требованиям</label>
            <a href="/calculations/listremoves/0">
                <img src="../images/list.png" class="miniatures" alt="logo">
            </a>
        </div> 
        <div class="col-lg-3 mini">
            <label>Возвраты</label>
            <a href="/calculations/listreturns/0">
                <img src="../images/list.png" class="miniatures" alt="logo">
            </a>
        </div>           -->
    </div>
</div>

<?php require_once ROOT . '/views/layouts/footer.php'; ?>

