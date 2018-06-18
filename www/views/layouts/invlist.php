<table class="table table-bordered">
    <tr>
        <th></th>
        <th>Дата инвентаризации</th>
        <th>Номер инвентаризационной ведомости</th>
        <th>Просмотр</th>
        <th>Удалить</th>
    </tr>
    <?php for ($i = 0; $i < count($invs); $i++): ?>
    <tr id="<?php echo $invs[$i]['id']; ?>">
        <td></td>
        <td><?php echo $invs[$i]['dt_inv']; ?></td>
        <td><?php echo $invs[$i]['id']; ?></td>
        <td><a href="/sklad/showinv/<?php echo $invs[$i]['id']; ?>" 
               class="glyphicon glyphicon-eye-open">Просмотр</a></td>
        <td><a href="#" 
               class="glyphicon glyphicon-remove remove-row"
               onclick="event.preventDefault(); deleteInv($(this).closest('tr').attr('id'))"></a></td>
    </tr>                    
    <?php endfor; ?>
</table>
