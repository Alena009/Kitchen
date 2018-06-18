<?php
/*
 * Главный вид
 */
require_once ROOT . '/views/layouts/header.php';
?>
<ul>
    <?php for ($i = 0; $i < count($listProdCateg); $i++): ?>
        <li><?php echo $listProdCateg[$i]['name_category']; ?>
            <ul>
                <?php for ($j = 0; $j < count($prods); $j++): ?>
                    <?php if ($prods[$j]['id_category_prod'] == $listProdCateg[$i]['id']): ?>
                        <li><?php echo $prods[$j]['name_prod']; ?></li>
                    <?php endif; ?>
                <?php endfor; ?>
            </ul>
        </li>
    <?php endfor; ?>
</ul>


<div class="tabbable"> <!-- Only required for left/right tabs -->
    <ul class="nav nav-tabs">
        <?php for ($k = 0; $k < count($listProdCateg); $k++): ?>
            <li <?php if ($k == 0): echo 'class="active"'; endif; ?>>
                <a href="#<?php echo $listProdCateg[$k]['id']; ?>" data-toggle="tab"><?php echo $listProdCateg[$k]['name_category']; ?></a>
            </li>                
        <?php endfor; ?>
    </ul>
    <div class="tab-content">
        <?php for ($t = 0; $t < count($listProdCateg); $t++): ?>  
            <div class="tab-pane <?php if ($t == 0): echo 'active'; endif; ?>" id="<?php echo $listProdCateg[$t]['id']; ?>">
                <div class="vertical-scrol-div">
                    <?php for ($q = 0; $q < count($prods); $q++): ?>
                        <?php if ($prods[$q]['id_category_prod'] == $listProdCateg[$t]['id']): ?>
                            <div class="mini mini-prods" onclick="addProd(this)" id="<?php echo $prods[$q]["iddir_prod"]; ?>">
                                <i class="name-prod"><?php echo $prods[$q]["name_prod"]; ?></i>
                                <i class="ed-izm"><?php echo $prods[$q]["short_edizm"]; ?></i>
                                <i class="price-ed"><?php echo $prods[$q]["price"]; ?></i>
                                <img src="<?php echo $prods[$q]["img_prod"]; ?>" alt="product">
                            </div>   
                        <?php endif; ?>
                    <?php endfor; ?>            
                </div>
            </div>
        <?php endfor; ?>  
    </div>
</div>

<?php
require_once ROOT . '/views/layouts/footer.php';
?>
