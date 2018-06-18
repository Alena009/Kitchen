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
            <li class="active">Список калькуляций</li>
        </ul>        
    </div> 
    <div class="row" style="overflow-y: auto; max-height: 800px;">
        <table class="table table-bordered" id="head-calc">
                <thead>
                    <tr>
                        <th></th>
                        <th colspan="5">Калькуляции</th>
                        <th colspan="2"><a class="glyphicon glyphicon-plus" style="color: white; font-weight: bold"
                                           href="/calculations/add">Создать меню-калькуляцию</a></th>
                    </tr>
                    <tr>
                        <th>№</th>
                        <th>Дата кальк.</th>
                        <th>Просмотр</th>
                        <th>Редактировать</th>
                        <th>Требования на продукты</th>
                        <th>Выдачи продуктов</th>
                        <th>Возвраты продуктов</th>
                        <th>Удалить</th>
                    </tr>                    
                </thead>   
                <tbody>
                    <?php for ($i = 0; $i < count($listCalculations); $i++): ?>
                    <tr id="<?php echo $listCalculations[$i]['id']; ?>">
                        <td><?php echo $listCalculations[$i]['id']; ?></td>
                        <td><?php echo $listCalculations[$i]['date_calc']; ?></td>
                        <td><a href="/calculations/showcalc/<?php echo $listCalculations[$i]['id']; ?>" 
                               class="glyphicon glyphicon-eye-open show-calculation"                                
                               title="Просмотр калькуляции"></a></td>
                        <td>
                            <a href="/calculations/updcalc/<?php echo $listCalculations[$i]['id']; ?>" 
                            class="glyphicon glyphicon-pencil update-calculation" 
                            title="Редактировать калькуляцию">Редактировать</a><br>                             
                            <?php if ($listCalculations[$i]['has_request']): ?>
                                <?php if ($listCalculations[$i]['confirm'] == 0): ?>                             
                                    <i>Обратите внимание! Под данную калькуляцию есть требование 
                                        <a href="/calculations/showrequest/<?php echo $listCalculations[$i]['has_request']; ?>">
                                            <b>#<?php echo $listCalculations[$i]['has_request']; ?></b>
                                        </a>.  
                                    </i>
                                <?php else: ?>
                                    <i>Обратите внимание! Под данную калькуляцию есть требование 
                                        <a href="/calculations/showrequest/<?php echo $listCalculations[$i]['has_request']; ?>">
                                            <b>#<?php echo $listCalculations[$i]['has_request']; ?></b>
                                        </a> и выдачи продуктов.
                                    </i>                            
                                <?php endif; ?>
                            <?php endif; ?>
                        </td>                           
                        <td>
                            Требование № <?php echo $listCalculations[$i]['has_request']; ?>
                            <hr>
                            <?php if ($listCalculations[$i]['has_request']): ?>
                                <a href="/calculations/showrequest/<?php echo $listCalculations[$i]['has_request']; ?>" 
                                   class="glyphicon glyphicon-eye-open show-request" 
                                   title="Просмотреть требование на продукты по данной калькуляции">
                                    Просмотр
                                </a>
                                <?php if (!$listCalculations[$i]['removes'] && !$listCalculations[$i]['rets']): ?>
                                    <a href="#" onclick="deleteRequest(<?php echo $listCalculations[$i]['has_request']; ?>)" 
                                       class="glyphicon glyphicon-remove" 
                                       title="Удалить требование">
                                        Удалить
                                    </a> 
                                <?php endif; ?>
                            <?php else: ?>
                                <a href="#" class="glyphicon glyphicon-list-alt create-request" 
                                   data-id="<?php echo $listCalculations[$i]['id']; ?>"
                                   onclick="createRequest($(this).attr('data-id'))"
                                   title="Сформировать требование на продукты по данной калькуляции">
                                   Сформировать
                                </a>
                            <?php endif; ?>
                        </td>
                        <td>
                            <?php if ($listCalculations[$i]['has_request']): ?>
                                <?php if ($listCalculations[$i]['confirm'] != 1): ?>
                                    <a href="/sklad/rem/<?php echo $listCalculations[$i]['has_request']; ?>" 
                                       class="glyphicon glyphicon-pencil" 
                                       title="Выдать продукты по данному требованию">
                                        Выдать продукты
                                    </a>  
                                <?php else: ?>
                                    Все продукты выданы
                                <?php endif; ?>  
                                <hr>
                                <?php if ($listCalculations[$i]['removes']): ?>
                                    <a href="/calculations/listremoves/<?php echo $listCalculations[$i]['has_request']; ?>" class="glyphicon glyphicon-eye-open">Просмотр</a>
                                <?php else: ?>
                                    Нет выдач
                                <?php endif; ?>                                 
                            <?php endif; ?>
                        </td>
                        <td>
                            <?php if ($listCalculations[$i]['has_request']): ?>
                                <?php if ($listCalculations[$i]['rets']): ?>
                                    <a href="/calculations/listreturns/<?php echo $listCalculations[$i]['has_request']; ?>" class="glyphicon glyphicon-eye-open">Просмотр</a>
                                <?php else: ?>
                                    Нет возвратов. 
                                <?php endif; ?> 
                                <hr>
                                <?php if ($listCalculations[$i]['removes']): ?>
                                    <a href="/sklad/ret/<?php echo $listCalculations[$i]['has_request']; ?>" class="glyphicon glyphicon-pencil">Вернуть продукты?</a>

                                <?php endif; ?>                            
                            <?php endif; ?>
                        </td>
                        <td rowspan="2">
                            <a href="#" class="glyphicon glyphicon-remove remove-row"
                               data-id="<?php echo $listCalculations[$i]['id']; ?>"
                               title="Удалить" onclick="deleteCalculation(event); $(this).closest('tr').next('tr').addClass('hidden');"></a>                            
                        </td>
                    </tr>
                    <tr>
                        <td colspan="7">
                            <a href="#" onclick="showCalcHistory(<?php echo $listCalculations[$i]['id']; ?>);
                                                             showHideHelpBlock($(this).next())" 
                                                             class="glyphicon glyphicon-plus">
                                История движения продуктов по калькуляции № <?php echo $listCalculations[$i]['id']; ?>
                            </a>
                            <div class="help" id="calc-history-<?php echo $listCalculations[$i]['id']; ?>"></div>
                        </td>  
                    </tr>
                    <?php endfor; ?>
                </tbody>                
        </table>          
    </div>
</div>

<?php require_once ROOT . '/views/layouts/footer.php'; ?>

