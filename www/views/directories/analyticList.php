<i><b>Операции</b></i><br>
<div class="row">                    
    <div class="col-lg-6 default" class="analytics">
        <?php for ($i = 0; $i < count($listAnalytics); $i++): ?>
        <div id="<?php echo $listAnalytics[$i]['id']; ?>" class="analytic"             
             onclick="showAnalyticPos(event)">
            <label><?php echo $listAnalytics[$i]['name_analytic']; ?></label>
            <div style="float: right;">
                <a href="#" class="glyphicon glyphicon-ok" onclick="editAnalytic(event)" title="Редактировать запись"></a>
                <a href="#" class="glyphicon glyphicon-remove" onclick="deleteAnalytic(event)" title="Удалить запись"></a>
            </div>
        </div>
        <?php endfor; ?>
    </div>
    <div class="col-lg-6 default" id="analytic-positions">

    </div>
</div> 
<hr>
<div class="row">                    
    <input type="button" class="btn btn-primary" value="Настройка аналитики" onclick="hideShowElem($(this).next('div'))">
    <div class="hidden" id="add-analytic">
        <hr>     
        <b>Название операции</b>
        <input type="text" id="name-analytic"><br>
        <b>Позиции операции:</b>
        <table class="table table-bordered" id="position-analytic">
            <tr>
                <th></th>
                <th>Дебет</th>
                <th>Кредит</th>
                <th>Название позиции</th>
                <th>Исчисление в эквиваленте</th>
                <th></th>
            </tr>
        </table><br>
        <b>Дебетовый счет</b>
        <select id="debet-score">
            <?php for($i = 0; $i < count($listScore); $i++): ?>
            <option id="<?php echo $listScore[$i]['id_dir_score']; ?>">
                <?php echo $listScore[$i]['num_score']; ?> - <?php echo $listScore[$i]['name_score']; ?>
            </option>
            <?php endfor; ?>                            
        </select>   
        <b>Кредитовый счет</b>
        <select id="credit-score">
            <?php for($i = 0; $i < count($listScore); $i++): ?>
            <option id="<?php echo $listScore[$i]['id_dir_score']; ?>">
                <?php echo $listScore[$i]['num_score']; ?> - <?php echo $listScore[$i]['name_score']; ?>
            </option>
            <?php endfor; ?>                            
        </select><br>
        <b>Название позиции</b>
        <input type="text" id="name-analytic-pos">
        <b>Исчисление в</b>
        <select id="type-analytic">
            <?php for($i = 0; $i < count($listTypeAnalytic); $i++): ?>
            <option id="<?php echo $listTypeAnalytic[$i]['id']; ?>">
                <?php echo $listTypeAnalytic[$i]['name_type']; ?>
            </option>
            <?php endfor; ?>                            
        </select>                          
        <input type="button" class="btn btn-primary" value="Добавить" id="add-analytic-pos" onclick="addAnalyticPos(event)"><br>                          
        <input type="button" class="btn btn-success" value="Сохранить" id="save-analytic" onclick="saveAnalytic(event)">
    </div>                    
</div>
