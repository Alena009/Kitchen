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
            <li><a href="/calculations/show/0">Список меню-калькуляций</a> <span class="divider">/</span></li>
            <li class="active">Просмотр калькуляции</li>            

        </ul>        
    </div> 
    <div class="row">       
        <!--Кнопки-->
        <div class="form-group">
            <input type="button" class="btn btn-primary" 
                   value="Выгрузить в Word" 
                   onclick="$('#show-calc-receipts').closest('div').wordExport('calculation #<?php echo $calculation[0]['id']; ?>')">  
            <input type="button" class="btn btn-success" 
                   value="Выгрузить в Excel" 
                   onclick="$('#show-calc-receipts').table2excel({filename: 'calculation #<?php echo $calculation[0]['id']; ?>'})">             
            <input type="button" class="btn btn-primary"
                   id="new-calc-create-request-prod"
                   value="Сформировать требование на продукты" 
                   data-id="<?php echo $calculation[0]['id']; ?>"
                   onclick="createRequest($(this).attr('data-id'))" 
                   <?php if ($calculation[0]['has_request']): echo 'disabled'; endif; ?>> 
            <a href="/calculations/updcalc/<?php echo $calculation[0]['id']; ?>" 
               class="btn btn-primary">Редактировать калькуляцию</a>                                  
        </div> 
        <hr>
        <div class="col-lg-12">
            <table class="table" id="show-calc-receipts">
                <tr>
                    <th colspan="5">Калькуляция № <?php echo $calculation[0]['id']; ?> на <?php echo $calculation[0]['date_calc']; ?></th>                        
                </tr>
                <tr>
                    <th></th>
                    <th>Организация</th>
                    <th>Блюдо</th>
                    <th>Колл-во порций</th>
                    <th>Выход</th>                        
                </tr>
                <?php for($i = 0; $i < count($calcReceipts); $i++): ?>
                    <tr style="border: 1px solid black;">
                        <td style="border: 1px solid black"><?php echo $calcReceipts[$i]['name_base']; ?></td>
                        <td style="border: 1px solid black"><?php echo $calcReceipts[$i]['name_org']; ?></td>
                        <td style="border: 1px solid black"><b><?php echo $calcReceipts[$i]['name_receipt']; ?></b><br>
                            <i>Ингредиенты: 
                                <?php for ($j = 0; $j < count($calcReceiptsProds); $j++): ?>
                                    <?php if ($calcReceiptsProds[$j]['id_calc_receipt'] == $calcReceipts[$i]['id']): ?>
                                        <?php echo $calcReceiptsProds[$j]['name_prod']; ?> 
                                        (<?php echo $calcReceiptsProds[$j]['netto_1']; ?>/<?php echo $calcReceiptsProds[$j]['netto_2']; ?>)                                                                                
                                    <?php endif; ?>
                                <?php endfor;?>
                            </i>
                        </td>
                        <td style="border: 1px solid black"><?php echo $calcReceipts[$i]['count']; ?></td>
                        <td style="border: 1px solid black"><?php echo $calcReceipts[$i]['output_weights']; ?></td>                            
                    </tr>               
                <?php endfor; ?>
                <tr>
                    <th colspan="5">Всего</th>                                               
                </tr>                     
                <?php for($i = 0; $i < count($totalReceipts); $i++): ?>
                    <tr>
                        <th></th>
                        <th></th>
                        <th><?php echo$totalReceipts[$i]['name_receipt']; ?></th>                    
                        <th><?php echo$totalReceipts[$i]['count']; ?></th>
                        <th></th>                        
                    </tr>          
                <?php endfor; ?>                   
            </table>                
        </div>
    </div>
</div>

<?php require_once ROOT . '/views/layouts/footer.php'; ?>