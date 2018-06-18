<?php
/*
 * Вид раздела "Новая калькуляция"
 */
require_once ROOT . '/views/layouts/header.php';
?>

<div class="container calculation">
    <div>
        <ul class="breadcrumb">
            <li><a href="/">На главную</a> <span class="divider">/</span></li>
            <li><a href="/calculations/">Меню-калькуляции</a> <span class="divider">/</span></li>            
            <li class="active">Просмотр требования</li>
        </ul>        
    </div> 
    <div class="row">
        <input type="button" class="btn btn-success" value="Выгрузить в EXCEL"
               onclick="$('#head-request').table2excel({filename: 'request #<?php echo $request[0]['id']?>'})">
        <input type="button" class="btn btn-primary" value="Выгрузить в WORD" 
               onclick="$('.googoose-wrapper').wordExport('request #<?php echo $request[0]['id']?>')">
    </div>
    <hr>
    <div class="row googoose-wrapper" style="overflow-x: auto;">
        <table class="table" id="head-request" >
            <tr>
                <th colspan="<?php echo count($receipts) * 2 + 6; ?>" style="border: 1px solid black;">
                    Требование № <?php echo $request[0]['id']; ?> от <?php echo $request[0]['date_request']; ?>
                </th>
            </tr>
            <tr>
                <th rowspan="5" style="border: 1px solid black;">№ п/п</th>
                <th rowspan="5" style="border: 1px solid black;">Наименование продукта</th> 
                <th rowspan="5" style="border: 1px solid black;">Код</th>                               
                <th rowspan="5" style="border: 1px solid black;">Ед. изм.</th>
                <th colspan="<?php echo count($receipts) * 2 ; ?>" style="border: 1px solid black;">Колличество продуктов питания, подлежащих закладке</th>
                <th rowspan="5" style="border: 1px solid black;">Итого (закладка на все порции)</th>
                <th rowspan="5" style="border: 1px solid black;">Выдано</th>
            </tr>
            <tr>
                <?php for ($i = 0; $i < count($basics); $i++): ?>
                    <th colspan="<?php echo $basics[$i]['count'] * 2; ?>" style="border: 1px solid black;">
                        <?php echo $basics[$i]['name_base']; ?>
                    </th>
                <?php endfor; ?>
            </tr> 
            <tr>
                <?php for ($i = 0; $i < count($orgs); $i++): ?>
                    <th colspan="2" style="border: 1px solid black;">
                        <?php echo $orgs[$i]['name_org']; ?>
                    </th>
                <?php endfor; ?>                
            </tr>
            <tr>
                <?php for ($i = 0; $i < count($receipts); $i++): ?>
                    <th colspan="2" style="border: 1px solid black;">
                        <?php echo $receipts[$i]['name_receipt']; ?> (<?php echo $receipts[$i]['count']; ?> порц)
                    </th>
                <?php endfor; ?>                  
            </tr> 
            <tr>
                <?php for ($i = 0; $i < count($receipts); $i++): ?>
                    <th style="border: 1px solid black;">на 1 порц.</th>
                    <th style="border: 1px solid black;">на <?php echo $receipts[$i]['count']; ?> порц.</th>
                <?php endfor; ?>                 
            </tr>
            <?php for ($i = 0; $i < count($requestProds); $i++): ?>
                <tr class="id-prod-<?php echo $requestProds[$i]['id_prod']; ?>">
                    <td style="border: 1px solid black;"><?php echo $i + 1; ?></td>
                    <td style="border: 1px solid black;"><?php echo $requestProds[$i]['name_prod']; ?></td>                
                    <td style="border: 1px solid black;"><?php echo $requestProds[$i]['id_prod']; ?></td>
                    <td style="border: 1px solid black;"><?php echo $requestProds[$i]['short_edizm']; ?></td>
                    <?php for ($j = 0; $j < count($receipts); $j++): ?>
                    <td style="border: 1px solid black;">
                        <?php for ($k = 0; $k < count($receiptProds); $k++): ?>
                            <?php if ($receiptProds[$k]['id_prod'] == $requestProds[$i]['id_prod'] && 
                                    $receiptProds[$k]['id_calc_receipt'] == $receipts[$j]['id']): ?>
                                <?php echo $receiptProds[$k]['summa']; ?>
                            <?php endif; ?>
                        <?php endfor; ?>
                    </td>
                    <td style="border: 1px solid black;">
                        <?php for ($k = 0; $k < count($receiptProds); $k++): ?>
                            <?php if ($receiptProds[$k]['id_prod'] == $requestProds[$i]['id_prod'] && 
                                    $receiptProds[$k]['id_calc_receipt'] == $receipts[$j]['id']): ?>
                                <?php echo $receiptProds[$k]['summa'] * $receiptProds[$k]['count']; ?>
                            <?php endif; ?>
                        <?php endfor; ?>
                    </td>                
                    <?php endfor; ?>  
                    <td style="border: 1px solid black;">
                        <?php echo $requestProds[$i]['count']; ?>
                    </td>
                    <td style="border: 1px solid black;">
                        <?php if ($requestProds[$i]['done'] > $requestProds[$i]['count']): 
                            echo $requestProds[$i]['done'] . ' <br><i style="color: red;"> Внимание! Необходим <a href="/sklad/ret/'.$idRequest.'">возврат</a> на излишек продукции!</i>'; 
                        else:
                            echo $requestProds[$i]['done'];   
                        endif; 
                        ?>
                    </td>
                </tr>
            <?php endfor; ?>
            <tr>
                <th style="border: 1px solid black;"></th>
                <th colspan="3" style="border: 1px solid black;">Итого</th>                
                <?php for ($i = 0; $i < count($receipts); $i++): ?>
                    <th style="border: 1px solid black;"><?php echo $receipts[$i]['output_weight']; ?></th>
                    <th style="border: 1px solid black;"><?php echo $receipts[$i]['output_weight'] * $receipts[$i]['count']; ?></th>
                <?php endfor; ?>   
                <th style="border: 1px solid black;"></th>
                <th style="border: 1px solid black;"></th>
            </tr>
        </table>        
    </div>
</div>

<?php require_once ROOT . '/views/layouts/footer.php'; ?>

