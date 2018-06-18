<?php require_once ROOT . '/views/layouts/header.php'; ?>

<div class="container receipts">
    <div>
        <ul class="breadcrumb">
            <li><a href="/">На главную</a> <span class="divider">/</span></li>
            <li><a href="/tech">Технологические карты</a> <span class="divider">/</span></li>
            <li class="active">Все технологические карты</li>
        </ul>        
    </div>
    <div class="row">
        <div class="col-lg-12">
            <table class="table table-bordered">
                <tr>
                    <th>Название блюда</th>
                    <th>Категория блюда</th>
                    <th>Выход одной порции</th>
                    <th>Технология приготовления</th>
                    <th>Химический состав</th>
                    <th>Удалить блюдо</th>
                </tr>
                <?php for ($i = 0; $i < count($receipts); $i++): ?>
                <tr>
                    <td><?php echo $receipts[$i]['name_receipt']; ?></td>
                    <td><?php echo $receipts[$i]['name_categ_receipt']; ?></td>
                    <td>
                        <?php echo $receipts[$i]['output_weight_1']; ?>/
                            <?php echo $receipts[$i]['output_weight_2']; ?>
                    </td>
                    <td><?php echo $receipts[$i]['tech_prigotov']; ?></td>
                    <td><?php echo $receipts[$i]['chem_sostav']; ?></td>
                    <td>
                        <a href="#" class="glyphicon glyphicon-remove remove-row"
                           data-id="<?php echo $receipts[$i]['id']; ?>"
                           onclick="if (confirm('Удалить рецепт?')) {
                               ajaxRequest('/tech/delete/' + $(this).attr('data-id') + '/', null, null);}"></a>
                    </td>
                </tr>
                <?php endfor; ?>        
            </table>
        </div>
    </div>
</div>

<?php require_once ROOT . '/views/layouts/footer.php'; ?>