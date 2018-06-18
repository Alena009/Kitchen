<div id="list-prods">
    <ul>
        <?php for ($k = 0; $k < count($listProdCateg); $k++): ?>
            <li <?php if ($k == 0): echo 'class="active"'; endif; ?>>
                <a href="#upd-receipt-prod-<?php echo $listProdCateg[$k]['id']; ?>"><?php echo $listProdCateg[$k]['name_category']; ?></a>
            </li>                
        <?php endfor; ?>        
    </ul>

    <?php for ($t = 0; $t < count($listProdCateg); $t++): ?>  
        <div id="upd-receipt-prod-<?php echo $listProdCateg[$t]['id']; ?>">
            <div class="vertical-scrol-div">
                <?php for ($q = 0; $q < count($prods); $q++): ?>
                    <?php if ($prods[$q]['id_category_prod'] == $listProdCateg[$t]['id']): ?>
                        <div class="row mini mini-prods" onclick="addProdToReceipt(this, 'prodsbyreceipt');" 
                             data-id="<?php echo $prods[$q]["iddir_prod"]; ?>"
                             data-prod-name="<?php echo $prods[$q]["name_prod"]; ?>"
                             data-ed-izm="<?php echo $prods[$q]["short_edizm"]; ?>">
                            <div class="col-lg-8">
                                <p class="name-prod" style="font-weight: bold;"><?php echo $prods[$q]["name_prod"]; ?>, 
                                    <i class="ed-izm"><?php echo $prods[$q]["short_edizm"]; ?></i>
                                </p>
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