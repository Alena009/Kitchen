<?php
/*
 * Главный вид раздела меню
 */
    require_once ROOT . '/views/layouts/header.php';
?>
<div class="container menu">
    <div>
        <ul class="breadcrumb">
            <li><a href="/">На главную</a> <span class="divider">/</span></li>
            <li class="active">Меню <span class="divider">/</span></li>
            <li><a href="#" onclick="showHideHelpBlock($(this).closest('ul').next())" 
                   class="glyphicon glyphicon-question-sign" title="Помощь по данному разделу"></a></li> 
        </ul> 
        <div class="help" style="background: white;">
            <i>Меню</i>
            <p>В данном разделе можно сформировать меню из сочетаний блюд, которые часто используются.
                Например, если для завтрака часто используется набор блюд: молочная каша, сок, 
                то можно из этих блюд сформировать меню "Завтрак" и при оформлении новой калькуляции 
                просто выбирать "Завтрак" и блюда, которые были заготовлены в меню "Завтрак", сразу попадут в калькуляцию.
            </p>                       
        </div>        
    </div> 
    <div class="row">
        <button class="btn btn-primary" onclick="$('#newMenuModal').modal('show')">
            Создать меню
        </button>         
    </div>
    <hr>
    <div class="row">
        <div class="col-lg-12">
            <div id="menus-tabs">
                <?php if (!count($menus)): echo 'Нет записей'; ?>
                <?php else: ?>
                <ul>
                    <?php for ($i = 0; $i < count($menus); $i++): ?>
                    <li>
                        <a href="#id-menu-<?php echo $menus[$i]['id']; ?>">
                            <?php echo $menus[$i]['name_menu']; ?>
                        </a>
                        <a href="#" class="glyphicon glyphicon-remove remove-menu" 
                           data-id="<?php echo $menus[$i]['id']; ?>"
                           title="Удалить" onclick="deleteMenu(event)"></a>
                    </li>
                    <?php endfor;?>
                </ul>
                <?php for ($j = 0; $j < count($menus); $j++): ?>
                <div id="id-menu-<?php echo $menus[$j]['id']; ?>">
                    <p>
                        <b>Название меню</b>
                        <input type="text" id="name-new-menu-<?php echo $menus[$j]['id']; ?>" 
                               value="<?php echo $menus[$j]['name_menu']; ?>">
                    </p>    
                    <p>Список блюд в меню</p>
                    <table class="table table-bordered" id="menu-receipts-<?php echo $menus[$j]['id']; ?>">
                        <tr>
                            <th></th>
                            <th>Название блюда</th>
                            <th>Выход</th>
                            <th></th>
                        </tr>
                        <?php for($k = 0; $k < count($menusReceipts); $k++): ?>
                            <?php if ($menusReceipts[$k]['id_menu'] == $menus[$j]['id']): ?>
                                <tr id="<?php echo $menusReceipts[$k]['id_receipt']; ?>">
                                    <td></td>
                                    <td><?php echo $menusReceipts[$k]['name_receipt']; ?></td>
                                    <td><?php echo $menusReceipts[$k]['output_weight_1']; ?>/
                                        <?php echo $menusReceipts[$k]['output_weight_2']; ?></td>
                                    <td>
                                        <a href="#" data-id="<?php echo $menusReceipts[$k]['id']; ?>" 
                                           class="glyphicon glyphicon-remove remove-row" 
                                           onclick="deleteRecord(event, '/menus/deleterec/')"></a>
                                    </td>                                    
                                </tr>
                            <?php endif;?>
                        <?php endfor; ?>
                    </table>
                    <input type="button" class="btn btn-primary" value="Добавить блюда" 
                           id="<?php echo $menus[$j]['id']; ?>" onclick="addReceiptsToMenu(event)">
                    <input type="button" class="btn btn-success" value="Сохранить изменения" 
                           data-id="<?php echo $menus[$j]['id']; ?>" onclick="updateMenu(event)">                  
                </div>       
                <?php endfor;?> 

                <?php endif;?>
            </div>
        </div>          
    </div>
</div>

<?php
    require_once ROOT . '/views/layouts/newReceiptToMenuModal.php';
    require_once ROOT . '/views/layouts/addMenuModal.php';
    require_once ROOT . '/views/layouts/footer.php';
?>

