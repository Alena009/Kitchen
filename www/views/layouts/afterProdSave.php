<p style="font-weight: bold; font-size: 24px;">Приходная накладная была успешно сохранена</p>    
<p>Выберите следующее действие:</p>   
<div class="row">
    <div class="col-lg-4 col-md-3 mini">
        <?php if ($typeOper == 'saveadd'): ?>
        <label>Заполнить еще одну приходную накладную</label>
        <a href="/sklad/production/add">
            <img src="../../images/basket.png" class="miniatures" alt="logo">
        </a>
        <?php else: ?>
        <label>Заполнить еще одну расходную накладную</label>
        <a href="/sklad/production/rem">
            <img src="../../images/basket.png" class="miniatures" alt="logo">
        </a>
        <?php endif; ?>        
    </div>
    <div class="col-lg-4 col-md-3 mini">
        <?php if ($typeOper == 'saveadd'): ?>
        <label>Просмотреть список приходных накладных</label>
        <a href="">
            <img src="../../images/list.png" class="miniatures" alt="logo">
        </a>
        <?php else: ?>
        <label>Просмотреть список расходных накладных</label>
        <a href="">
            <img src="../../images/list.png" class="miniatures" alt="logo">
        </a>
        <?php endif; ?>        
    </div>
    <div class="col-lg-4 col-md-3 mini">
        <label>На главную страницу</label>
        <a href="/">
            <img src="../../images/kitchen.jpg" class="miniatures" alt="logo">                    
        </a>
    </div>
</div> 
<hr>