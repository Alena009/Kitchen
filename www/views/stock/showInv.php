<?php require_once ROOT . '/views/layouts/header.php'; ?>

<div class="container">
    <div class="row">
        <ul class="breadcrumb">
            <li><a href="/">На главную</a> <span class="divider">/</span></li>
            <li><a href="/sklad/">Операции по складу</a> <span class="divider">/</span></li>
            <li><a href="/sklad/production/inv">Инвентаризации</a> <span class="divider">/</span></li>
            <li class="active">Инвентаризационная опись</li>
        </ul>        
    </div> 
    <div class="row">
        <input type="button" class="btn btn-success" value="Выгрузить в EXCEL"
               onclick="$('#inv').table2excel({filename: 'inventarization #<?php echo $inv[0]['id']?>'})">
        <input type="button" class="btn btn-primary" value="Выгрузить в WORD" 
               onclick="$('.googoose-wrapper').wordExport('inventarization #<?php echo $inv[0]['id']?>')">
    </div>
    <hr>
    <div class="row">
        <div class="col-lg-12 googoose-wrapper">
            <table class="table table-bordered" id="inv">
                <tr>
                    <th colspan="9">Инвентаризиционная ведомость № <?php echo $inv[0]['id']; ?></th>
                </tr>
                <tr>
                    <th colspan="9">На дату <?php echo $inv[0]['dt_inv']; ?>. По всем складам, по всем ном.группам</th>
                </tr>  
                <tr>
                    <th>№</th>
                    <th>Наименование продукта</th>
                    <th>Ед.изм.</th>
                    <th>Кол-во</th>
                    <th>Цена</th>
                    <th>Сумма</th>
                    <th>Склад</th>
                    <th>Примечание</th>
                    <th>Сохранить</th>
                </tr>                
                <?php for ($i = 0; $i < count($prods); $i++): ?>
                <tr data-id="<?php echo $prods[$i]['id']; ?>">
                    <td><?php echo $i + 1; ?></td>
                    <td><?php echo $prods[$i]['name_prod']; ?></td>
                    <td><?php echo $prods[$i]['short_edizm']; ?></td>
                    <td><?php echo $prods[$i]['amount']; ?></td>
                    <td><?php echo $prods[$i]['price']; ?></td>
                    <td><?php echo $prods[$i]['summa']; ?></td>
                    <td><?php echo $prods[$i]['name_stock']; ?></td>
                    <td><div class="prim" contenteditable="true">
                        <?php echo $prods[$i]['prim']; ?>
                        </div></td>
                    <td><a href="#" class="glyphicon glyphicon-ok" 
                           onclick="updInvPos()"></a></td>
                </tr>                
                <?php endfor; ?>
                <tr>
                    <th></th>
                    <th>Итог</th>
                    <th></th>
                    <th><?php echo $total[0]['total_amount']; ?></th>
                    <th></th>
                    <th><?php echo $total[0]['total_summa']; ?></th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>                
            </table>
        </div>
    </div>
</div>

<?php require_once ROOT . '/views/layouts/footer.php'; ?> 
