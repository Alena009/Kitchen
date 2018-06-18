<p class="update-receipt"><i><b>Справочник продуктов</b></i></p>
<div class="update-receipt-<?php echo $idReceipt; ?>" style="background: lightgray;">
    <div class="tabbable">
        <ul class="nav nav-tabs">
            <?php for ($k = 0; $k < count($listProdCateg); $k++): ?>
                <li <?php if ($k == 0): echo 'class="active"'; endif; ?>>
                    <a href="#upd-receipt-prod-<?php echo $listProdCateg[$k]['id']; ?>" data-toggle="tab"><?php echo $listProdCateg[$k]['name_category']; ?></a>
                </li>                
            <?php endfor; ?>        
        </ul>
        <div class="tab-content">
        <?php for ($t = 0; $t < count($listProdCateg); $t++): ?>  
            <div id="upd-receipt-prod-<?php echo $listProdCateg[$t]['id']; ?>" class="tab-pane <?php if ($t == 0): echo 'active'; endif; ?>">
                <div style="min-height: 500px; max-height: 500px; overflow-y: auto;">
                    <?php for ($q = 0; $q < count($prods); $q++): ?>
                        <?php if ($prods[$q]['id_category_prod'] == $listProdCateg[$t]['id']): ?>
                            <div class="row mini mini-prods" 
                                 onclick="addProdToReceipt(this, 'prodsbyreceipt-<?php echo $idReceipt; ?>');" 
                                 data-id="<?php echo $prods[$q]["iddir_prod"]; ?>"
                                 data-prod-name="<?php echo $prods[$q]["name_prod"]; ?>"
                                 data-ed-izm="<?php echo $prods[$q]["short_edizm"]; ?>">
                                <div class="col-lg-8">
                                    <p class="name-prod" style="font-weight: bold;"><?php echo $prods[$q]["name_prod"]; ?></p>
                                </div>
                                <div class="col-lg-4">
                                    <img src="<?php echo $prods[$q]["img_prod"]; ?>" alt="product">
                                </div>
                            </div>   
                        <?php endif; ?>
                    <?php endfor; ?>            
                </div>
            </div>
        <?php endfor; ?> 
        </div>
    </div>
</div>