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
            <li><a href="#" onclick="history.back();">Назад</a> <span class="divider">/</span></li>
            <li class="active">Выдачи по требованиям</li>
        </ul>        
    </div> 
    <div class="row" style="overflow-y: auto; max-height: 800px;">
        <table class="table table-bordered" id="head-calc">
                <thead>
                    <tr>
                        <th></th>
                        <th colspan="2">Выдачи по требованиям</th>
                        <th></th>
                    </tr>
                    <tr>
                        <th>Вывести в Word</th>
                        <th>Калькуляция</th>
                        <th>Требование</th>                        
                        <th></th>                     
                    </tr>                    
                </thead>   
                <tbody>                    
                    <?php for ($i = 0; $i < count($removes); $i++): ?>                    
                    <tr id="<?php echo $removes[$i]['id_stock_oper']; ?>" <?php if($removes[$i]['id_request'] == $idRequest): echo "style='background: lightgreen;'"; endif; ?>>
                        <td><a href="#" onclick='$(this).closest("tr").find("div.googoose-wrapper").wordExport("remove");'>Печать</a></td>
                        <td><a href="/calculations/showcalc/<?php echo $removes[$i]['id_calc']; ?>">
                            <?php echo $removes[$i]['id_request']; ?></a>
                        </td>
                        <td><a href="/calculations/showrequest/<?php echo $removes[$i]['id_request']; ?>">
                            <?php echo $removes[$i]['id_request']; ?></a>
                        </td>
                        <td>
                            <div class="googoose-wrapper">
                                Калькуляция <?php echo $removes[$i]['id_calc']; ?>. Требование <?php echo $removes[$i]['id_request']; ?>.
                                <table class="table">
                                    <tr>
                                        <th style="border: 1px dotted black;">Номер выдачи</th>
                                        <th style="border: 1px dotted black;">Дата</th>
                                        <th style="border: 1px dotted black;">Склад</th>
                                        <th style="border: 1px dotted black;">Продукт</th>
                                        <th style="border: 1px dotted black;">Код</th>
                                        <th style="border: 1px dotted black;">Ед.изм.</th>
                                        <th style="border: 1px dotted black;">Кол-во</th>
                                        <th style="border: 1px dotted black;">Цена</th>
                                        <th style="border: 1px dotted black;">Сумма</th>  
                                    </tr>
                                    <?php for ($j = 0; $j < count($listRemoves); $j++): ?>
                                        <?php if ($listRemoves[$j]['id_request'] == $removes[$i]['id_request']): ?>
                                        <tr>
                                            <td style="border: 1px dotted black;"><?php echo $listRemoves[$j]['id_stock_oper']; ?></td>
                                            <td style="border: 1px dotted black;"><?php echo $listRemoves[$j]['dt_oper']; ?></td>
                                            <td style="border: 1px dotted black;"><?php echo $listRemoves[$j]['name_stock']; ?></td>
                                            <td style="border: 1px dotted black;"><?php echo $listRemoves[$j]['name_prod']; ?></td>
                                            <td style="border: 1px dotted black;"><?php echo $listRemoves[$j]['id_prod']; ?></td>
                                            <td style="border: 1px dotted black;"><?php echo $listRemoves[$j]['short_edizm']; ?></td>
                                            <td style="border: 1px dotted black;"><?php echo $listRemoves[$j]['amount']; ?></td>
                                            <td style="border: 1px dotted black;"><?php echo $listRemoves[$j]['price']; ?></td>
                                            <td style="border: 1px dotted black;"><?php echo $listRemoves[$j]['summa']; ?></td>
                                        </tr>
                                        <?php endif; ?>
                                    <?php endfor; ?>
                                </table>
                            </div>
                        </td>                                                                  
                    </tr>
                    <?php endfor; ?>
                </tbody>                
        </table>          
    </div>
</div>

<?php require_once ROOT . '/views/layouts/footer.php'; ?>


