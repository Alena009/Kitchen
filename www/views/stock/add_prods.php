<?php
/*
 * Главный вид раздела "Склад"
 */
require_once ROOT . '/views/layouts/header.php';
?>

<div class="container sklad">
    <div class="row">
        <ul class="breadcrumb">
            <li><a href="/">На главную</a> <span class="divider">/</span></li>
            <li><a href="/sklad/">Операции по складу</a> <span class="divider">/</span></li>
            <li><a href="/sklad/showlist/2">Приход на склад</a> <span class="divider">/</span></li>
            <li class="active">Новая операция</li>
        </ul>        
    </div>
    <div class="row">
        <table class="table table-bordered" id="head-act">                         
            <tr>                        
                <th colspan="2">Приходная накладная № <?php echo $numNakl; ?>  от <?php echo date("Y-m-d"); ?> </th>
            </tr>
            <tr>
                <td>Склад</td>
                <td>
                    <select id="list-stock-1" name="list-stock-1">         
                        <?php foreach ($stocks as $key => $value): ?>
                            <option value="<?php echo $value['id_dir_stock']; ?>"><?php echo $value['name_stock']; ?></option>
                        <?php endforeach; ?>
                    </select>                                
                </td>
            </tr>  
            <tr>
                <td>Счет</td>
                <td>
                    <select id="list-score" name="list-score">                        
                        <?php foreach ($score as $key => $value): ?>
                            <option value="<?php echo $value['id_dir_score']; ?>"><?php echo $value['num_score']; ?></option>
                        <?php endforeach; ?>
                    </select>                                
                </td>                  
            </tr>
        </table>
    </div>
    <div class="row">
        <div class="col-lg-5">
            <p style="font-weight:bold;">
                Продукты
                <a href="#" class="glyphicon glyphicon-question-sign" 
                   onclick="showHideHelpBlock($(this).closest('p').next());"></a>                                
            </p> 
            <div class="help">
                <i>Для добавления продуктов в список, двойной клик на продукт или перетащить продукт в список продуктов.
                    Если нужного продукта нет в справочнике, то его нужно 
                    <a href="/directory/" style="color: red;">добавить в справочник продуктов</a>.</i>
                <img style="height: 30px; width: 60px;" src="/images/strelka.png">
            </div>
            <div class="tabbable row" style=" background: lightsalmon; min-height: 500px; max-height: 500px; overflow-y: auto;">
                <ul class="nav nav-tabs"> 
                    <li class="active">
                        <a href="#all" data-toggle="tab">Все</a>
                    </li>
                    <?php for ($k = 0; $k < count($listProdCateg); $k++): ?>
                        <li>
                            <a href="#<?php echo $listProdCateg[$k]['id']; ?>" data-toggle="tab">
                                <?php echo $listProdCateg[$k]['name_category']; ?>
                            </a>
                        </li>                
                    <?php endfor; ?>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="all">
                        <?php for ($q = 0; $q < count($prods); $q++): ?>        
                            <div class="row mini mini-prods <?php if ($typeStockOper == 'ret' || $typeStockOper == 'out'): echo 'hidden'; endif;?>" draggable="true"                                 
                                 ondragstart="return dragStart(event)" 
                                 ondragend="return dragEnd(event)"                                              
                                 data-id="<?php echo $prods[$q]["iddir_prod"]; ?>"
                                 data-price="<?php echo $prods[$q]["price"]; ?>" 
                                 data-amount="<?php echo $prods[$q]["amount"]; ?>"
                                 data-prod-name="<?php echo $prods[$q]["name_prod"]; ?>"
                                 data-stock="<?php echo $prods[$q]["id_dir_stock"]; ?>"
                                 data-ed-izm="<?php echo $prods[$q]["short_edizm"]; ?>"
                                 data-num-part="<?php echo $prods[$q]["num_part"]; ?>"
                                 data-num-request="<?php echo $prods[$q]["id_request"]; ?>"
                                 ondblclick="addProd(this)">                                
                                    <div class="col-lg-8">
                                        <p class="name-prod" style="font-weight: bold;"><?php echo $prods[$q]["name_prod"]; ?>, 
                                            <i class="ed-izm"><?php echo $prods[$q]["short_edizm"]; ?></i>
                                        </p>                                                        
                                    </div>
                                    <div class="col-lg-4">
                                        <img src="<?php echo $prods[$q]["img_prod"]; ?>" alt="product">
                                    </div>                                                                   
                            </div>                          
                        <?php endfor; ?>
                    </div>
                    <?php for ($t = 0; $t < count($listProdCateg); $t++): ?>  
                    <div class="tab-pane" 
                         id="<?php echo $listProdCateg[$t]['id']; ?>">
                        <?php for ($q = 0; $q < count($prods); $q++): ?>
                            <?php if ($prods[$q]['id_category_prod'] == $listProdCateg[$t]['id']): ?>
                                <div class="row mini mini-prods <?php if ($typeStockOper == 'ret' || $typeStockOper == 'out'): echo 'hidden'; endif;?>" draggable="true"                                      
                                     ondragstart="return dragStart(event)" 
                                     ondragend="return dragEnd(event)"                                              
                                     data-id="<?php echo $prods[$q]["iddir_prod"]; ?>"
                                     data-price="<?php echo $prods[$q]["price"]; ?>" 
                                     data-amount="<?php echo $prods[$q]["amount"]; ?>"
                                     data-prod-name="<?php echo $prods[$q]["name_prod"]; ?>"
                                     data-stock="<?php echo $prods[$q]["id_dir_stock"]; ?>"
                                     data-ed-izm="<?php echo $prods[$q]["short_edizm"]; ?>"
                                     data-num-part="<?php echo $prods[$q]["num_part"]; ?>"
                                     data-num-request="<?php echo $prods[$q]["id_request"]; ?>"
                                     ondblclick="addProd(this)">                                    
                                    <div class="col-lg-8">
                                        <p class="name-prod" style="font-weight: bold;"><?php echo $prods[$q]["name_prod"]; ?>, 
                                            <i class="ed-izm"><?php echo $prods[$q]["short_edizm"]; ?></i>
                                        </p>                                                        
                                    </div>
                                    <div class="col-lg-4">
                                        <img src="<?php echo $prods[$q]["img_prod"]; ?>" alt="product">
                                    </div>                                  
                                </div>
                            <?php endif; ?>
                        <?php endfor; ?>
                    </div>
                    <?php endfor; ?>
                </div>
            </div> 
        </div>
        <div class="col-lg-7">
            <p style="font-weight:bold;">
                Список продуктов
                <a href="#" class="glyphicon glyphicon-question-sign" 
                   onclick="showHideHelpBlock($(this).closest('p').next());"></a>                  
            </p>
            <div class="help">
                <i>Список продуктов, которые поступают, выдаются или списываются со склада</i>
            </div>  
            <div style="min-height: 500px; max-height: 500px; overflow-y: auto;">
                <table class="table table-bordered" id="table-act"  ondragenter="return dragEnter(event)"
                 ondragleave="return dragLeave(event)">
                    <tr id="0">
                        <th>Продукт</th>
                        <th>Ед.изм.</th>
                        <th>Склад</th>
                        <th>Цена</th>
                        <th>Количество</th>
                        <th>Сумма</th>
                        <th></th>
                    </tr>
                    <!--Таблица заполняется посредством скрипта script.js-->
                    <tr id="summaryRow">
                        <th></th>
                        <th>Итого</th>
                        <th></th>
                        <th></th>
                        <th id="td-count-value">0.00</th>
                        <th id="td-summa-value">0.00</th>                         
                        <th><a href="#" class="glyphicon glyphicon-refresh" style="color: white;" onclick="event.preventDefault()"></a>
                        </th>
                    </tr>
                </table> 
            </div>
        </div>    
        <div class="row" style="background: white;">
            <div class="col-lg-5 col-md-5" style="border-top: 1px dotted grey;">
                <?php if ($typeStockOper == 'ret'): ?>
                <input type="button" class="btn btn-success" value="Вернуть все" 
                       onclick="prepareProds();">                
                <?php endif; ?>
            </div>
            <div class="col-lg-7 col-md-7" style="border-top: 1px dotted grey;">
                <div class="form-group">
                <input type="button" class="btn btn-success" value="Сохранить" onclick="readAndSaveData('table-act', 'add')">                
                <input type="button" class="btn btn-danger oper-cancel" value="Отмена" 
                       onclick="resetTable('table-act'); recalcSummaryRow('table-act');">
                </div>                              
            </div>
        </div> 
    </div>
</div>    

<?php require_once ROOT . '/views/layouts/footer.php'; ?>    