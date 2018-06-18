<?php require_once ROOT . '/views/layouts/header.php'; ?>

<div class="container">
    <div>
        <ul class="breadcrumb">
            <li><a href="/">На главную</a> <span class="divider">/</span></li>
            <li><a href="#" onclick="history.back();">Назад</a> <span class="divider">/</span></li>
            <li class="active">Возвраты по требованиям</li>
        </ul>        
    </div> 
    <div class="row" style="overflow-y: auto; max-height: 800px;">
        <table class="table table-bordered" id="head-calc">
                <thead>
                    <tr>
                        <th></th>
                        <th colspan="3">Возвраты по требованиям</th>
                    </tr>
                    <tr>
                        <th>Вывести в Word</th>
                        <th>Требование</th>
                        <th>Продукты</th>
                    </tr>                    
                </thead>   
                <tbody>                    
                    <?php for ($i = 0; $i < count($returns); $i++): ?>                    
                    <tr id="<?php echo $returns[$i]['id_stock_oper']; ?>" <?php if($returns[$i]['id_request'] == $idRequest): echo "style='background: lightgreen;'"; endif; ?>> 
                        <td><a href="#" onclick='$(this).closest("tr").find("div.googoose-wrapper").wordExport("return");'>Печать</a></td>
                        <td><?php echo $returns[$i]['id_request']; ?></td>
                        <td>
                            <div class="googoose-wrapper">
                                Требование <?php echo $listReturns[$i]['id_request']; ?>.
                                <table class="table">
                                    <tr>
                                        <th style="border: 1px dotted black;">Номер возврата</th>                      
                                        <th style="border: 1px dotted black;">Дата возврата</th>                                        
                                        <th style="border: 1px dotted black;">Склад</th>
                                        <th style="border: 1px dotted black;">Продукт</th>
                                        <th style="border: 1px dotted black;">Код</th>
                                        <th style="border: 1px dotted black;">Ед.изм.</th>
                                        <th style="border: 1px dotted black;">Кол-во</th>
                                        <th style="border: 1px dotted black;">Цена</th>
                                        <th style="border: 1px dotted black;">Сумма</th>
                                    </tr>
                                    <?php for ($j = 0; $j < count($listReturns); $j++): ?>
                                        <?php if ($listReturns[$j]['id_request'] == $returns[$i]['id_request']): ?>
                                        <tr>
                                            <td style="border: 1px dotted black;"><?php echo $listReturns[$j]['id_stock_oper']; ?></td>
                                            <td style="border: 1px dotted black;"><?php echo $listReturns[$j]['dt_oper']; ?></td>                                            
                                            <td style="border: 1px dotted black;"><?php echo $listReturns[$j]['name_stock']; ?></td>
                                            <td style="border: 1px dotted black;"><?php echo $listReturns[$j]['name_prod']; ?></td>
                                            <td style="border: 1px dotted black;"><?php echo $listReturns[$j]['id_prod']; ?></td>
                                            <td style="border: 1px dotted black;"><?php echo $listReturns[$j]['short_edizm']; ?></td>
                                            <td style="border: 1px dotted black;"><?php echo $listReturns[$j]['amount']; ?></td>
                                            <td style="border: 1px dotted black;"><?php echo $listReturns[$j]['price']; ?></td>
                                            <td style="border: 1px dotted black;"><?php echo $listReturns[$j]['summa']; ?></td>
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


