<?php
/*
 * Главный вид раздела "Технологические карты"
 */
require_once ROOT . '/views/layouts/header.php';
?>

<div class="container receipts">
    <div>
        <ul class="breadcrumb">
            <li><a href="/">На главную</a> <span class="divider">/</span></li>
            <li><a href="/tech">Технологические карты</a> <span class="divider">/</span></li>
            <li class="active"><?php echo $categoryReceipts[0]['name_categ_receipt']; ?></li>
        </ul>        
    </div> 
    <div class="row" id="list-receipts">
        <?php include ROOT . '/views/receipts/receipts.php'; ?>                
    </div>	
</div>

<?php require_once ROOT . '/views/layouts/footer.php'; ?>

