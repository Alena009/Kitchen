<?php
/*
 * Главный вид
 */
require_once ROOT . '/views/layouts/header.php';
?>

<div class="container" id="report">
    <div>
        <ul class="breadcrumb">
            <li><a href="/">На главную</a> <span class="divider">/</span></li>
            <li class="active">Отчеты</li>
        </ul>        
    </div>    
    
    <div class="row">
        <div class="col-lg-6 mini default">
            <label>Отчеты по складу</label>
            <a href="/report/stock">
                <img src="/images/report-stock.png" class="miniatures">
            </a>
        </div>
        <div class="col-lg-6 mini default">
            <label>Отчеты по кухне</label>
            <a href="/report/kitchen">
                <img src="/images/report-kitchen.png" class="miniatures">
            </a>
        </div>
<!--        <div class="col-lg-4 mini">
            <label>Отчеты по выбранным критериям</label>
            <a href="/report/options">
                <img src="/images/report-criteria.png" class="miniatures">
            </a>
        </div>        -->
    </div>
</div>

<?php require_once ROOT . '/views/layouts/footer.php'; ?>

