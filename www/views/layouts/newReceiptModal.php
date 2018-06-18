<div class="modal fade" id="newReceiptModal" tabindex="-1" role="dialog" 
     aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog" style="width: 1000px;">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title" id="myModalLabel">Новая технологическая карта</h4>
        </div>
        <div class="modal-body">
            <p>
                <b>Название блюда</b>
                <input type="text" id="name-new-receipt" name="cat-new-receipt">
                <b>Категория блюда</b>
                <select id="cat-new-receipt">
                    <?php for ($i = 0; $i < count($receiptsCategories); $i++): ?>
                        <?php if ($receiptsCategories[$i]['id'] == $categoryReceipts[0]['id']): ?>
                            <option id="<?php echo $receiptsCategories[$i]['id']; ?>" selected>
                                <?php echo $receiptsCategories[$i]['name_categ_receipt']; ?>
                            </option>
                        <?php else: ?>
                            <option id="<?php echo $receiptsCategories[$i]['id']; ?>">
                                <?php echo $receiptsCategories[$i]['name_categ_receipt']; ?>
                            </option>                                            
                        <?php endif; ?>
                    <?php endfor; ?>
                </select>
            </p>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6" style="background: lightgrey; max-height: 400px; overflow-y: auto;">
                    <p><b><i>Справочник продуктов</i></b></p>
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs">
                        <?php for ($w = 0; $w < count($listProdCateg); $w++): ?>
                            <li <?php if ($w == 0): echo 'class="active"'; endif; ?>>
                                <a href="#id-<?php echo $listProdCateg[$w]['id']; ?>" data-toggle="tab">
                                    <?php echo $listProdCateg[$w]['name_category']; ?>
                                </a>
                            </li>                
                        <?php endfor; ?>
                    </ul>  
                    <!-- Tab panes -->
                    <div class="tab-content vertical-scrol-div">
                        <?php for ($t1 = 0; $t1 < count($listProdCateg); $t1++): ?>  
                            <div <?php if ($t1 == 0): echo 'class="tab-pane active"'; else: echo 'class="tab-pane"'; endif;?> 
                                id="id-<?php echo $listProdCateg[$t1]['id']; ?>">
                                <?php for ($q1 = 0; $q1 < count($prods); $q1++): ?>
                                    <?php if ($prods[$q1]['id_category_prod'] == $listProdCateg[$t1]['id']): ?>
                                        <div class="row mini mini-prods" onclick="addProdToReceipt(this, 'table-receipt')" data-id="<?php echo $prods[$q1]["iddir_prod"]; ?>"
                                             data-prod-name="<?php echo $prods[$q1]["name_prod"]; ?>"
                                             data-ed-izm="<?php echo $prods[$q1]["short_edizm"]; ?>">
                                            <div class="col-lg-7">
                                                <p class="name-prod" style="font-weight: bold;"><?php echo $prods[$q1]["name_prod"]; ?>, 
                                                    <i class="ed-izm"><?php echo $prods[$q1]["short_edizm"]; ?></i>
                                                </p>
                                            </div>
                                            <div class="col-lg-5">
                                                <img src="<?php echo $prods[$q1]["img_prod"]; ?>" alt="product">
                                            </div>
                                        </div>   
                                    <?php endif; ?>
                                <?php endfor; ?>            
                            </div>
                        <?php endfor; ?>  
                    </div>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-6">
                    <p><b><i>Ингредиенты</i></b></p>
                    <table class="table table-bordered" id="table-receipt">
                        <tr id="0">
                            <th>Товар</th>
                            <th>Кол-во, брутто, г</th>
                            <th>Кол-во, нетто, г</th>
                            <th>Кол-во, брутто, г</th>
                            <th>Кол-во, нетто, г</th>
                            <th></th>
                        </tr>
                        <!--Таблица заполняется посредством скрипта script.js-->
                        <tr class="summary-weight" style="font-weight: bold;">
                            <td>Выход</td>
                            <td></td>
                            <td class="summary-netto-1"></td>
                            <td></td>
                            <td class="summary-netto-2"></td>
                            <td></td>
                        </tr> 
                    </table> 
                </div>
            </div>  
            <div class="row">
                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-6">
                    <hr>
                    <p><b>Технология приготовления</b></p>                        
                    <p><textarea id="tech-new-receipt" rows="10" cols="50"></textarea></p>
                </div>
                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-6">
                    <hr>
                    <p><b>Химический состав</b></p>                        
                    <p><textarea id="chem-new-receipt" rows="10" cols="50"></textarea></p>
                </div>
            </div>                            
        </div>
        <div class="modal-footer row">
            <div class="col-lg-6 default col-md-6 col-sm-6 col-xs-6">
                <button type="button" class="btn btn-default" data-dismiss="modal">Закрыть</button>
            </div>
            <div class="col-lg-6 default col-md-6 col-sm-6 col-xs-6">
                <button type="button" class="btn btn-primary" onclick="saveReceipt();">Сохранить технологическую карту</button>
            </div>
        </div>
    </div>
</div>
</div>