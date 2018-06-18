<?php
/*
 * Вид раздела "Список калькуляций"
 */
require_once ROOT . '/views/layouts/header.php';
?>

<div class="container calculation">
    <div>
        <ul class="breadcrumb">
            <li><a href="/">На главную</a> <span class="divider">/</span></li>
            <li><a href="/calculations/">Меню-калькуляции</a> <span class="divider">/</span></li>
            <li class="active">Список требований на продукты</li>
        </ul>        
    </div> 
    <div class="row">
        <div class="col-lg-12" style="overflow-y: auto; overflow-x: auto;">
            <table class="table table-bordered" id="head-calc">
                    <thead>
                        <tr>
                            <th></th>
                            <th colspan="3">Список требований на продукты</th>
                            <th>
                                <b>
                                    <a href="#" class="glyphicon glyphicon-plus" 
                                       onclick="hideShowElem($(this).closest('tr').next('tr'));" 
                                       style="color: white;">
                                        Создать требование
                                    </a>
                                </b>
                            </th>
                        </tr>
                        <tr class="hidden">
                            <td></td>
                            <td colspan="3">
                                Выберите калькуляцию, на основе которой будет создано требование 
                                <select>
                                    <?php for ($i = 0; $i < count($listCalculations); $i++): ?>
                                    <option value="<?php echo $listCalculations[$i]['id']; ?>">
                                        <?php echo $listCalculations[$i]['id']; ?>
                                    </option>
                                    <?php endfor;?>
                                </select>
                            </td>                    
                            <td>
                                <input type="button" class="btn btn-success"                                        
                                       value="Создать" onclick="createRequest($(this).closest('td').prev('td').find('select :selected').val());">
                            </td>
                        </tr>
                        <tr>
                            <th>Номер требования</th>
                            <th>Дата требования</th>
                            <th>Выдачи по требованию</th>
                            <th>Номер калькуляции</th>
                            <th>Просмотр</th>
                        </tr>                    
                    </thead>   
                    <tbody>
                        <?php for ($i = 0; $i < count($listRequests); $i++): ?>
                        <tr id="<?php echo $listRequests[$i]['id']; ?>">
                            <td><?php echo $listRequests[$i]['id']; ?></td>
                            <td><?php echo $listRequests[$i]['date_request']; ?></td>
                            <td>
                                <?php if ($listRequests[$i]['confirm'] == 1): ?>
                                    <i>По данному требованию были выданы продукты со склада по следующим накладным: </i>
                                    <?php for ($j = 0; $j < count($listStockOper); $j++): ?>
                                        <?php if ($listStockOper[$j]['id_request'] == $listRequests[$i]['id']): ?>
                                            <a href="/calculations/showremove/<?php echo $listStockOper[$j]['id_stock_oper']; ?>">
                                                <?php echo $listStockOper[$j]['id_stock_oper']; ?> от 
                                                <?php echo $listStockOper[$j]['dt_oper']; ?>
                                            </a>, 
                                        <?php endif; ?>
                                    <?php endfor; ?>
                                <?php else: ?>
                                    <i>По данному требованию выдачи продуктов со склада еще небыло.</i>    
                                <?php endif; ?>
                            </td>
                            <td><a href="/calculations/showcalc/<?php echo $listRequests[$i]['id_calc']; ?>">
                                <?php echo $listRequests[$i]['id_calc']; ?></a></td>
                            <td><a href="/calculations/showrequest/<?php echo $listRequests[$i]['id']; ?>" 
                                   class="glyphicon glyphicon-eye-open show-request"                                
                                   title="Просмотр"></a>
                            </td>                        
                        </tr>
                        <?php endfor; ?>
                    </tbody>                
            </table>   
        </div>
    </div>
</div>

<?php require_once ROOT . '/views/layouts/footer.php'; ?>

