<!--Модальное окно для добавления ингредиентов-->
<div class="modal fade" id="newCalcAddIngr" tabindex="-1" role="dialog" 
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 800px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Добавление ингредиентов в блюдо</h4>
            </div>
            <div class="modal-body">
                <div class="tabbable" style="background: lightgrey;"> 
                    <ul class="nav nav-tabs">
                        <?php for ($k = 0; $k < count($listProdCateg); $k++): ?>
                            <li <?php if ($k == 0): echo 'class="active"'; endif; ?>>
                                <a href="#<?php echo $listProdCateg[$k]['id']; ?>" 
                                   data-toggle="tab"><?php echo $listProdCateg[$k]['name_category']; ?>
                                </a>
                            </li>                
                        <?php endfor; ?>
                    </ul>
                    <div class="tab-content">
                        <?php for ($t = 0; $t < count($listProdCateg); $t++): ?>  
                            <div class="tab-pane <?php if ($t == 0): echo 'active'; endif; ?>" 
                                 id="<?php echo $listProdCateg[$t]['id']; ?>"
                                 style="min-height: 300px; max-height: 300px; overflow-y: auto;">
                                    <?php for ($q = 0; $q < count($prods); $q++): ?>
                                        <?php if ($prods[$q]['id_category_prod'] == $listProdCateg[$t]['id']): ?>
                                            <div class="mini mini-prods row" title="Двойной клик"
                                                 ondblclick="addProdToReceipt(this, $('div#newCalcAddIngr').attr('data-id'));" 
                                                 data-id="<?php echo $prods[$q]["iddir_prod"]; ?>"
                                                 data-price="<?php echo $prods[$q]["price"]; ?>" 
                                                 data-amount="<?php echo $prods[$q]["amount"]; ?>"
                                                 data-prod-name="<?php echo $prods[$q]["name_prod"]; ?>">
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
                        <?php endfor; ?>  
                    </div>
                </div>                               
            </div>
            <div class="modal-footer">
                <input type="button" class="btn btn-success" value="ОК" 
                       onclick="$('#newCalcAddIngr').modal('hide');">                
            </div>
        </div>
    </div>
</div>
