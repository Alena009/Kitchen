<table class="table table-bordered">
    <tr>
        <th>Операция</th>
        <th>Номер операции</th>
        <th>Дата операции</th>
        <th>Склад</th>
        <th>Продукт</th>
        <th>Код продукта</th>
        <th>Ед.изм</th>
        <th>Количество</th>
        <th>Цена</th>
        <th>Сумма</th>
        <th>Необходимое кол-во по закладке</th>
        <th>Выдано</th>        
        <th></th>
    </tr>
    <?php for ($i = 0; $i < count($history); $i++): ?>
    <tr <?php if ($history[$i]['id_type_oper'] == 1): echo 'class="prod-rem"'; else: echo 'class="prod-ret"'; endif; ?>>
            <td><?php echo $history[$i]['name_type_oper']; ?></td>
            <td><?php echo $history[$i]['id_stock_oper']; ?></td>
            <td><?php echo $history[$i]['dt_oper']; ?></td>
            <td><?php echo $history[$i]['name_stock']; ?></td>
            <td><?php echo $history[$i]['name_prod']; ?></td>
            <td><?php echo $history[$i]['id_prod']; ?></td>
            <td><?php echo $history[$i]['short_edizm']; ?></td>
            <td><?php echo $history[$i]['amount']; ?></td>
            <td><?php echo $history[$i]['price']; ?></td>
            <td><?php echo $history[$i]['summa']; ?></td>
            <td><?php if ($history[$i-1]['id_type_oper'] == $history[$i]['id_type_oper']): echo $history[$i]['count']; endif; ?></td>
            <td><?php if ($history[$i-1]['id_type_oper'] == $history[$i]['id_type_oper']): echo $history[$i]['done']; endif; ?></td>            
            <td><?php if ($history[$i]['id_type_oper'] == 1):
                $delta = abs($history[$i]['count']) - abs($history[$i]['done']); 
                if ($delta > 0): 
                    echo 'Можно еще выдать <i style="font-weight: bold">' . $delta . '</i>'; 
                elseif ($delta < 0):
                    echo 'Необходимо вернуть <i style="font-weight: bold">' . abs($delta) . '</i>'; 
                endif; 
                endif; ?>
            </td>
        </tr>
    <?php endfor; ?>
</table>