        <button class="btn btn-primary" onclick="$('#newReceiptModal').modal('show')">
            Новая технологическая карта
        </button>
        <div style="float: right;">
            <input type="text" 
                   placeholder="Поиск" 
                   class="text-primary" id="name-search-receipt">  
            <input type="button" class="btn btn-success" value="Найти" 
                   id="search-receipt" 
                   onclick="findReceipt($(this).prev('#name-search-receipt').val());">
        </div>
        <hr>
        <?php if(empty($receipts)): echo "Нет рецептов в данной категории"; else: ?>
            <div class="tabbable row" style="background: white; height: 800px; overflow-y: auto;">
                <div class="col-lg-2 col-md-2">
                    <ul class="nav nav-pills nav-stacked list-head-receipts">
                        <?php for ($i = 0; $i < count($receipts); $i++): ?>
                            <li data-id="<?php echo $receipts[$i]['id']; ?>" style="border: 1px dotted grey;">
                                <a href="#<?php echo $receipts[$i]['id']; ?>" data-toggle="tab">
                                    <?php echo $receipts[$i]['name_receipt']; ?> - Карта № <?php echo $receipts[$i]['id']; ?>                            
                                </a>
                            </li>
                        <?php endfor; ?>
                    </ul>
                </div>
                <!---->
                <!--Содержимое вкладок--> 
                <div class="tab-content col-lg-10 col-md-10" style="background: #ffffcc;">
                <?php for ($j = 0; $j < count($receipts); $j++): ?>
                    <div class="tab-pane" id="<?php echo $receipts[$j]['id']; ?>">
                        <hr>
                        <input type="button" class="btn btn-info receipt-update" value="Добавить ингредиенты"                            
                               data-name-receipt="<?php echo $receipts[$j]['name_receipt']; ?>"
                               data-id-receipt="<?php echo $receipts[$j]['id']; ?>"
                               onclick="showListProds(this);">          
                        <input type="button" class="btn btn-success receipt-print" value="Сохранить изменения" 
                               data-id="<?php echo $receipts[$j]['id']; ?>"
                               onclick="updateReceipt(this);">               
                        <input type="button" data-id="<?php echo $receipts[$j]['id']; ?>"
                               class="btn btn-primary receipt-print" 
                               onclick="exportToWord(this)" value="Распечатать">                                   
                        <input type="button" class="btn btn-danger btn-sm" value="Удалить карту" 
                               data-id="<?php echo $receipts[$j]['id']; ?>" 
                               onclick="deleteTab(this);">
                        <hr>
                        <div class="row">
                            <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">  
                                <div id="printable-area-<?php echo $receipts[$j]['id']; ?>" style="display: none;">
                                    <table class="table table-bordered">                                    
                                        <tr>
                                            <td></td>
                                            <td colspan="2"><b>Технологическая карта № <?php echo $receipts[$j]['id']; ?></b></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td colspan="2"><?php echo $receipts[$j]['name_receipt']; ?></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>Ингредиенты:</td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td colspan="2">
                                                <table class="table table-bordered">
                                                    <tr>
                                                        <th>Название продукта</th>
                                                        <th>Брутто, г</th>
                                                        <th>Нетто, г</th>
                                                        <th>Брутто, г</th>
                                                        <th>Нетто, г</th>
                                                    </tr>
                                                    <?php for ($pbr = 0; $pbr < count($prodsByReceipt); $pbr++): ?>
                                                        <?php if ($prodsByReceipt[$pbr]['id_receipt'] == $receipts[$j]['id']): ?>
                                                            <tr>
                                                                <td><?php echo $prodsByReceipt[$pbr]['name_prod'];?></td>
                                                                <td><?php echo $prodsByReceipt[$pbr]['brutto_1'] * 1000;?></td>
                                                                <td><?php echo $prodsByReceipt[$pbr]['netto_1'] * 1000;?></td>
                                                                <td><?php echo $prodsByReceipt[$pbr]['brutto_2'] * 1000;?></td>
                                                                <td><?php echo $prodsByReceipt[$pbr]['netto_2'] * 1000;?></td>                                                            
                                                            </tr>                                         
                                                        <?php endif; ?>
                                                    <?php endfor; ?>
                                                    <tr style="font-weight: bold;">
                                                        <td>Выход</td>
                                                        <td></td>
                                                        <td><?php echo $receipts[$j]['output_weight_1']; ?></td>
                                                        <td></td>
                                                        <td><?php echo $receipts[$j]['output_weight_2']; ?></td>                                                    
                                                    </tr>                                        
                                                </table>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"><b>Технология приготовления</b></td>                                        
                                            <td colspan="2"><b>Химический состав</b></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"><?php echo $receipts[$j]['tech_prigotov']; ?></td>                                        
                                            <td colspan="2"><?php echo $receipts[$j]['chem_sostav']; ?></td>
                                        </tr>
                                    </table>
                                </div>
                                <div>
                                    <p>
                                        <b>Технологическая карта № 
                                            <i id="num-tech-ticket"><?php echo $receipts[$j]['id']; ?></i>
                                        </b>
                                    </p>
                                    <div style="border: 1px dotted grey;" 
                                         contenteditable="true" 
                                         id="name-upd-receipt-<?php echo $receipts[$j]['id']; ?>">
                                             <?php echo $receipts[$j]['name_receipt']; ?>
                                    </div>
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
                                                    <td class="brutto-1"><input type="number" style="width: 70px;" 
                                                               class="brutto-1" 
                                                               value="<?php echo $prodsByReceipt[$pbr]['brutto_1'] * 1000;?>"></td>
                                                    <td class="netto-1"><input type="number" 
                                                               style="width: 70px;" 
                                                               class="netto-1" 
                                                               value="<?php echo $prodsByReceipt[$pbr]['netto_1'] * 1000;?>"></td>
                                                    <td class="brutto-2"><input type="number" 
                                                               style="width: 70px;" 
                                                               class="brutto-2" 
                                                               value="<?php echo $prodsByReceipt[$pbr]['brutto_2'] * 1000;?>"></td>
                                                    <td class="netto-2"><input type="number" 
                                                               style="width: 70px;" 
                                                               class="netto-2" 
                                                               value="<?php echo $prodsByReceipt[$pbr]['netto_2'] * 1000;?>"></td>
                                                    <td>
                                                        <a href="#" class="glyphicon glyphicon-remove remove-row" title="Удалить из списка"></a>
                                                    </td>
                                                </tr>                                         
                                            <?php endif; ?>
                                        <?php endfor; ?>
                                        <tr class="summary-weight" style="font-weight: bold;">
                                            <td>Выход</td>
                                            <td></td>
                                            <td class="summary-netto-1"><?php echo $receipts[$j]['output_weight_1']; ?></td>
                                            <td></td>
                                            <td class="summary-netto-2"><?php echo $receipts[$j]['output_weight_2']; ?></td>
                                            <td></td>
                                        </tr>                                        
                                    </table>
                                    <hr>
                                    <div class="row">
                                        <div class="col-lg-7">
                                            <p><b>Технология приготовления</b></p>
                                            <div style="border: 1px dotted grey;" contenteditable="true" id="tech-upd-receipt-<?php echo $receipts[$j]['id']; ?>"><?php echo $receipts[$j]['tech_prigotov']; ?> </div>
                                        </div>                                    
                                        <div class="col-lg-5">
                                            <p><b>Химический состав</b></p>
                                            <div style="border: 1px dotted grey;" contenteditable="true" id="chem-upd-receipt-<?php echo $receipts[$j]['id']; ?>"><?php echo $receipts[$j]['chem_sostav']; ?> </div>                            
                                        </div>
                                    </div>
                                    <hr>
                                </div>    
                            </div>
                            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5" id="addIngr-<?php echo $receipts[$j]['id']; ?>">

                            </div>
                        </div>      

                    </div>
                <?php endfor; ?>
                </div>
            </div>
        <?php endif; ?>
        <!--Включаем файл с диалоговым окном для добавления новой технологической карты-->
        <?php require ROOT . '/views/layouts/newReceiptModal.php';?>