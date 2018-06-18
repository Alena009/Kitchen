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
            <?php if ($typeOper == 'add'): ?>
                <li class="active">Новая калькуляция</li>
            <?php elseif ($typeOper == 'showcalc'): ?>
                <li><a href="/calculations/show/0">Список меню-калькуляций</a> <span class="divider">/</span></li>
                <li class="active">Просмотр калькуляции</li>
            <?php elseif ($typeOper == 'updcalc'): ?>
                <li><a href="/calculations/show/0">Список меню-калькуляций</a> <span class="divider">/</span></li>
                <li class="active">Редактирование калькуляции</li>                
            <?php endif; ?>
        </ul>        
    </div> 
    <!--Заглавная часть калькуляции-->
    <div class="row">
        <table class="table table-bordered" id="head-calc">
                <thead>
                    <tr>
                        <th></th>
                        <?php if($typeOper == 'add'): ?>
                        <th>Меню-калькуляция на <input type="text" id="new-calc-date" class="form-control datepicker" style="display: inline-block; width: 100px;"></th>
                        <?php elseif ($typeOper == 'showcalc'): ?>
                            <th>Меню-калькуляция № <?php echo $calculation[0]['id']; ?> 
                                на <?php echo $calculation[0]['date_calc']; ?></th>
                        <?php elseif ($typeOper == 'updcalc'): ?>
                            <th>Меню-калькуляция № <?php echo $calculation[0]['id']; ?> 
                                на <?php echo $calculation[0]['date_calc']; ?></th>                            
                        <?php endif; ?>
                    </tr>
                </thead>   
                <tbody>
                    <?php if ($typeOper != 'showcalc'): ?>
                    <tr>
                        <td>Основание</td>
                        <td>
                            <?php foreach ($base as $key => $value): ?>
                            <input type="radio" value="<?php echo $value['id_dir_base']; ?>" 
                                   data-name="<?php echo $value['name_base']; ?>"
                                   name="basic" checked="true"
                                   class="new-calc-basics"><?php echo $value['name_base']; ?> /
                            <?php endforeach; ?>                                                     
                        </td>  
                    </tr>                     
                    <tr>
                        <td>Организация</td>
                        <td>
                            <?php foreach ($organizations as $key => $value): ?>
                            <input type="radio" value="<?php echo $value['id_dir_org']; ?>"
                                name="org" checked="true"
                                data-name="<?php echo $value['name_org']; ?>"
                                class="new-calc-orgs"><?php echo $value['name_org']; ?> /
                            <?php endforeach; ?>
<!--                            <input type="checkbox" value="0"
                                   id="total-orgs" checked="true">Все /                            -->
                        </td>
                    </tr> 
                    <?php endif; ?>
                </tbody>                
        </table>
    </div>

    <!--Основная часть калькуляции-->
    <div class="row">       
        <div class="col-lg-3">
            <div id="tabbable" 
                 style="max-height: 600px; min-height: 600px; overflow-y: auto; background: lightsalmon;">
                <ul class="nav nav-tabs">
                    <li><a href="#tab-list-receipts" data-toggle="tab">Блюда</a></li>
                    <li><a href="#tab-list-menus" data-toggle="tab">Меню</a></li>
                </ul>        
                <div class="tab-content">
                    <!--Список блюд-->                
                    <div id="tab-list-receipts" class="tab-pane active">
                        <div class="tabbable">                       
                            <ul class="nav nav-tabs">                        
                            <?php for($i = 0; $i < count($allCatReceipts); $i++): ?>
                                <li><a href="#id-categ-receipt-<?php echo $allCatReceipts[$i]['id']; ?>" data-toggle="tab">
                                        <?php echo $allCatReceipts[$i]['name_categ_receipt']; ?>
                                    </a>
                                </li>
                            <?php endfor; ?>
                            </ul>  
                            <div class="tab-content">
                                <?php for($j = 0; $j < count($allCatReceipts); $j++): ?>                       
                                <div class="tab-pane" id="id-categ-receipt-<?php echo $allCatReceipts[$j]['id']; ?>">
                                    <?php for($k = 0; $k < count($allReceipts); $k++): ?>
                                        <?php if ($allReceipts[$k]['id_categ_receipt'] == $allCatReceipts[$j]['id']):?>
                                            <div class="mini-button new-calc-receipts" 
                                                 data-id="<?php echo $allReceipts[$k]['id']; ?>"
                                                 data-name="<?php echo $allReceipts[$k]['name_receipt']; ?>"
                                                 data-output-1="<?php echo $allReceipts[$k]['output_weight_1']; ?>"
                                                 data-output-2="<?php echo $allReceipts[$k]['output_weight_2']; ?>"
                                                 onclick="addReceiptToNewCalc(this)">
                                                <?php echo $allReceipts[$k]['name_receipt']; ?>
                                            </div>
                                        <?php endif;?>
                                    <?php endfor; ?>
                                </div>
                                <?php endfor; ?>
                            </div>
                        </div>
                    </div>                

                    <!--Список меню-->                                
                    <div id="tab-list-menus" class="tab-pane">
                        <div class="tabbable">
                            <ul class="nav nav-tabs">
                                <?php for ($im = 0; $im < count($allMenus); $im++): ?>
                                <li><a href="#id-menu-<?php echo $allMenus[$im]['id']; ?>" data-toggle="tab">
                                        <?php echo $allMenus[$im]['name_menu']; ?>
                                    </a>
                                </li>
                                <?php endfor; ?>
                            </ul>
                            <div class="tab-content">
                                <?php for ($im = 0; $im < count($allMenus); $im++): ?>
                                <div class="tab-pane" id="id-menu-<?php echo $allMenus[$im]['id']; ?>">
                                    <table class="table table-bordered"> 
                                    <?php for ($jm = 0; $jm < count($allMenusReceipts); $jm++): ?>
                                        <?php if ($allMenusReceipts[$jm]['id_menu'] == $allMenus[$im]['id']): ?>
                                            <tr data-id="<?php echo $allMenusReceipts[$jm]['id_receipt']; ?>"
                                                data-name="<?php echo $allMenusReceipts[$jm]['name_receipt']; ?>"
                                                data-output-1="<?php echo $allMenusReceipts[$jm]['output_weight_1']; ?>"
                                                data-output-2="<?php echo $allMenusReceipts[$jm]['output_weight_2']; ?>">
                                                <td>
                                                    <?php echo $allMenusReceipts[$jm]['name_receipt']; ?>
                                                </td>
                                            </tr>                                
                                        <?php endif; ?>
                                    <?php endfor; ?>
                                            <tr>
                                                <td>
                                                    <a href="#" class="btn btn-primary" 
                                                       data-id="<?php echo $allMenus[$im]['id']; ?>"
                                                       onclick="useMenu(event)">Применить</a>
                                                </td>
                                            </tr>
                                    </table>                            
                                </div>
                                <?php endfor; ?>  
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-9">
            <div style="overflow-y: auto; max-height: 600px;">
            <?php if ($typeOper == 'updcalc'): ?>
                <table class="table table-bordered" id="new-calc-receipts">
                    <tr>
                        <th></th>
                        <th></th>
                        <th>Блюдо</th>
                        <th>Ингредиенты</th>
                        <th>Выход</th>
                        <th>Колл-во порций</th>
                        <th></th>
                    </tr>
                    <?php for ($i = 0; $i < count($calcReceipts); $i++): ?>
                    <tr id="<?php echo $calcReceipts[$i]['id_receipt']; ?>" class="tr-receipts">
                        <td class="basics" id="<?php echo $calcReceipts[$i]['id_basic']; ?>">
                            <?php echo $calcReceipts[$i]['name_base']; ?>
                        </td>
                        <td class="orgs" id="<?php echo $calcReceipts[$i]['id_org']; ?>">     
                            <?php echo $calcReceipts[$i]['name_org']; ?>
                        </td>
                        <td>
                            <?php echo $calcReceipts[$i]['name_receipt']; ?>
                        </td>
                        <td>
                            <a href="#" onclick="hideShowElem($(this).next())" class="glyphicon glyphicon-eye-open">Ингредиенты</a>
                            <table class="table table-bordered new-calc hidden" 
                                   id="receipt-ingr-<?php echo $calcReceipts[$i]['id_receipt']; ?>"
                                   data-id="<?php echo $calcReceipts[$i]['id_receipt']; ?>">
                                <tr>
                                    <th>Продукт</th>
                                    <th>Брутто, г</th>
                                    <th>Нетто, г</th>
                                    <th>Брутто, г</th>
                                    <th>Нетто, г</th>
                                    <th></th>
                                </tr>                                
                            <?php for ($j = 0; $j < count($calcReceiptsProds); $j++): ?>
                                <?php if ($calcReceiptsProds[$j]['id_calc_receipt'] == $calcReceipts[$i]['id']): ?>
                                <tr id="<?php echo $calcReceiptsProds[$j]['id_prod']; ?>">
                                    <td><?php echo $calcReceiptsProds[$j]['name_prod']; ?></td>
                                    <td class="brutto-1">
                                        <input type="text" class="brutto-1" 
                                               value="<?php echo $calcReceiptsProds[$j]['brutto_1']; ?>" 
                                               style="width: 50px;">
                                    </td>
                                    <td class="netto-1">
                                        <input type="text" class="netto-1" 
                                               value="<?php echo $calcReceiptsProds[$j]['netto_1']; ?>" 
                                               style="width: 50px;">
                                    </td>
                                    <td class="brutto-2">
                                        <input type="text" class="brutto-2" 
                                               value="<?php echo $calcReceiptsProds[$j]['brutto_2']; ?>" 
                                               style="width: 50px;">
                                    </td>
                                    <td class="netto-2">
                                        <input type="text" class="netto-2" 
                                               value="<?php echo $calcReceiptsProds[$j]['netto_2']; ?>" 
                                               style="width: 50px;">
                                    </td>
                                    <td>
                                        <a href="#" class="glyphicon glyphicon-remove remove-row" title="Удалить из списка"></a>
                                    </td>                                            
                                </tr>  
                                <?php endif; ?>
                            <?php endfor; ?>
                            <tr class="summary-weight" style="font-weight: bold;">
                                <td>Выход</td>
                                <td></td>
                                <td class="summary-netto-1"><?php echo $calcReceipts[$i]['output_1']; ?></td>
                                <td></td>
                                <td class="summary-netto-2"><?php echo $calcReceipts[$i]['output_2']; ?></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#" class="glyphicon glyphicon-plus new-calc-add-ingr" 
                                       data-id="<?php echo $calcReceipts[$i]['id_receipt']; ?>"
                                       onclick="addIngredientsNewCalc(event)">Добавить ингредиенты</a>
                                </td>
                            </tr>                                
                            </table>
                        </td>
                        <td><input type="text" value="<?php echo $calcReceipts[$i]['output_weights']; ?>" 
                                   style="width: 70px;" class="output-weights" disabled></td>
                        <td><input type="text" value="<?php echo $calcReceipts[$i]['count']; ?>" 
                                   style="width: 50px;" class="count-servings"></td>
                        <td>
                            <a href="#" class="glyphicon glyphicon-remove remove-row" title="Удалить из списка"></a>
                        </td>
                    </tr>                        
                    <?php endfor; ?>
                </table>
            <?php else: ?>
                <table class="table table-bordered" id="new-calc-receipts">
                    <tr>
                        <th></th>
                        <th></th>
                        <th>Блюдо</th>
                        <th>Ингредиенты</th>
                        <th>Выход</th>
                        <th>Колл-во порций</th>
                        <th></th>
                    </tr>
                </table>            
            <?php endif; ?>
            </div>
            <hr>
            <!--Кнопки-->
            <div class="form-group">
                <?php if ($typeOper == 'updcalc'): ?>
                <input type="button" class="btn btn-success" 
                       value="Сохранить изменения" 
                       data-id="<?php echo $calculation[0]['id']; ?>"
                       onclick="saveUpdCalculation($(this).attr('data-id'))">  
                <?php else: ?>
                <input type="button" class="btn btn-success" 
                       value="Сохранить калькуляцию" 
                       onclick="saveNewCalculation()">                  
                <?php endif; ?>
                <input type="button" class="btn btn-danger oper-cancel" 
                       id="new-calc-cancel"
                       value="Отмена" 
                       onclick="resetTable('new-calc-receipts')">
            </div>             
        </div>        
    </div>    
 
<!--Модальное окно для добавления ингредиентов-->
<?php include ROOT . '/views/layouts/addModal.php'; ?>
</div>

<?php require_once ROOT . '/views/layouts/footer.php'; ?>

