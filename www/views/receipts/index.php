<?php
/*
 * Главный вид раздела "Технологические карты"
 */
require_once ROOT . '/views/layouts/header.php';
?>

<div class="container receipts" id="receipts">
    <div>
        <ul class="breadcrumb">
            <li><a href="/">На главную</a> <span class="divider">/</span></li>
            <li class="active">Технологические карты <span class="divider">/</span></li>
            <li><a href="#" onclick="showHideHelpBlock($(this).closest('ul').next())" 
                   class="glyphicon glyphicon-question-sign" title="Помощь по данному разделу"></a></li> 
        </ul>    
        <div class="help" style="background: white;">
            <i>Технологические карты</i>
            <p>В данном разделе оформляются технологические карты на блюда. 
                Технологические карты распределены по категориям блюд.
                Для добавления новой карты, необходимо зайти в соответствующую 
                категорию и нажать кнопку "Новая технологическая карта".
                При оформлении карты, пользователю будет предложено выбрать продукты,
                из которых состоит блюдо, а также написать химический состав и технологию приготовления.
            </p>                       
        </div> 
    </div>    

    <div class="row">
        <?php for ($i = 0; $i < count($receiptsCategories); $i++): ?>
        <div class="col-lg-4 col-md-6 mini">
            <label><?php echo $receiptsCategories[$i]['name_categ_receipt']; ?></label>
            <a href="/tech/show/<?php echo $receiptsCategories[$i]['id']; ?>">
                <img src="<?php echo $receiptsCategories[$i]['image_categ_receipt']; ?>" class="miniatures" alt="logo">
            </a>
        </div>
        <?php endfor; ?>
        <div class="col-lg-4 col-md-6 mini">
            <label><?php echo $receiptsCategories[$i]['name_categ_receipt']; ?></label>
            <a href="/tech/showall">
                <img src="../images/book1.png" class="miniatures" alt="logo">
            </a>
        </div>        
    </div>
</div>

<?php require_once ROOT . '/views/layouts/footer.php'; ?>

