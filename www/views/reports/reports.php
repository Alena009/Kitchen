<?php require_once ROOT . '/views/layouts/header.php'; ?>

<div class="container">
    <div>
        <ul class="breadcrumb">
            <li><a href="/">На главную</a> <span class="divider">/</span></li>
            <li><a href="/report/">Отчеты</a> <span class="divider">/</span></li>
            <li class="active"><?php echo $nameTypeReport; ?></li>
        </ul>        
    </div>    
    
    <div class="row">
        <div class="col-lg-3 mini" style="height: auto;" id="report-left-menu">
            <label>Поля отчета: 
                <a href="#" class="glyphicon glyphicon-question-sign" 
                   onclick="showHideHelpBlock($(this).closest('label').next('div.help'));"></a>               
            </label>
            <div class="help">
                <i>
                    Для участия поля в выборе информации, необходимо отметить поле галочкой
                </i>
            </div>
            <div class="checkbox">
                <label><input type="checkbox" class="reports-fields nonselected"
                              onclick="checkAll($(this), $('input.reports-fields'));">
                    Выбрать все
                </label>
            </div>
            <?php for($i = 0; $i < count($fields); $i++): ?>
            <div class="checkbox">
              <label class="draggable" style="display: block;"><input type="checkbox" class="reports-fields"
                            onclick="addRemoveCheck($(this).closest('label'))"
                            value="<?php echo $fields[$i]['name_field']; ?>"
                            data-header="<?php echo $fields[$i]['description_field']; ?>">
                  <?php echo $fields[$i]['description_field']; ?>
              </label>
            </div>            
            <?php endfor; ?>
            <hr>
            <label>Критерии: 
                <a href="#" class="glyphicon glyphicon-question-sign" 
                   onclick="showHideHelpBlock($(this).closest('label').next('div.help'));"></a>
            </label>            
            <div class="help">
                <i>
                    Для участия критериии в выборе информации, необходимо отметить критерию галочкой. 
                    Информация в выпадающих списках отсортирована в алфавитном порядке.
                </i>
            </div>
            <?php for($j = 0; $j < count($conditions); $j++): ?>
                <div class="checkbox">
                    <label><input type="checkbox" class="reports-conditions" 
                                  data-type-condition="<?php echo $conditions[$j]['type_condition']; ?>"
                                  onclick="addRemoveCheck($(this).closest('label'))"
                                value="<?php echo $conditions[$j]['text_condition']; ?>">
                      <?php echo $conditions[$j]['description_condition']; ?>
                    </label>
                    <?php if ($conditions[$j]['type_condition'] == 'select'): ?>
                    <select class="form-control">
                        <?php $records = Functions::getRecordsNum('listRecords', $conditions[$j]['table_condition'], null);
                          for ($k = 0; $k < count($records); $k++): ?>
                        <option value="<?php echo $records[$k][0]; ?>">
                            <?php echo $records[$k][1]; ?>
                        </option>
                        <?php endfor; ?>
                    </select>  
                    <?php elseif ($conditions[$j]['type_condition'] == 'multidate'): ?>
                    <input type="text" class="form-control datepicker datebegin" id="datebegin-<?php echo $j; ?>">
                    <input type="text" class="form-control datepicker dateend" id="dateend-<?php echo $j; ?>">
                    <?php endif; ?>
                </div>            
            <?php endfor; ?>            
            <input type="button" class="btn btn-success" value="Отчет" 
                   onclick="getReport($(this))" id="<?php echo $typeReport; ?>">
            <input type="button" class="btn btn-success" value="Выгрузить в Excel" 
                   onclick="$('#report').table2excel({filename: 'report'})">  
            <hr>
        </div>  
        <div class="col-lg-9 mini" id="receiver-report" style="height: 800px;">
            <label>Отчет <a href="#" class="glyphicon glyphicon-question-sign" 
                   onclick="showHideHelpBlock($(this).closest('label').next('div.help'));"></a></label>
            <div class="help">
                <i>Составленный по выбранным критериям отчет будет выведен в этом блоке</i>
            </div>
            <hr>
        </div>
    </div>    
</div>

<?php require_once ROOT . '/views/layouts/footer.php'; ?>