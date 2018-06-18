 
////Не даем ввести в поле для ввода количества значение меньшу нуля или больше, 
//чем возможно списать
$(document).on('change', 'input[type="number"]', function() {
    var defaultValue = $(this).attr("data-def-val"); 
    var value = $(this).val(); 

    defaultValue = parseFloat(defaultValue); 
    value = parseFloat(value);     
    
    if (value <= 0) {
        $(this).val(0.001);
    } else if (defaultValue > 0) {      
        if (value > defaultValue) {            
            $(this).val(defaultValue);
        } else {
            $(this).val(value);
        }
    }
});

function hideShowElem(elem) {
    event.preventDefault();
    
    if (elem.hasClass('hidden')) {
        elem.removeClass('hidden');
    } else {
        elem.addClass('hidden');        
    }
}
//Сброс таблицы.
function resetTable(idTable) {
    var $rows = $('#' + idTable + ' tr td');
    
    $rows.each(function() {
        $(this).parent().remove();
    });
}

//Сбрасывам таблицу с продуктами при смене склада
$(document).on('change', 'select#list-stock-1', function(){
    var $rows = $('#table-act tr td').length;
    
    if ($rows) {    
        if (confirm("Приходные операции оформляются в разрезе складов. При смене склада будет очищена таблица с продуктами. Сменить склад?")) {
            resetTable('table-act');
        }    
    }
});

//Возвращаем продукты в список в возврате
$(document).on('click', 'a.back-to-prod-list', function(){
    var $idProd = $(this).closest('tr').attr('id');
    alert($idProd);
    $(this).closest('div.slider-prods').find('div.mini-prods[data-id=' + $idProd + ']').removeClass('hidden');
});

//Делаем невидимыми продукты по смене склада
$(document).on('change', 'select#list-stock', function(){
    var selectedStock = $(this).val();
    var prods = $('div.mini-prods');  
    
    prods.each(function(){
        if ($(this).attr('data-stock') != selectedStock) {
            $(this).addClass('hidden');
        } else {
            $(this).removeClass('hidden');
            $(this).addClass('visible');
        }
    });
    
    resetTable('table-act');
});

//Делаем невидимыми продукты по смене номера требования
$(document).on('change', 'select#list-requests-1', function(){
    var selectedReq = $(this).val();
    var prods = $('div.mini-prods');  
    
    prods.each(function(){
        if ($(this).attr('data-num-request') != selectedReq) {
            $(this).addClass('hidden');
        } else {
            $(this).removeClass('hidden');
            $(this).addClass('visible');
        }
    });
    
    resetTable('table-act');
});

//Показываем или прячем блок с подсказкой
function showHideHelpBlock(helpBlock) {
    
    var flag = helpBlock.css('display');
    
    if (flag == 'none') {
        helpBlock.css('display', 'block');
    } else {
        helpBlock.css('display', 'none');
    }    
}
//Устанавливаем чеки на все елементы
function checkAll(elem, masElems) {
    var flag = elem.prop('checked');
    
    masElems.each(function(){
        $(this).prop('checked', flag);
        if (flag) {
            $(this).closest('label').addClass('checked'); 
        } else {
            $(this).closest('label').removeClass('checked'); 
        }
    });   
}

function addRemoveCheck(elem) {
    if (elem.hasClass('checked')) {
        elem.removeClass('checked');
        $('input.reports-fields').first().prop('checked', false);
        $('input.reports-fields').first().closest('label').removeClass('checked');
    } else {
        elem.addClass('checked');
    } 
}

//Удаляем строки из таблицы по смене склада
$(document).on('change', 'select#list-stock', function(){
    $('table#table-act tr:not(:first, :last)').remove();  
});

//В новой калькуляции переключаем переключатель с организациями
$(document).on('change', 'input#total-orgs', function(){
    var flag = $(this).prop('checked');
    
    $('input.new-calc-orgs').each(function(){
        $(this).prop('checked', flag);
    });   
});

$(document).on('change', 'input.new-calc-orgs', function(){
    var flag, thisFlag = $(this).prop('checked');

    $('input.new-calc-orgs').each(function(){
        if (!$(this).prop('checked')) {
            flag = false;
        }
    });        
    
    $('input#total-orgs').prop('checked', flag);     
});

//Подсвечиваем строки в таблице требований продуктов
$(document).on('click', 'th.request-name-prod-total', function(){
    var searchingClass = $(this).attr('data-id');
    
    $('tr.' + searchingClass).each(function(){
        if ($(this).hasClass('marked-tr')) {
            $(this).removeClass('marked-tr');
        } else {
            $(this).addClass('marked-tr');
        }
        
    });
});
////Зачеркиваем ненужные пункты в списке
//$(document).on('click', 'ul.list-orgs li', function(){
//    if ($(this).hasClass('enable')) {
//        $(this).removeClass('enable');
//        $(this).addClass('disable');
//    } else {
//        $(this).removeClass('disable');
//        $(this).addClass('enable');        
//    }
//});
//Кнопка уменьшения кол-ва 
$(document).on('click', 'a.minus-prod', function(event){
    event.preventDefault();
    var amount = $(this).next().val();
    var tableId = $(this).closest('table').attr('id');
    if (tableId == 'table-receipt' || tableId == 'prodsbyreceipt') {
        var delta = 0.001;
    } else {
        var delta = 1;
    }     
    if (amount > 0 && amount - delta > 0){
        amount = amount - delta;
        $(this).next().val(amount);
    } else {
        $(this).next().val('0');
    }
    changeValue($(this));
});
//Кнопка прибавления кол-ва
$(document).on('click', 'a.plus-prod', function(event){
    event.preventDefault();
    var amount = $(this).prev().val();
    var defaultAmount = $(this).attr('data-am');
    var tableId = $(this).closest('table').attr('id');
    if (tableId == 'table-receipt' || tableId == 'prodsbyreceipt') {
        var delta = 0.001;
    } else {
        var delta = 1;
    } 
    if (defaultAmount) {
        if (+amount + +1 <= defaultAmount) {
            amount = +amount + delta;
            amount = parseFloat(amount);
            $(this).prev().val(amount);
            changeValue($(this));
        } else {
            $(this).prev().val(defaultAmount);
            changeValue($(this));
            alert("Нельзя списать больше, чем есть на складе.");
        }
    } else {
            amount = +amount + delta;
            amount = parseFloat(amount);
            $(this).prev().val(amount);
            changeValue($(this));        
    }
});
//Событие на изменение кол-ва
$(document).on('change', 'input.td-amount', function(){
    changeValue($(this));
});
//Событие на изменение цены
$(document).on('change', 'input.td-price', function(){
    changeValue($(this));    
});
//Событие на изменения количества ингрединетов в рецепте
$(document).on('change', 'input.netto-1', function(){
    //recalcOutputWeights($(this), 'netto-1');    
    recalcOutputWeights($(this).closest('table'));    
});
$(document).on('change', 'input.netto-2', function(){
    //recalcOutputWeights($(this), 'netto-2');    
    recalcOutputWeights($(this).closest('table'));    
});

//function recalcOutputWeights(element, classInputs) {
//    var summ = 0;
//    var parentTable = element.closest('table');
//    var nettoCells = parentTable.find('input.' + classInputs);
//    
//    for (var i = 0; i < nettoCells.length; i++) {
//        summ = +summ + +nettoCells[i].value;
//    }
//
//    summ = summ.toFixed(0);
//    alert(summ);
//    parentTable.find('td.summary-' + classInputs).text(summ);
//    
//    //Для инпутов в новой калькуляции
//    var parentTr = element.closest('tr.tr-receipts');
//    if (parentTr) {
//        var outputone = parentTable.find('tr.summary-weight td.summary-netto-1').text();
//        var outputtwo = parentTable.find('tr.summary-weight td.summary-netto-2').text();
//        parentTr.find('input.output-weights').val(outputone + '/' + outputtwo);
//    }  
//} 





function recalcOutputWeights($table) {
    var summNetto1 = 0;
    var summNetto2 = 0;
    var netto1Cells = $table.find('input.netto-1');
    var netto2Cells = $table.find('input.netto-2');
    
    for (var i = 0; i < netto1Cells.length; i++) {
        summNetto1 = +summNetto1 + +netto1Cells[i].value;
    }
    
    for (var i = 0; i < netto2Cells.length; i++) {
        summNetto2 = +summNetto2 + +netto2Cells[i].value;
    }    

    summNetto1 = summNetto1.toFixed(0);
    summNetto2 = summNetto2.toFixed(0);

    $table.find('td.summary-netto-1').text(summNetto1);
    $table.find('td.summary-netto-2').text(summNetto2);
    
    //Для инпутов в новой калькуляции
    var parentTr = $table.closest('tr.tr-receipts');
    if (parentTr) {
//        var outputone = parentTable.find('tr.summary-weight td.summary-netto-1').text();
//        var outputtwo = parentTable.find('tr.summary-weight td.summary-netto-2').text();
        parentTr.find('input.output-weights').val(summNetto1 + '/' + summNetto2);
    }  
} 






























//Вспомогательная функция для изменений колличества и цены
function changeValue(element){
    var parent = element.closest("tr");
    var amount = parent.find("input.td-amount").val();
    var price = parent.find("input.td-price").val();
    var summa = parseFloat(amount) * parseFloat(price);
    parent.find(".value-summa").text(summa.toFixed(2));
    recalcSummaryRow("table-act");
}
//Функция пересчета значений в рядке "Итого"
function recalcSummaryRow(idTable) {    
    var totalCount = 0; 
    var totalSumma = 0; 

    var countCells = $("table#" + idTable + " input.td-amount");
    var summCells = $("table#" + idTable + " i.value-summa");
    
    for (var i = 0; i < countCells.length; i++) {
        totalCount += parseFloat(countCells[i].value);
    }
    for (var j = 0; j < summCells.length; j++) {
        totalSumma += parseFloat(summCells[j].innerHTML);
    }    

    totalCount = totalCount.toFixed(2);
    totalSumma = totalSumma.toFixed(2);

    $("table#" + idTable + " th#td-count-value").text(totalCount);
    $("table#" + idTable + " th#td-summa-value").text(totalSumma);
}
//Удаление строки из таблицы
$(document).on('click', 'a.remove-row', function(event){
    event.preventDefault();
    deleteRow($(this));  
});

function deleteRow(elem) {
    var $table = elem.closest('table');
    
    elem.closest("tr").remove();    
    recalcSummaryRow("table-act");
    
    if ($table.find('tr.summary-weight')) {
        recalcOutputWeights($table);
    }
}

$(document).on('click', 'a.heads-directories', function(event) {
    var dirTableName = event.target.getAttribute('data-name');
    var dirTableId = event.target.getAttribute('data-id');

    ajaxRequest('/directory/showDir/' + dirTableName + '/' + dirTableId, dirTableName, null); 
});

$(document).ready(function() {
    $("#tabs-prods").tabs();
    $(".list-prods").tabs();
    $("#tabs-list-directories").tabs();
    $("#add-prod-dir").tabs();
    $("#tabs-new-calc-categ-receipt").tabs();
    $("#tabs-new-calc").tabs();
    $("#tabs-new-menu-categ-receipt").tabs();
    $("#menus-tabs").tabs();
    $("#tabs-menu-categ-receipt").tabs();
    $("#tabs-list-menus").tabs();
    $("#tabs-in-sliderprods").tabs();
    
   $(".datepicker").datepicker({
      monthNames:["Январь","Февраль","Март","Апрель","Май","Июнь","Июль","Август","Сентябрь","Октябрь","Ноябрь","Декабрь"],
      dayNamesMin:["Вс","Пн","Вт","Ср","Чт","Пт","Сб"],
      firstDay: 1,
      defaultDate: 0,
      minDate: 0,
      //dateFormat:"dd.mm.yy",
      dateFormat:"yy-mm-dd",
      showWeek: true
   });
   
    var n = 0; // смещение относительно текущей даты (кол-во дней)

    $(".datepicker")
            .datepicker({
                dateFormat: "yy-mm-dd",
                defaultDate: n
            })
            .val(getDate(n));      
});

   
var getDate = function (n) {
    var date = new Date((new Date()).getTime() + 86400000 * n),
            day = date.getDate(),
            month = date.getMonth(),
            year = date.getFullYear();

    return year + "-" + (month + 1) + "-" + day;
};


//$(".mini-prods").draggable(); 
/*
$(document).ready(function() {
   $("#accordion").accordion();
   $("#tabs").tabs();
});
*/

