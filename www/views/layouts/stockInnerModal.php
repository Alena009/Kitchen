<!--Модальное окно для просмотра движения продукта-->
<div class="modal fade" id="stockInnerModal-<?php echo $prods[$q]["id_prod"]; ?>" tabindex="-1" role="dialog" 
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 800px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">
                    Продукт: <?php echo $prods[$q]["name_prod"]; ?>
                </h4>
            </div>
            <div class="modal-body">
                <div class="row" style="border-bottom: 1px dotted lightgrey;">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-2">Операция</div>
                    <div class="col-lg-2">Ед.изм.</div>
                    <div class="col-lg-2">Колл-во</div>
                    <div class="col-lg-2">Цена</div>
                    <div class="col-lg-2">Сумма</div>
                </div>    

                <?php for ($j = 0; $j < count($listNaklPos); $j++): ?>
                <?php if($listNaklPos[$j]['id_prod'] == $prods[$q]["id_prod"]): ?>
                <div class="row" style="border-bottom: 1px dotted lightgrey;">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-2"><?php echo $listNaklPos[$j]['name_type_oper']; ?></div>
                    <div class="col-lg-2"><?php echo $listNaklPos[$j]['short_edizm']; ?></div>
                    <div class="col-lg-2"><?php echo $listNaklPos[$j]['amount']; ?></div>
                    <div class="col-lg-2"><?php echo $listNaklPos[$j]['price']; ?></div>
                    <div class="col-lg-2"><?php echo $listNaklPos[$j]['summa']; ?></div>
                </div>
                <?php endif; ?>
                <?php endfor; ?>  
            </div>
            <div class="modal-footer">
                <input type="button" class="btn btn-success" value="ОК" 
                       id="<?php echo $prods[$q]["id_prod"]; ?>"
                       onclick="$('#stockInnerModal-' + $(this).attr('id')).modal('hide')">                
            </div>
        </div>
    </div>
</div>
