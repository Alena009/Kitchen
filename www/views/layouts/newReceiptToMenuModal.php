<!--Модальное окно для добавления нового рецепта в меню-->
<div class="modal fade" id="newReceiptToMenuModal" tabindex="-1" role="dialog" 
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 800px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Новое меню</h4>
            </div>
            <div class="modal-body">        
                <div id="tabs-menu-categ-receipt">
                    <ul>                        
                    <?php for($im = 0; $im < count($allCatReceipts); $im++): ?>
                        <li><a href="#id-categ-receipt-<?php echo $allCatReceipts[$im]['id']; ?>">
                                <?php echo $allCatReceipts[$im]['name_categ_receipt']; ?>
                            </a>
                        </li>
                    <?php endfor; ?>
                    </ul>                        
                    <?php for($jm = 0; $jm < count($allCatReceipts); $jm++): ?>                       
                    <div id="id-categ-receipt-<?php echo $allCatReceipts[$jm]['id']; ?>" 
                         style="max-height: 300px; min-height: 300px; overflow-y: auto;">
                        <?php for($km = 0; $km < count($allReceipts); $km++): ?>
                            <?php if ($allReceipts[$km]['id_categ_receipt'] == $allCatReceipts[$jm]['id']):?>
                                <div class="mini-button new-calc-receipts" 
                                     data-id="<?php echo $allReceipts[$km]['id']; ?>"
                                     data-id-menu="<?php echo $menus[$j]['id']; ?>"
                                     data-name="<?php echo $allReceipts[$km]['name_receipt']; ?>"
                                     data-output-1="<?php echo $allReceipts[$km]['output_weight_1']; ?>"
                                     data-output-2="<?php echo $allReceipts[$km]['output_weight_2']; ?>"
                                     onclick="addReceiptToNewMenu(this, 'menu-receipts-' + $(this).closest('div#newReceiptToMenuModal').attr('data-id'))">
                                    <?php echo $allReceipts[$km]['name_receipt']; ?>
                                </div>
                            <?php endif;?>
                        <?php endfor; ?>
                    </div>
                    <?php endfor; ?> 
                </div> 
            </div>
            <div class="modal-footer">
                <input type="button" class="btn btn-success" value="ОК" 
                       onclick="$('#newReceiptToMenuModal').modal('hide')">                
            </div>
        </div>
    </div>
</div>
         