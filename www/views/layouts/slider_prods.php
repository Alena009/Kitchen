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
            <li class="active"><?php
                if ($typeStockOper == 'add'): echo "Приход на склад";
                elseif ($typeStockOper == 'rem'): echo "Выдача со склада";
                elseif ($typeStockOper == 'ret'): echo "Возврат неиспользованной продукции";
                elseif ($typeStockOper == 'out'): echo "Списание испорченной продукции";
                endif;
                ?></li>
        </ul>        
    </div>
    <div class="row">
        <?php if ($typeStockOper == 'add'): ?>
 
        <?php elseif ($typeStockOper == 'ret'): ?>
            <table class="table table-bordered" id="head-act">                         
                <tr>                        
                    <th colspan="2">Возврат № <?php echo $numNakl; ?>  от <?php echo date("Y-m-d"); ?> </th>
                </tr>
                <tr>
                    <td>Требование</td>
                    <td>
                        <select id="list-requests-1" name="list-requests-1">
                            <option value="0">Все</option>
                            <?php foreach ($requests as $key => $value): ?>
                                <option value="<?php echo $value['id']; ?>">
                                    <?php echo $value['id']; ?> - 
                                    <?php echo $value['date_request']; ?>
                                </option>
                            <?php endforeach; ?>
                        </select>
                    </td>
                </tr> 
                <tr>
                    <td>Счет</td>
                    <td>
                        <select id="list-score" name="list-score">
                            <option value="0">Все</option>
                            <?php foreach ($score as $key => $value): ?>
                                <option value="<?php echo $value['id_dir_score']; ?>"><?php echo $value['num_score']; ?></option>
                            <?php endforeach; ?>
                        </select>                                
                    </td>                  
                </tr>                  
            </table> 
        <?php elseif ($typeStockOper == 'out'): ?>   
            <table class="table table-bordered" id="head-act">                         
                <tr>                        
                    <th colspan="3">Списание № <?php echo $numNakl; ?>  от <?php echo date("Y-m-d"); ?> </th>
                </tr>
                <tr>
                    <td>Склад</td>
                    <td>
                        <select id="list-stock" name="list-stock">
                            <option value="0">Все</option>
                            <?php foreach ($stocks as $key => $value): ?>
                                <option value="<?php echo $value['id_dir_stock']; ?>"><?php echo $value['name_stock']; ?></option>
                            <?php endforeach; ?>
                        </select>                                
                    </td>
                    <td rowspan="2">
                        <i>Причина</i><br>
                        <textarea id="reason-remove"></textarea>
                    </td>                    
                </tr>
                <tr>
                    <td>Счет</td>
                    <td>
                        <select id="list-score" name="list-score">
                            <option value="0">Все</option>
                            <?php foreach ($score as $key => $value): ?>
                                <option value="<?php echo $value['id_dir_score']; ?>"><?php echo $value['num_score']; ?></option>
                            <?php endforeach; ?>
                        </select>                                
                    </td>                  
                </tr>                  
            </table>         
        <?php endif; ?>
    </div>
    
    <div class="row" id="slider-prods">        
    <?php if ($typeStockOper == 'rem'): ?> 
        <div class="col-lg-12">
            <div id="tabs-in-sliderprods">
                <ul>
                    <li><a href="#requests-prods">Выдача на основании требования на продукты</a></li>
                    <li><a href="#stock-prods">Дополнительная выдача со склада</a></li>
                </ul>                
                <div id="stock-prods">
                    <table class="table table-bordered" id="head-act">
                        <thead>
                            <tr>                        
                                <th colspan="3">Выдача № <?php echo $numNakl; ?>  от <?php echo date("Y-m-d"); ?></th>
                            </tr>
                        </thead>   
                        <tbody> 
                            <tr>
                                <td>Требование</td>
                                <td>
                                    <select id="list-requests" name="list-requests">
                                        <option value="0">Все</option>
                                        <?php foreach ($requests as $key => $value): ?>
                                            <option value="<?php echo $value['id']; ?>">
                                                <?php echo $value['id']; ?> - 
                                                <?php echo $value['date_request']; ?>
                                            </option>
                                        <?php endforeach; ?>
                                    </select>
                                </td>
                                <td rowspan="5">
                                    <i>Причина</i><br>
                                    <textarea id="reason-remove"></textarea>
                                </td>
                            </tr>                            
                            <tr>
                                <td>Организация</td>
                                <td>
                                    <select id="list-organizations" name="list-organizations">
                                        <option value="0">Все</option>
                                        <?php foreach ($organizations as $key => $value): ?>
                                            <option value="<?php echo $value['id_dir_org']; ?>"><?php echo $value['name_org']; ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </td>
                            </tr> 
                            <tr>
                                <td>Основание</td>
                                <td>
                                    <select id="list-base" name="list-base">
                                        <option value="0">Все</option>
                                        <?php foreach ($base as $key => $value): ?>
                                            <option value="<?php echo $value['id_dir_base']; ?>"><?php echo $value['name_base']; ?></option>
                                        <?php endforeach; ?>
                                    </select>                                
                                </td>               
                            </tr>
                            <tr>
                                <td>Склад</td>
                                <td>
                                    <select id="list-stock" name="list-stock">
                                        <option value="0">Все</option>
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
                                        <option value="0">Все</option>
                                        <?php foreach ($score as $key => $value): ?>
                                            <option value="<?php echo $value['id_dir_score']; ?>"><?php echo $value['num_score']; ?></option>
                                        <?php endforeach; ?>
                                    </select>                                
                                </td>                  
                            </tr>                  
                        </tbody>                        
                    </table>
                    <div class="row" style="background: white;">
                        <div class="col-lg-5 col-md-5" style="background: white;">
                            <p style="font-weight:bold;">
                                Склад
                                <a href="#" class="glyphicon glyphicon-question-sign" 
                                   onclick="showHideHelpBlock($(this).closest('p').next());"></a>                                
                            </p> 
                            <div class="help">
                                <i>Для добавления продуктов в список, двойной клик на продукт или перетащить продукт в список продуктов</i>
                                <img style="height: 30px; width: 60px;" src="/images/strelka.png">
                            </div>
                            </p>                 
                            <div class="tabbable" style=" background: lightsalmon; min-height: 500px; max-height: 500px; overflow-y: auto;"> <!-- Only required for left/right tabs -->
                                <ul class="nav nav-tabs">
                                    <li calss="active">
                                        <a href="#0" data-toggle="tab">Все</a>
                                    </li>
                                    <?php for ($k = 0; $k < count($listProdCateg); $k++): ?>
                                        <li>
                                            <a href="#<?php echo $listProdCateg[$k]['id']; ?>" data-toggle="tab"><?php echo $listProdCateg[$k]['name_category']; ?></a>
                                        </li>                
                                    <?php endfor; ?>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="0">
                                        <?php for ($q = 0; $q < count($prods); $q++): ?> 
                                        <?php if ($prods[$q]["amount"] != 0): ?>
                                            <div class="row mini mini-prods hidden" draggable="true" ondragstart="return dragStart(event)" 
                                                 ondragend="return dragEnd(event)"                                              
                                                 data-id="<?php echo $prods[$q]["iddir_prod"]; ?>"
                                                 data-price="<?php echo $prods[$q]["price"]; ?>" 
                                                 data-amount="<?php echo $prods[$q]["amount"]; ?>"
                                                 data-prod-name="<?php echo $prods[$q]["name_prod"]; ?>"
                                                 data-stock="<?php echo $prods[$q]["id_dir_stock"]; ?>"
                                                 data-ed-izm="<?php echo $prods[$q]["short_edizm"]; ?>"
                                                 data-num-part="<?php echo $prods[$q]["num_part"]; ?>"
                                                 ondblclick="addProd(this)">
                                                <div class="col-lg-5 col-md-5 col-sm-5">
                                                    <i class="name-prod" style="font-weight: bold;">
                                                        <?php echo trim($prods[$q]["name_prod"]); ?>, 
                                                        <i class="ed-izm"><?php echo trim($prods[$q]["short_edizm"]); ?></i>
                                                    </i> 
                                                    <p style="font-size: 12px;">
                                                        <i>Цена: <?php echo $prods[$q]["price"]; ?> грн.</i><br>
                                                        <i>Партия: <?php echo $prods[$q]["num_part"]; ?></i><br>
                                                        <i>Доступное колл-во: <?php echo $prods[$q]["amount"]; ?></i>
                                                    </p>                                             
                                                </div>
                                                <div class="col-lg-3 col-md-3 col-sm-3">
                                                    <?php echo trim($prods[$q]["name_stock"]); ?>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4">
                                                    <img src="<?php echo $prods[$q]["img_prod"]; ?>" alt="product">
                                                </div>
                                            </div>  
                                        <?php endif; ?>
                                        <?php endfor; ?>
                                    </div>                                    
                                    <?php for ($t = 0; $t < count($listProdCateg); $t++): ?>                                          
                                        <div class="tab-pane" id="<?php echo $listProdCateg[$t]['id']; ?>">
                                                <?php for ($q = 0; $q < count($prods); $q++): ?>
                                                    <?php if ($prods[$q]['id_category_prod'] == $listProdCateg[$t]['id'] && $prods[$q]["amount"] != 0): ?>
                                                        <div class="row mini mini-prods hidden" draggable="true" ondragstart="return dragStart(event)" 
                                                             ondragend="return dragEnd(event)"                                              
                                                             data-id="<?php echo $prods[$q]["iddir_prod"]; ?>"
                                                             data-price="<?php echo $prods[$q]["price"]; ?>" 
                                                             data-amount="<?php echo $prods[$q]["amount"]; ?>"
                                                             data-prod-name="<?php echo $prods[$q]["name_prod"]; ?>"
                                                             data-stock="<?php echo $prods[$q]["id_dir_stock"]; ?>"
                                                             data-ed-izm="<?php echo $prods[$q]["short_edizm"]; ?>"
                                                             data-num-part="<?php echo $prods[$q]["num_part"]; ?>"
                                                             ondblclick="addProd(this)">
                                                            <div class="col-lg-5 col-md-5 col-sm-5">
                                                                <i class="name-prod" style="font-weight: bold;">
                                                                    <?php echo trim($prods[$q]["name_prod"]); ?>, 
                                                                    <i class="ed-izm"><?php echo trim($prods[$q]["short_edizm"]); ?></i>
                                                                </i> 
                                                                <p style="font-size: 12px;">
                                                                    <i>Цена: <?php echo $prods[$q]["price"]; ?> грн.</i><br>
                                                                    <i>Партия: <?php echo $prods[$q]["num_part"]; ?></i><br>
                                                                    <i>Доступное колл-во: <?php echo $prods[$q]["amount"]; ?></i>
                                                                </p>                                             
                                                            </div>
                                                            <div class="col-lg-3 col-md-3 col-sm-3">
                                                                <?php echo trim($prods[$q]["name_stock"]); ?>
                                                            </div>
                                                            <div class="col-lg-4 col-md-4 col-sm-4">
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
                        <div class="col-lg-7 col-md-7" style="background: white; max-height: 600px;">
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
                                        <th><a href="#" class="glyphicon glyphicon-refresh" 
                                               onclick="event.preventDefault()" style="color: white;"></a></th>
                                    </tr>
                                </table> 
                            </div>
                        </div>                      
                    </div>
                    <div class="row" style="background: white;">
                        <div class="col-lg-5 col-md-5" style="border-top: 1px dotted grey;">
                        </div>
                        <div class="col-lg-7 col-md-7" style="border-top: 1px dotted grey;">
                            <div class="form-group">
                                <?php if ($typeStockOper == 'add'): ?>
                                <input type="button" class="btn btn-success" value="Сохранить" onclick="readAndSaveData('table-act', 'add')">
                                <?php elseif ($typeStockOper == 'rem'): ?>
                                <input type="button" class="btn btn-success" value="Сохранить" onclick="readAndSaveData('table-act', 'rem')">
                                <?php endif; ?>
                                <input type="button" class="btn btn-danger oper-cancel" value="Отмена" onclick="resetTable('table-act')">
                            </div>                              
                        </div>
                    </div>
                </div>
                <div id="requests-prods">
                    <table class="table table-bordered">
                        <?php for ($i = 0; $i < count($listRequests); $i++): ?>
                        <tr>
                            <td>Требование № <?php echo $listRequests[$i]['id']; ?> 
                                от <?php echo $listRequests[$i]['date_request']; ?><hr>
                                <?php echo $listRequests[$i]['name_base']; ?>
                            </td> 
                            <td>
                                <ol class="list-prods-for-remove">
                                <?php for ($j = 0; $j < count($prodsByRequests); $j++): ?>
                                    <?php if ($prodsByRequests[$j]['id_request'] == $listRequests[$i]['id']): ?>
                                        <?php if($prodsByRequests[$j]['available'] != null): ?>
                                            <?php if($prodsByRequests[$j]['available'] < $prodsByRequests[$j]['count']): ?>
                                                <li style="color: darkred;" class="good"
                                                    data-id="<?php echo $prodsByRequests[$j]['id_prod']; ?>"
                                                    data-price="<?php echo $prodsByRequests[$j]['price']; ?>"
                                                    data-amount="<?php echo $prodsByRequests[$j]['available']; ?>"
                                                    data-prod-name="<?php echo $prodsByRequests[$j]['name_prod']; ?>"
                                                    data-ed-izm="<?php echo $prodsByRequests[$j]["short_edizm"]; ?>"
                                                    data-num-part="<?php echo $prodsByRequests[$j]["num_part"]; ?>"
                                                    data-stock="<?php echo $prodsByRequests[$j]["id_stock"]; ?>">
                                                    <?php echo $prodsByRequests[$j]['name_prod']; ?> - 
                                                    <?php echo $prodsByRequests[$j]['count']; ?> (недостаточно на складе, в наличии <?php echo $prodsByRequests[$j]['available'];?>)
                                                </li>
                                            <?php else: ?>
                                                <li style="color:green;" class="good" data-id="<?php echo $prodsByRequests[$j]['id_prod']; ?>"
                                                    data-price="<?php echo $prodsByRequests[$j]['price']; ?>"
                                                    data-amount="<?php echo $prodsByRequests[$j]['count']; ?>"
                                                    data-prod-name="<?php echo $prodsByRequests[$j]['name_prod']; ?>"
                                                    data-ed-izm="<?php echo $prodsByRequests[$j]["short_edizm"]; ?>"
                                                    data-num-part="<?php echo $prodsByRequests[$j]["num_part"]; ?>"
                                                    data-stock="<?php echo $prodsByRequests[$j]["id_stock"]; ?>">
                                                    <?php echo $prodsByRequests[$j]['name_prod']; ?> - 
                                                    <?php echo $prodsByRequests[$j]['count']; ?>
                                                </li>                                                
                                            <?php endif; ?>
                                        <?php else: ?>
                                            <li style="color:red;"
                                                data-id="<?php echo $prodsByRequests[$j]['id_prod']; ?>"
                                                data-price="<?php echo $prodsByRequests[$j]['price']; ?>"
                                                data-amount="<?php echo $prodsByRequests[$j]['count']; ?>"
                                                data-prod-name="<?php echo $prodsByRequests[$j]['name_prod']; ?>"
                                                data-ed-izm="<?php echo $prodsByRequests[$j]["short_edizm"]; ?>"
                                                data-num-part="<?php echo $prodsByRequests[$j]["num_part"]; ?>"
                                                data-stock="<?php echo $prodsByRequests[$j]["id_stock"]; ?>">
                                                <?php echo $prodsByRequests[$j]['name_prod']; ?> - 
                                                <?php echo $prodsByRequests[$j]['count']; ?> (нет на складе)
                                            </li>                                    
                                        <?php endif; ?>
                                    <?php endif; ?>
                                <?php endfor; ?>
                                </ol>                            
                            </td>
                            <td>    
                                <?php if ($listRequests[$i]['confirm'] != 1): ?>
                                <a href="#" class="btn btn-primary" style="color: white;" 
                                   data-id="<?php echo $listRequests[$i]['id']; ?>"
                                   onclick="removeProdsFromStock(event, $(this).closest('tr').find('ol.list-prods-for-remove').children('li.good'))">
                                    Выдать требуемые продукты
                                </a>
                                <?php else: ?>
                                <i style="color: red;">По данному требованию все продукты выданы</i>                                
                                <?php endif; ?>
                            </td>
                        </tr>
                        <?php include ROOT . '/views/layouts/showPartsRemoveModal.php';?>
                        <?php endfor; ?>
                    </table>                        
                </div>                
            </div>
        </div>
        
    <!-- Приход, возврат, списание -->
    <?php elseif($typeStockOper == 'add' || $typeStockOper == 'ret' || $typeStockOper == 'out'): ?>
        <div class="col-lg-5">
            <p style="font-weight:bold;">
                Продукты
                <a href="#" class="glyphicon glyphicon-question-sign" 
                   onclick="showHideHelpBlock($(this).closest('p').next());"></a>                                
            </p> 
            <div class="help">
                <?php if ($typeStockOper == 'add'): ?>
                    <i>Для добавления продуктов в список, двойной клик на продукт или перетащить продукт в список продуктов.
                    Если нужного продукта нет в справочнике, то его нужно 
                    <a href="/directory/" style="color: red;">добавить в справочник продуктов</a>.</i>
                <?php else: ?>
                    <i>Для добавления продуктов в список, двойной клик на продукт или перетащить продукт в список продуктов</i>
                <?php endif; ?>
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
                        <?php if ($prods[$q]["amount"] != 0): ?>
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
                                <?php if ($typeStockOper == 'add'): ?>
                                    <div class="col-lg-8">
                                        <p class="name-prod" style="font-weight: bold;"><?php echo $prods[$q]["name_prod"]; ?>, 
                                            <i class="ed-izm"><?php echo $prods[$q]["short_edizm"]; ?></i>
                                        </p>                                                        
                                    </div>
                                    <div class="col-lg-4">
                                        <img src="<?php echo $prods[$q]["img_prod"]; ?>" alt="product">
                                    </div>
                                <?php elseif ($typeStockOper == 'ret' || $typeStockOper == 'out'): ?>
                                    <div class="col-lg-8">
                                        <p class="name-prod" style="font-weight: bold;"><?php echo $prods[$q]["name_prod"]; ?>, 
                                            <i class="ed-izm"><?php echo $prods[$q]["short_edizm"]; ?></i>
                                        </p>  
                                        <p style="font-size: 12px;">
                                            <i>Цена: <?php echo $prods[$q]["price"]; ?> грн.</i><br>
                                            <i>Партия: <?php echo $prods[$q]["num_part"]; ?></i><br>
                                            <i>Доступное колл-во: <?php echo $prods[$q]["amount"]; ?></i>
                                        </p>
                                    </div>
                                    <div class="col-lg-4">
                                        <img src="<?php echo $prods[$q]["img_prod"]; ?>" alt="product">
                                    </div>                                    
                                <?php endif;?>                                    
                            </div>  
                        <?php endif; ?>
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
                                    <?php if ($typeStockOper == 'add'): ?>
                                    <div class="col-lg-8">
                                        <p class="name-prod" style="font-weight: bold;"><?php echo $prods[$q]["name_prod"]; ?>, 
                                            <i class="ed-izm"><?php echo $prods[$q]["short_edizm"]; ?></i>
                                        </p>                                                        
                                    </div>
                                    <div class="col-lg-4">
                                        <img src="<?php echo $prods[$q]["img_prod"]; ?>" alt="product">
                                    </div>
                                    <?php elseif ($typeStockOper == 'ret' || $typeStockOper == 'out'): ?>
                                    <div class="col-lg-8">
                                        <p class="name-prod" style="font-weight: bold;"><?php echo $prods[$q]["name_prod"]; ?>, 
                                            <i class="ed-izm"><?php echo $prods[$q]["short_edizm"]; ?></i>
                                        </p>  
                                        <p style="font-size: 12px;">
                                            <i>Цена: <?php echo $prods[$q]["price"]; ?> грн.</i><br>
                                            <i>Партия: <?php echo $prods[$q]["num_part"]; ?></i><br>
                                            <i>Доступное колл-во: <?php echo $prods[$q]["amount"]; ?></i>
                                        </p>
                                    </div>
                                    <div class="col-lg-4">
                                        <img src="<?php echo $prods[$q]["img_prod"]; ?>" alt="product">
                                    </div>                                    
                                    <?php endif;?>                                    
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
                <?php if ($typeStockOper == 'add'): ?>
                <input type="button" class="btn btn-success" value="Сохранить" onclick="readAndSaveData('table-act', 'add')">
                <?php elseif ($typeStockOper == 'rem'): ?>
                <input type="button" class="btn btn-success" value="Сохранить" onclick="readAndSaveData('table-act', 'rem')">
                <?php elseif ($typeStockOper == 'ret'): ?>
                <input type="button" class="btn btn-success" value="Сохранить" onclick="readAndSaveData('table-act', 'ret')">
                <?php elseif ($typeStockOper == 'out'): ?>
                <input type="button" class="btn btn-success" value="Сохранить" onclick="readAndSaveData('table-act', 'out')">
                <?php endif; ?>
                <input type="button" class="btn btn-danger oper-cancel" value="Отмена" 
                       onclick="resetTable('table-act'); recalcSummaryRow('table-act');">
                </div>                              
            </div>
        </div>        
    <?php endif; ?>
    </div>

</div>    

<?php require_once ROOT . '/views/layouts/footer.php'; ?>    