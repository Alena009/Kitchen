<div id="new-calc-table-ingr-<?php echo $prodsByReceipt[0]['id_receipt']; ?>">
    <table class="table table-bordered new-calc" id="receipt-ingr-<?php echo $prodsByReceipt[0]['id_receipt']; ?>"
           data-id="<?php echo $prodsByReceipt[0]['id_receipt']; ?>">
        <tr>
            <th>Продукт</th>
            <th>Брутто, г</th>
            <th>Нетто, г</th>
            <th>Брутто, г</th>
            <th>Нетто, г</th>
            <th></th>
        </tr>
        <?php for ($i = 0; $i < count($prodsByReceipt); $i++): ?>
        <tr id="<?php echo $prodsByReceipt[$i]['id_prod']; ?>">
            <td><?php echo $prodsByReceipt[$i]['name_prod']; ?></td>
            <td class="updating-td">
                <input type="text" class="brutto-1" value="<?php echo $prodsByReceipt[$i]['brutto_1']; ?>" style="width: 50px;">
            </td>
            <td class="updating-td">
                <input type="text" class="netto-1" value="<?php echo $prodsByReceipt[$i]['netto_1']; ?>" style="width: 50px;">
            </td>
            <td class="updating-td">
                <input type="text" class="brutto-2" value="<?php echo $prodsByReceipt[$i]['brutto_2']; ?>" style="width: 50px;">
            </td>
            <td class="updating-td">
                <input type="text" class="netto-2" value="<?php echo $prodsByReceipt[$i]['netto_2']; ?>" style="width: 50px;">
            </td>
            <td>
                <a href="#" class="glyphicon glyphicon-remove remove-row" title="Удалить из списка"></a>
            </td>                                            
        </tr>
        <?php endfor; ?>
        <tr class="summary-weight" style="font-weight: bold;">
            <td>Выход</td>
            <td></td>
            <td class="summary-netto-1"><?php echo $sumNetto[0]['netto_1']; ?></td>
            <td></td>
            <td class="summary-netto-2"><?php echo $sumNetto[0]['netto_2']; ?></td>
            <td></td>
        </tr>
        <tr>
            <td>
                <a href="#" class="glyphicon glyphicon-plus new-calc-add-ingr" 
                   data-id="<?php echo $prodsByReceipt[0]['id_receipt']; ?>"
                   onclick="addIngredientsNewCalc(event)">Добавить ингредиенты</a>
            </td>
        </tr> 
    </table>
</div>

