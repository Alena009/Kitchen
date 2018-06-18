<?php
/*
 * Список операций по складу вразделе "Операции по складу"
 */
require_once ROOT . '/views/layouts/header.php';
?>

<div class="container" id="list-nakl">
    <div>
        <ul class="breadcrumb">
            <li><a href="/">На главную</a> <span class="divider">/</span></li>
            <li><a href="/sklad/">Операции по складу</a> <span class="divider">/</span></li>
            <li class="active">Список накладных</li>
        </ul>        
    </div>    

    <div class="row">
        <div class="col-lg-12" style="height: 600px; overflow-y: auto;">
            <hr>
            <?php if (count($listNakl)): ?>
            <table class="table table-bordered table-hover">
                <tr>
                    <th></th>
                    <th colspan="4">Список операций</th>
                    <th colspan="3">
                        <a href="/sklad/<?php echo $typeOper; ?>" class="glyphicon glyphicon-plus" 
                           style="color: white; font-weight: bold;">
                            Создать операцию
                        </a>
                    </th>
                </tr>
                <tr>
                    <th></th>
                    <th>Номер</th>
                    <th>Дата</th>
                    <th>Вид операции</th>
                    <th>Склад</th>
                    <th>Редактирование</th>
                    <th>Печать</th>
                    <th>Удаление</th>                    
                </tr>
                <?php for ($i = 0; $i < count($listNakl); $i++): ?>
                <tr>
                    <td></td>
                    <td><?php echo $listNakl[$i]['id_stock_oper']; ?></td>
                    <td><?php echo $listNakl[$i]['dt_oper']; ?></td>
                    <td><?php echo $listNakl[$i]['name_type_oper']; ?></td>
                    <td><?php echo $listNakl[$i]['name_stock']; ?></td>  
                    <td>
                        <a class="glyphicon glyphicon-check" 
                           href="/sklad/upd/<?php echo $listNakl[$i]['id_stock_oper'] ?>">
                        </a>
                    </td>  
                    <td>   
                        <input type="button" class="btn btn-success" value="EXCEL"
                               onclick="$('#operation-<?php echo $listNakl[$i]['id_stock_oper']; ?>').table2excel({filename: 'operation #<?php echo $listNakl[$i]['id_stock_oper']; ?>'})">
                        <input type="button" class="btn btn-primary" value="WORD" 
                               onclick="$('.googoose-wrapper-<?php echo $listNakl[$i]['id_stock_oper']; ?>').wordExport('operation #<?php echo $listNakl[$i]['id_stock_oper']; ?>')"> 
                    </td>
                    <td>
                        <?php if (!$listNakl[$i]['blocked'] && ($listNakl[$i]['id_type_oper'] != 1)): ?>
                        <a href="#" data-id="<?php echo $listNakl[$i]['id_stock_oper']; ?>"
                           onclick="deleteStockOper(event)"                           
                           class="glyphicon glyphicon-remove"></a>
                        <?php else: ?>
                        <i>Удаление запрещено. Продукты <b><?php echo $listNakl[$i]['blocked']; ?></b> из данной операции были задействованы в производстве.</i>
                        <?php endif; ?>
                    </td>                    
                </tr> 
                <tr>
                    <td colspan="8">
                        <a class="glyphicon glyphicon-eye-open" href="#" onclick="showOperPos(<?php echo $listNakl[$i]['id_stock_oper']; ?>);
                            showHideHelpBlock($(this).next('div'))">Просмотр позиций</a>
                        <div class="help" id="show-oper-<?php echo $listNakl[$i]['id_stock_oper']; ?>">hdgfgd</div>
                    </td>
                </tr>
                <?php endfor; ?>
            </table>  
            <?php else: ?>
            <table class="table table-bordered table-hover">
                <tr>
                    <th></th>
                    <th>Список операций</th>
                    <th>
                        <a href="/sklad/<?php echo $typeOper; ?>" class="glyphicon glyphicon-plus" 
                           style="color: white; font-weight: bold;">
                            Создать операцию
                        </a>
                    </th>
                </tr>
                <tr>
                    <td colspan="3">Нет записей</td>
                </tr>
            </table>
            <?php endif; ?>
        </div>
    </div>    
</div>

<?php require_once ROOT . '/views/layouts/footer.php'; ?>

