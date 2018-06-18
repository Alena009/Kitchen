<!--Заголовки вкладок НЕ ИСПОЛЬЗУЕТСЯ!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
<ul>
    <?php for ($i = 0; $i < count($receipts); $i++): ?>
        <li><a href="#<?php echo $receipts[$i]['id']; ?>">
                <?php echo $receipts[$i]['name_receipt']; ?> - Карта № <?php echo $receipts[$i]['id']; ?>
                <input type="button" class="btn btn-danger" value="X" data-id="<?php echo $receipts[$i]['id']; ?>" onclick="deleteTab(this, 'kt_dir_receipts');">
            </a>
        </li>
    <?php endfor; ?>
</ul>
<!---->
<!--Содержимое вкладок-->                        
<?php for ($j = 0; $j < count($receipts); $j++): ?>
    <div id="<?php echo $receipts[$j]['id']; ?>">
        <div class="row" style="background: white;">
            <div class="col-lg-7">  
            <div id="printable-area-<?php echo $receipts[$j]['id']; ?>">
        <p><b>Технологическая карта № <i id="num-tech-ticket"><?php echo $receipts[$j]['id']; ?></i></b></p>
        <div style="border: 1px dotted grey;" contenteditable="true" id="name-upd-receipt-<?php echo $receipts[$j]['id']; ?>"><?php echo $receipts[$j]['name_receipt']; ?></div>
        <hr>                            
                <p><i><b>Ингредиенты</b></i></p>
                <table class="table table-bordered" 
                       id="prodsbyreceipt-<?php echo $receipts[$j]['id']; ?>">
                    <tr>
                        <th>Название продукта</th>
                        <th>Брутто, г</th>
                        <th>Нетто, г</th>
                        <th>Брутто, г</th>
                        <th>Нетто, г</th>
                        <th></th>
                    </tr>
                 
                    <?php for ($pbr = 0; $pbr < count($prodsByReceipt); $pbr++): ?>
                        <?php if ($prodsByReceipt[$pbr]['id_receipt'] == $receipts[$j]['id']): ?>
                            <tr data-id-record="<?php echo $prodsByReceipt[$pbr]['id'];?>" 
                                data-id-prod="<?php echo $prodsByReceipt[$pbr]['id_prod'];?>">
                                <td><?php echo $prodsByReceipt[$pbr]['name_prod'];?></td>
                                <td><input ng-pattern="[0-9]+\.[0-9]{2}" type="number" ng-required="true" style="width: 70px;" class="td-amount" data-def-val="<?php echo $prodsByReceipt[$pbr]['brutto_1'];?>" value="<?php echo $prodsByReceipt[$pbr]['brutto_1'];?>"></td>
                                <td><input ng-pattern="[0-9]+\.[0-9]{2}" type="number" ng-required="true" style="width: 70px;" class="td-amount" data-def-val="<?php echo $prodsByReceipt[$pbr]['netto_1'];?>" value="<?php echo $prodsByReceipt[$pbr]['netto_1'];?>"></td>
                                <td><input ng-pattern="[0-9]+\.[0-9]{2}" type="number" ng-required="true" style="width: 70px;" class="td-amount" data-def-val="<?php echo $prodsByReceipt[$pbr]['brutto_2'];?>" value="<?php echo $prodsByReceipt[$pbr]['brutto_2'];?>"></td>
                                <td><input ng-pattern="[0-9]+\.[0-9]{2}" type="number" ng-required="true" style="width: 70px;" class="td-amount" data-def-val="<?php echo $prodsByReceipt[$pbr]['netto_2'];?>" value="<?php echo $prodsByReceipt[$pbr]['netto_2'];?>"></td>
                                <td><a href="#" class="glyphicon glyphicon-remove remove-row" title="Удалить из списка"></a></td>
                            </tr>                                         
                        <?php endif; ?>
                    <?php endfor; ?>
                </table>
                <hr>
                <div class="row">
                    <div class="col-lg-6">
                        <p><b>Технология приготовления</b></p>
                        <div style="border: 1px dotted grey;" contenteditable="true" id="tech-upd-receipt-<?php echo $receipts[$j]['id']; ?>"><?php echo $receipts[$j]['tech_prigotov']; ?> </div>
                    </div>
                    <div class="col-lg-6">
                        <p><b>Химический состав</b></p>
                        <div style="border: 1px dotted grey;" contenteditable="true" id="chem-upd-receipt-<?php echo $receipts[$j]['id']; ?>"><?php echo $receipts[$j]['chem_sostav']; ?> </div>                            
                    </div>
                </div>
                <hr>
            </div>    
            </div>
            <div class="col-lg-5">
                <p class="update-receipt hidden"><i><b>Справочник продуктов</b></i></p>
                <div class="update-receipt hidden">
                    <div class="list-prods">
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
                                            <div class="row mini mini-prods" onclick="addProdToReceipt(this, 'prodsbyreceipt-' + <?php echo $receipts[$j]['id']; ?>);" 
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
        </div>
        <hr>
        <input type="button" class="btn btn-success receipt-update" value="Добавить ингредиенты"                            
               data-name-receipt="<?php echo $receipts[$j]['name_receipt']; ?>"
               onclick="showListProds(this);">          
        <input type="button" class="btn btn-success receipt-print" value="Сохранить изменения" 
               data-id="<?php echo $receipts[$j]['id']; ?>"
               onclick="updateReceipt(this);">               
        <input type="button" class="btn btn-primary receipt-print" value="Распечатать" 
               data-id="<?php echo $receipts[$j]['id']; ?>"
               onclick="exportToWord(this);">               
        <input type="button" class="btn btn-danger receipt-cancel" value="Отмена" onclick="document.location.reload();">               
    </div>
<?php endfor; ?>