<?php
/*
 * Вид раздела "Выдачи"
 */
require_once ROOT . '/views/layouts/header.php';
?>

<div class="container">
    <div>
        <ul class="breadcrumb">
            <li><a href="/">На главную</a> <span class="divider">/</span></li>
            <li><a href="/calculations/">Меню-калькуляции</a> <span class="divider">/</span></li>
            <li><a href="/calculations/listremoves/0"><?php echo $header; ?></a> <span class="divider">/</span></li>            
            <li class="active">Просмотр</li>
        </ul>        
    </div> 
    <div class="row">
        <input type="button" class="btn btn-success" value="Выгрузить в EXCEL"
               onclick="$('#operation').table2excel({filename: 'operation #<?php echo $headRecord[0]['id_stock_oper']?>'})">
        <input type="button" class="btn btn-primary" value="Выгрузить в WORD" 
               onclick="$('.googoose-wrapper').wordExport('operation #<?php echo $headRecord[0]['id_stock_oper']?>')">
        <a href="/sklad/production/return" class="btn btn-danger">Вернуть продукты</a>        
    </div>
    <hr>
    <div class="row googoose-wrapper">
        <table class="table table-bordered" id="operation">
            <tr>
                <th></th>
                <th colspan="6"><?php echo $type; ?> № <?php echo $headRecord[0]['id_stock_oper']?> от 
                    <?php echo $headRecord[0]['dt_oper']; ?>.
                </th>
            </tr>
            <tr>                
                <th></th>
                <th colspan="6">
                    <a style="color: white;" href="/calculations/showrequest/<?php echo $headRecord[0]['id_request']; ?>">
                        Требование № <?php echo $headRecord[0]['id_request']; ?>
                    </a>, 
                    <a style="color: white;" href="/calculations/showcalc/<?php echo $headRecord[0]['id']; ?>">
                        меню-калькуляция № <?php echo $headRecord[0]['id']; ?>
                    </a>.                         
                </th>
            </tr>   
            <tr>         
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
            <tr>
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
</div>

<?php require_once ROOT . '/views/layouts/footer.php'; ?>

