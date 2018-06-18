<!--Модальное окно для добавления нового меню-->
<div class="modal fade" id="newMenuModal" tabindex="-1" role="dialog" 
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 800px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Новое меню</h4>
            </div>
            <div class="modal-body">
                <p>
                    <b>Название меню</b>
                    <input type="text" id="name-new-menu-0">
                </p>   
                <div class="row">
                    <dir class="col-lg-6">   
                        <div id="tabs-new-menu-categ-receipt">
                        <ul>                        
                        <?php for($i = 0; $i < count($allCatReceipts); $i++): ?>
                            <li><a href="#id-categ-receipt-<?php echo $allCatReceipts[$i]['id']; ?>">
                                    <?php echo $allCatReceipts[$i]['name_categ_receipt']; ?>
                                </a>
                            </li>
                        <?php endfor; ?>
                        </ul>                        
                        <?php for($j = 0; $j < count($allCatReceipts); $j++): ?>                       
                        <div id="id-categ-receipt-<?php echo $allCatReceipts[$j]['id']; ?>" 
                             style="max-height: 300px; min-height: 300px; overflow-y: auto;">
                            <?php for($k = 0; $k < count($allReceipts); $k++): ?>
                                <?php if ($allReceipts[$k]['id_categ_receipt'] == $allCatReceipts[$j]['id']):?>
                                    <div class="mini-button new-calc-receipts" 
                                         data-id="<?php echo $allReceipts[$k]['id']; ?>"
                                         data-name="<?php echo $allReceipts[$k]['name_receipt']; ?>"
                                         data-output-1="<?php echo $allReceipts[$k]['output_weight_1']; ?>"
                                         data-output-2="<?php echo $allReceipts[$k]['output_weight_2']; ?>"
                                         onclick="addReceiptToNewMenu(this, 'menu-receipts-0')">
                                        <?php echo $allReceipts[$k]['name_receipt']; ?>
                                    </div>
                                <?php endif;?>
                            <?php endfor; ?>
                        </div>
                        <?php endfor; ?> 
                        </div>
                    </dir>
                    <div class="col-lg-6">
                        <table class="table table-bordered" id="menu-receipts-0">
                            <tr>
                                <th></th>
                                <th>Название блюда</th>
                                <th>Выход</th>
                                <th></th>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <input type="button" class="btn btn-success" value="Сохранить" 
                       onclick="newMenuSave()">                
            </div>
        </div>
    </div>
</div>
