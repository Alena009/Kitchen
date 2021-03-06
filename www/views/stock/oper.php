    <div class="googoose-wrapper-<?php echo $headRecord[0]['id_stock_oper']?>">
        <table class="table table-bordered" id="operation-<?php echo $headRecord[0]['id_stock_oper']?>">
            <tr class="hidden">
                <th></th>
                <th colspan="6"><?php echo $type; ?> № <?php echo $headRecord[0]['id_stock_oper']?> от 
                    <?php echo $headRecord[0]['dt_oper']; ?>.
                </th>
            </tr>
            <tr class="hidden">                
                <th></th>
                <th colspan="6">
                    <?php if ($headRecord[0]['id_type_oper'] != 2 && $headRecord[0]['id_type_oper'] != 4): ?>
                        <a style="color: white;" href="/calculations/showrequest/<?php echo $headRecord[0]['id_request']; ?>">Требование № <?php echo $headRecord[0]['id_request']; ?></a>, 
                        <a style="color: white;" href="/calculations/showcalc/<?php echo $headRecord[0]['id']; ?>">меню-калькуляция № <?php echo $headRecord[0]['id']; ?></a>.                         
                    <?php endif; ?>
                </th>
            </tr>   
            <tr class="hidden">         
                <th></th>
                <th colspan="6">
                    <?php echo $headRecord[0]['name_stock']; ?>.
                </th>
            </tr>            
            <tr>
                <th>№ п/п</th>
                <th>Наименование продукта</th> 
                <th>Код</th>                               
                <th>Ед. изм.</th>
                <th>Колличество</th>
                <th>Цена</th>
                <th>Сумма</th>
            </tr>            
            <?php for ($i = 0; $i < count($posRecord); $i++): ?>
            <tr data-id="<?php echo $posRecord[$i]['id_so_pos']; ?>">
                <td><?php echo $i +1; ?></td>
                <td><?php echo $posRecord[$i]['name_prod']; ?></td>
                <td><?php echo $posRecord[$i]['id_prod']; ?></td>
                <td><?php echo $posRecord[$i]['short_edizm']; ?></td>
                <td><?php echo abs($posRecord[$i]['amount']); ?></td>
                <td><?php echo $posRecord[$i]['price']; ?></td>
                <td><?php echo abs($posRecord[$i]['summa']); ?></td>                
            </tr>
            <?php endfor; ?>
            <tr class="hidden">
                <th></th>
                <th>Итого</th>                
                <th></th>
                <th></th>
                <th><?php echo abs($headRecord[0]['total_amount']); ?></th>
                <th></th>
                <th><?php echo abs($headRecord[0]['total_sum']); ?></th>                 
            </tr>
        </table>
    </div>



