<?php
/*
 * Главный вид раздела "Справочники"
 */
require_once ROOT . '/views/layouts/header.php';
?>

<div class="container receipts">
    <div>
        <ul class="breadcrumb">
            <li><a href="/">На главную</a> <span class="divider">/</span></li>
            <li class="active">Справочники</li>
        </ul>        
    </div>    
    <div class="tabbable row" style="background: white; height: 600px; overflow-y: auto;">
        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
            <ul class="nav nav-pills nav-stacked list-directories">
                <li>
                    <a href="#kt-dir-prod" data-toggle="tab">Продукты</a>
                </li>
                <?php for ($i = 0; $i < count($listDirectories); $i++): ?>
                    <li>
                        <a href="#<?php echo $listDirectories[$i]['name_directory']; ?>" 
                           data-name="<?php echo $listDirectories[$i]['name_directory']; ?>"
                           data-id="<?php echo $listDirectories[$i]['id']; ?>" 
                           data-toggle="tab" class="heads-directories">
                            <?php echo $listDirectories[$i]['name_table']; ?>
                        </a>
                    </li>             
                <?php endfor; ?>
                <?php if (User::isAdmin()): ?>
                <li>
                    <a href="#kt-dir-analytic" data-toggle="tab">Аналитика</a>
                </li>
                <?php endif; ?>
            </ul>
        </div>
        <div class="tab-content col-lg-10 col-md-10 col-sm-10 col-xs-10">
            <div id="kt-dir-prod" class="tab-pane row">
                <div class="col-lg-12" id="add-prod-dir">
                    <ul>
                        <li class="active">
                            <a href="#allprods">Продукты</a>
                        </li>                         
                        <li>
                            <a href="#list-prods">Продукты по категориям</a>
                        </li>    
                        <li>
                            <a href="#add-new-prod">Добавить новую запись</a>
                        </li>
                    </ul>
                    <div id="allprods">                    
                        <?php include ROOT . '/views/directories/allprods.php'; ?>    
                    </div>                    
                    <div id="list-prods">                    
                        <?php include ROOT . '/views/directories/prods.php'; ?>    
                    </div>
                    <div id="add-new-prod">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">Новый продукт</h4>
                            </div>
                            <div class="modal-body" id="add-new-prod">               
                                <p><b>Новая запись</b></p>
                                <hr>
                                <p>
                                    <i>Категория продукта: </i>
                                    <select id="prod-categ">
                                        <?php for($cp = 0; $cp < count($listProdCateg); $cp++): ?>                                
                                            <option value="<?php echo $listProdCateg[$cp]['id'];?>">
                                                <?php echo $listProdCateg[$cp]['name_category'];?>
                                            </option>
                                        <?php endfor; ?>
                                    </select>
                                </p>
                                <p>
                                    <i>Название продукта: </i>
                                    <input type="text" id="name-prod">
                                </p>
                                <p>
                                    <i>Единицы измерения: </i>
                                    <select id="edizm">
                                        <?php for($ed = 0; $ed < count($listEdizm); $ed++): ?>
                                        <option value="<?php echo $listEdizm[$ed]['id_edizm']; ?>">
                                            <?php echo $listEdizm[$ed]['name_edizm']; ?>
                                        </option>
                                        <?php endfor; ?>
                                    </select>
                                </p>
                                <?php if (User::isAdmin()): ?>
                                <p>
                                    <i>Иконка продукта: </i>
                                    <input type="file" name="uploadfile" id="new-prod-icon">
                                </p>             
                                <?php endif; ?>
                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-success" onclick="saveNewProd(event);" value="Сохранить">                  
                            </div>
                        </div>    
                    </div>                  
                        
                </div>                
            </div>   
            <?php for ($j = 0; $j < count($listDirectories); $j++): ?>
                <div id="<?php echo $listDirectories[$j]['name_directory']; ?>" class="tab-pane"></div>
            <?php endfor; ?>
            <div id="kt-dir-analytic" class="tab-pane">
                <?php include ROOT . '/views/directories/analyticList.php'; ?>
            </div>
        </div>
    </div>        
    <hr>
    <div class="row"> 
        <div id="innerDirTable">
            
        </div>            
    </div>
</div>

<?php require_once ROOT . '/views/layouts/footer.php'; ?>
