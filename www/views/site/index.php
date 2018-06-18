<?php
/*
 * Главный вид
 */
require_once ROOT .  '/views/layouts/header.php';
?>

<div class="container" id="mainContainer">
    <img id="mainLogo" src="images/kitchen.jpg">
    <div style="height: 40px;"></div>
    <div class="row">
        <div class="col-lg-4 col-md-3 mini">
            <label style="font-family: cursive; font-size: 18px;">Калькуляции и требования</label>
            <a href="/calculations/">
                <img src="../images/calc1.png" class="miniatures" alt="logo">
            </a>
        </div>
        <div class="col-lg-4 col-md-3 mini">
            <label style="font-family: cursive; font-size: 18px;">Меню</label>
            <a href="/menus/">
                <img src="../images/menu1.png" class="miniatures" alt="logo">
            </a>
        </div>
        <div class="col-lg-4 col-md-3 mini">
            <label style="font-family: cursive; font-size: 18px;">Технологические карты</label>
            <a href="/tech/">
                <img src="../images/eda1.png" class="miniatures" alt="logo">                    
            </a>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-4 col-md-3 mini">
            <label style="font-family: cursive; font-size: 18px;">Склад</label>
            <a href="/sklad/">
                <img src="../images/sklad1.png" class="miniatures" alt="logo">
            </a>                             
        </div>
        <div class="col-lg-4 col-md-3 mini">
            <label style="font-family: cursive; font-size: 18px;">Справочники</label>
            <a href="/directory/">
                <img src="../images/book1.png" class="miniatures" alt="logo">                          
            </a>
        </div>
        <div class="col-lg-4 col-md-3 mini">
            <label style="font-family: cursive; font-size: 18px;">Отчеты</label>
            <a href="/report/">
                <img src="../images/report1.png" class="miniatures" alt="logo">                      
            </a>
        </div>
    </div>
</div>

<?php
require_once ROOT .  '/views/layouts/footer.php';
?>

