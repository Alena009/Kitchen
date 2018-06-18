<?php
/*
 * Вид раздела "Содержимое склада"
 */
require_once ROOT . '/views/layouts/header.php';
?>

<div class="container sklad">
    <div class="row">
        <ul class="breadcrumb">
            <li><a href="/">На главную</a> <span class="divider">/</span></li>
            <li><a href="/sklad/">Операции по складу</a> <span class="divider">/</span></li>
            <li class="active">Склад</li>
        </ul>        
    </div>
    <div class="row">
        <div class="col-lg-12">
            <hr>
            <div class="tabbable" style="background: lightgrey;"> <!-- Only required for left/right tabs -->
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#all" data-toggle="tab">Все продукты</a>
                    </li>
                    <?php for ($k = 0; $k < count($listProdCateg); $k++): ?>
                        <li>
                            <a href="#<?php echo $listProdCateg[$k]['id']; ?>" data-toggle="tab"><?php echo $listProdCateg[$k]['name_category']; ?></a>
                        </li>                
                    <?php endfor; ?>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="all">
                        <table class="table table-bordered">                                    
                            <tr id="0" style="background: lightgrey;">
                                <th></th>
                                <th>Склад</th>
                                <th>Наименование</th>
                                <th>Количество</th>
                                <th>Единицы измерения</th>                                
                            </tr>                        
                        <?php for ($q = 0; $q < count($prods); $q++): ?>
                                <tr>
                                    <td></td>
                                    <td><?php echo $prods[$q]["name_stock"]; ?></td>
                                    <td><?php echo $prods[$q]["name_prod"]; ?></td>
                                    <td><?php echo $prods[$q]["amount"]; ?></td>
                                    <td><?php echo $prods[$q]["short_edizm"]; ?></td>                                      
                                </tr>                                
                        <?php endfor; ?> 
                        </table>                         
                    </div>
                    <?php for ($t = 0; $t < count($listProdCateg); $t++): ?>  
                        <div class="tab-pane" id="<?php echo $listProdCateg[$t]['id']; ?>">                                                        
                            <table class="table table-bordered">                                    
                                <tr id="0" style="background: lightgrey;">
                                    <th></th>
                                    <th>Склад</th>
                                    <th>Наименование</th>
                                    <th>Количество</th>
                                    <th>Единицы измерения</th>                                    
                                </tr>                        
                            <?php for ($q = 0; $q < count($prods); $q++): ?>
                                <?php if ($prods[$q]['id_category_prod'] == $listProdCateg[$t]['id']): ?>
                                    <tr>
                                        <td></td>
                                        <td><?php echo $prods[$q]["name_stock"]; ?></td>
                                        <td><?php echo $prods[$q]["name_prod"]; ?></td>
                                        <td><?php echo $prods[$q]["amount"]; ?></td>
                                        <td><?php echo $prods[$q]["short_edizm"]; ?></td>                                          
                                    </tr>                                    
                                <?php endif; ?>
                            <?php endfor; ?> 
                                <tr>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>                                    
                                </tr>
                            </table>                            
                        </div>
                    <?php endfor; ?> 

                </div>
            </div>  
        </div>
    </div>
</div>    

<?php require_once ROOT . '/views/layouts/footer.php'; ?>    