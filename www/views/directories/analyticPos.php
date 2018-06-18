<?php for ($i = 0; $i < count($listAnalyticPos); $i++): ?>
<div id="<?php echo $listAnalyticPos[$i]['id']; ?>" class="analytic-pos" 
     style="background: white; border: 1px solid #286090; border-radius: 5px;">    
    Дебет <?php echo $listAnalyticPos[$i]['debit_score']; ?> - 
    Кредит <?php echo $listAnalyticPos[$i]['credit_score']; ?>
    <?php echo $listAnalyticPos[$i]['name_pos']; ?>
    <div style="float: right;">        
        <a href="#" class="glyphicon glyphicon-remove" onclick="deleteAnalytic(event, 1)" title="Удалить запись"></a>
    </div>
</div>
<?php endfor; ?>