<?php require_once ROOT . '/views/layouts/header.php'; ?>

<div class="container">
    <div class="row">
        <ul class="breadcrumb">
            <li><a href="/">На главную</a> <span class="divider">/</span></li>
            <li><a href="/sklad/">Операции по складу</a> <span class="divider">/</span></li>
            <li class="active">Инвентаризация</li>
        </ul>        
    </div> 
    
    <div class="row">
        <div class="col-lg-12">
            <input type="button" class="btn btn-primary" value="Провести инвентаризацию"
                   onclick="inventarization()">
            <hr>
            <div id="invtable">
                <?php require_once(ROOT . '/views/layouts/invlist.php'); ?>
            </div>
        </div>
    </div>
</div>

<?php require_once ROOT . '/views/layouts/footer.php'; ?> 
