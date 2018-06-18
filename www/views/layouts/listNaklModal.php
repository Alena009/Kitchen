<!--Модальное окно для просмотра позиций списка накладных-->
<div class="modal fade" id="listNaklModal-<?php echo $listNakl[$i]['id_stock_oper']; ?>" tabindex="-1" role="dialog" 
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 800px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">
                    Накладная № <?php echo $listNakl[$i]['id_stock_oper']; ?> от <?php echo $listNakl[$i]['dt_oper']; ?>
                </h4>
                <h5 class="modal-title" id="myModalLabel">
                    <p>Операция: <?php echo $listNakl[$i]['name_type_oper']; ?></p>
                    <p>Склад: <?php echo $listNakl[$i]['name_stock']; ?></p>
                </h5>
            </div>
            <div class="modal-body">
                <div class="row" style="border-bottom: 1px dotted lightgrey;">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-2">Продукт</div>
                    <div class="col-lg-2">Ед.изм.</div>
                    <div class="col-lg-2">Колл-во</div>
                    <div class="col-lg-2">Цена</div>
                    <div class="col-lg-2">Сумма</div>
                </div>    

                <?php for ($j = 0; $j < count($listNaklPos); $j++): ?>
                <?php if($listNaklPos[$j]['id_so'] == $listNakl[$i]['id_stock_oper']): ?>
                <div class="row" style="border-bottom: 1px dotted lightgrey;">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-2"><?php echo $listNaklPos[$j]['name_prod']; ?></div>
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
                       id="<?php echo $listNakl[$i]['id_stock_oper']; ?>"
                       onclick="$('#listNaklModal-' + $(this).attr('id')).modal('hide')">                
            </div>
        </div>
    </div>
</div>
