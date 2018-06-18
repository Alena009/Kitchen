//Поиск продукта в справочнике
function searchProd(nameProd) {
    
    if (nameProd) {
                
        $('div.mini-prods[data-prod-name="' + nameProd + '"]').find('div.name-prod').focus();     
        
    } else {
        
        alert("Введите строку для поиска");
        
    }  
    
}

var files; // переменная. будет содержать данные файлов

// заполняем переменную данными, при изменении значения поля file 
$('input[type=file]').on('change', function(){
    
    files = this.files;    
    
    var $files = $('input[type=file]');
    $files.each(function() {
        $(this).removeClass('changed');
    });
    
    $(this).addClass('changed');
    
});

function saveNewProd(e) {
    var $parentElem = $(e.target).closest('div#add-new-prod');     
    var record = {}; 
    
    record.idCatProd = $parentElem.find('#prod-categ :selected').val();
    record.nameProd = $parentElem.find('#name-prod').val();
    record.idEdIzm = $parentElem.find('#edizm :selected').val();
    
    record = JSON.stringify(record);
    
    if (typeof files == 'undefined') {
        ajaxRequest('/directory/saveProd', 'list-prods', record);
    } else {
        ajaxRequestWithFiles('/directory/saveProd', 'list-prods', record, e, files);    
    }   
    
    //ajaxRequest('/directory/saveProd', null, record);
    
    alert("Сохранено");
        
    return true;    
}

//Функция удаления записи из справочника продуктов
function delDirRec(element) {    
    event.preventDefault();
    if (confirm("Удалить запись?")) {
        
        var idRecord = element.getAttribute("data-id");

        var tableName = element.getAttribute("data-table");

        if (ajaxRequest('/directory/del/' + idRecord, null, null)) {
            element.closest('div.mini-prods').remove();
        }
        
        element.closest('div.mini-prods').remove();        
    }
}



//Поиск рецепта
function findReceipt(searchStr) {    
    var li, id;
    
    if (searchStr) {
        $('ul.list-head-receipts li').removeClass('active');
        $('div.tab-pane').removeClass('active');
        
        li = $('ul.list-head-receipts li:contains("' + searchStr + '")');
        id = li.attr('data-id');
        li.addClass('active'); 
        $('div.tab-pane[id=' + id + ']').addClass('active');
    } else {
        alert("Введите строку для поиска");
    }
}
//Показать содержимое операции
function showOperPos(idOper) {
    
    ajaxRequest('/sklad/show/' + idOper, 'show-oper-' + idOper, null);
    
    return true;
}
//Показать историю калькуляции
function showCalcHistory(idCalc) {
    
    ajaxRequest('/calculations/history/' + idCalc, 'calc-history-' + idCalc, null);
    
    return true;
}

function ajaxRequest(url, IdReceiverElem = null, JSONString = null) {
    
    var data = '';
    
    if (JSONString) {
        data = 'jsonData=' + JSONString;    
    }
    
    $.ajax({
        type: "POST",
        url: url,
        data: data
    }).done(function(data) {
        if (IdReceiverElem) {
            $('#' + IdReceiverElem).empty().append(data);           
        } else {
            //$('div#containerdiv').empty().append(data);           
            return true;
        }      
    });    
}

function ajaxRequestWithFiles(url, IdReceiverElem = null, JSONString = null, event, files) {

    event.stopPropagation(); // остановка всех текущих JS событий
    event.preventDefault();

    if (typeof files == 'undefined') return;

    // создадим объект данных формы
    var data = new FormData(); 
    
    // заполняем объект данных файлами в подходящем для отправки формате
    $.each(files, function(key, value){
        data.append(key, value);
    });
    
    // добавим переменную для идентификации запроса
    data.append('my_file_upload', 1); 
    
    if (JSONString) {
        data.append('jsonData', JSONString);    
    }           
    
    // AJAX запрос
    $.ajax({
            url         : url,
            type        : 'POST', // важно!
            data        : data,
            cache       : false,
            dataType    : 'text',
            // отключаем обработку передаваемых данных, пусть передаются как есть
            processData : false,
            // отключаем установку заголовка типа запроса. Так jQuery скажет серверу что это строковой запрос
            contentType : false, 
            // функция успешного ответа сервера
            success     : function(respond, status, jqXHR){
                    // ОК - файлы загружены
                    if( typeof respond.error === 'undefined' ){                            
//                          var files_path = respond.files;
//                            var html = '';
//                            $.each( files_path, function(key, val){
//                                     html += val +'<br>';
//                            });
//                            $('#' + IdReceiverElem).html( html );

                        if (IdReceiverElem) {
                                    $('#' + IdReceiverElem).empty().append(jqXHR.responseText);   
                                    console.log(jqXHR);
                        } 
                    }
                    // ошибка
                    else {
                        console.log('ОШИБКА: ' + respond.error );
                    }
            },
            // функция ошибки ответа сервера
            error: function( jqXHR, status, errorThrown ){
                console.log( 'ОШИБКА AJAX запроса: ' + status, jqXHR);
            }

    });    
    
}

//////var reportMenu = document.getElementById('report-left-menu');
////var dragObject = {};
////
////reportMenu.onmousedown = function(e) {
////
////  if (e.which != 1) { // если клик правой кнопкой мыши
////    return; // то он не запускает перенос
////  }
////
////  var elem = e.target.closest('.draggable');
////
////  if (!elem) return; // не нашли, клик вне draggable-объекта
////
////  // запомнить переносимый объект
////  dragObject.elem = elem;
////
////  // запомнить координаты, с которых начат перенос объекта
////  dragObject.downX = e.pageX;
////  dragObject.downY = e.pageY;
////}
////
////reportMenu.onmousemove = function(e) {
////    var avatar = dragObject.elem;
////    
////    if (!dragObject.elem) return; // элемент не зажат
////
////    if (!dragObject.avatar) { // элемент нажат, но пока не начали его двигать
////        dragObject.avatar = avatar;
////    }
////
////    // в начале переноса:
////    if (avatar.parentNode != document.body) {
////        document.body.appendChild(avatar); // переместить в BODY, если надо
////    }
////    
////    avatar.style.zIndex = 9999; // сделать, чтобы элемент был над другими
////    avatar.style.position = 'absolute';
////    
////    avatar.style.left = e.pageX - shiftX + 'px';
////    avatar.style.top = e.pageY - shiftY + 'px';    
////}
//
//function editAnalytic(e) {
//    var $this = $(e.target);
//    var $id = $this.closest('div.analytic').attr('id');
//    
//    var $parentBlock = $(document.getElementById('kt-dir-analytic'));    
//    var $editingBlock = $parentBlock.find('div#add-analytic');
//    
//    var nameAnalytic = $this.closest('div.analytic').find('label').text();
//
//    if ($editingBlock.hasClass('hidden')) {
//        $parentBlock.find('input#save-analytic').addClass('changes').attr('data-id', $id);          
//        $parentBlock.find('input#name-analytic').val(nameAnalytic);
//    } else {
//        $parentBlock.find('input#save-analytic').removeClass('changes');   
//        $parentBlock.find('input#name-analytic').val('');
//    }
//    
//    hideShowElem($editingBlock);
//}
//
//function deleteAnalytic(e, pos = null) {
//    e.preventDefault();
//    
//    if (confirm("Удалить запись?")) {
//        var $this = $(e.target);
//        var $id, url, $parent;
//
//        if (pos) {
//            $parent = $this.closest('div.analytic-pos');
//            $id = $parent.attr('id');
//
//            $parent.remove();
//            url = '/directory/delan/kt_dir_analytic_pos/' + $id;
//        } else {
//            $parent = $this.closest('div.analytic');
//            $id = $parent.attr('id');
//
//            $parent.remove();
//            url = '/directory/delan/kt_dir_analytic/' + $id;
//        }  
//
//        ajaxRequest(url, null, null);   
//    }
//}
//
//function showAnalyticPos(e) {
//    var $this = $(e.target);
//    var $allAnalyticsDivs = $this.closest('div.analytics').find('div.analytic');
//    
//    $allAnalyticsDivs.each(function(){
//        if ($(this).hasClass('choosen-analytic')) {
//            $(this).removeClass('choosen-analytic');
//        }
//    });
//    
//    $this.addClass('choosen-analytic');
//    
//    ajaxRequest('/directory/showanpos/kt_dir_analytic_pos/' + $this.attr('id'), 'analytic-positions', null);   
//}
//
//function saveAnalytic(e) {
//    var $this = $(e.target);
//    var $parentElem = $(e.target).closest('div#add-analytic');
//    var $analyticPos = $parentElem.find('#position-analytic tr:not(:first-child)');
//    var analytic = {};
//        
//    analytic.nameAnalytic = $parentElem.find('input#name-analytic').val();
//    analytic.positions = [];
//    
//    $analyticPos.each(function(){
//        analytic.positions.push({
//            "debitScore": $(this).find('td.debit-score').attr('id'),
//            "creditScore": $(this).find('td.credit-score').attr('id'),
//            "namePos": $(this).find('td.name-analytic').find('div').html().trim(),
//            "typeAnalytic": $(this).find('td.type-analytic').attr('id')            
//        });        
//    });  
//    
//    alert(JSON.stringify(analytic));
//    
//    if ($this.hasClass('changes')) {
//        var $id = $this.attr('data-id');
//        
//        ajaxRequest('/directory/updan/kt_dir_analytic/' + $id, 'kt-dir-analytic', JSON.stringify(analytic));   
//    } else {
//        ajaxRequest('/directory/savean/kt_dir_analytic/0', 'kt-dir-analytic', JSON.stringify(analytic));   
//    }
//}
//
////Добавление позиицй аналитики
//function addAnalyticPos(e) {
//    var $parentElem = $(e.target).closest('div#add-analytic');
//    var table = document.getElementById('position-analytic');
//       
//    var newRow = table.insertRow(1);
//    
//    //newRow.setAttribute("id", idProd);    
//    var $debetScore = $parentElem.find('select#debet-score :selected').val();
//    var $idDebetScore = $parentElem.find('select#debet-score :selected').attr('id');
//    var $creditScore = $parentElem.find('select#credit-score :selected').val();
//    var $idCreditScore = $parentElem.find('select#credit-score :selected').attr('id');
//    var $namePos = $parentElem.find('input#name-analytic-pos').val();
//    var $typeAnalytic = $parentElem.find('select#type-analytic :selected').val();
//    var $idTypeAnalytic = $parentElem.find('select#type-analytic :selected').attr('id');
//    
//    newRow.insertCell(0).innerHTML = '';
//    newRow.insertCell(1).innerHTML = $debetScore;     
//    newRow.insertCell(2).innerHTML = $creditScore;        
//    newRow.insertCell(3).innerHTML = '<div contenteditable>' + $namePos + '</div>';     
//    newRow.insertCell(4).innerHTML = $typeAnalytic;
//    newRow.insertCell(5).innerHTML = '<a href="#" class="glyphicon glyphicon-remove remove-row"></a>';  
//    newRow.cells[1].setAttribute("class", 'debit-score');
//    newRow.cells[1].setAttribute("id", $idDebetScore);
//    newRow.cells[2].setAttribute("class", 'credit-score');
//    newRow.cells[2].setAttribute("id", $idCreditScore);
//    newRow.cells[3].setAttribute("class", 'name-analytic');
//    newRow.cells[4].setAttribute("class", 'type-analytic');
//    newRow.cells[4].setAttribute("id", $idTypeAnalytic);
//}
//
////Переброс на возврат продуктов из просмотра выдачи
//function goToReturn(e) {
//    //Идентификатор требования по которому возвращаем продукты
//    var idRequest = e.target.getAttribute('data-id');
//    //Если идентификатор пустой, то просто перебрасываем на форму, 
//    //где можно оформить возврат, иначе - передаем номер требования в качестве параметра
//    if (!idRequest) {
//        ajaxRequest('/sklad/production/return', null, null);
//    } else {
//        ajaxRequest('/sklad/production/return/' + idRequest, null, null);
//    }
//}
//
////Редактирование позиции инвентаризации(комментирование)
//function updInvPos() {
//    event.preventDefault();
//    var $this = $(event.target);
//    
//    var idPos = $this.closest('tr').attr('data-id');
//    var value = $this.closest('td').prev('td').find('div.prim').html();
//    
//    var record = {};
//    record.value = value;
//    
//    ajaxRequest('/sklad/production/updinvpos/' + idPos, null, JSON.stringify(record));
//}
//Удаление инвентаризации
function deleteInv(idInv) {
    if (confirm("Удалить инвентаризационную ведомость?")) {
        ajaxRequest('/sklad/delinv/' + idInv, null, null);
    }
}
//Провести инвентаризацию
function inventarization() {    
    
    ajaxRequest('/sklad/getinv', 'invtable', null);
}
//Переганяем продукты из выбранной вкладки в таблицу 
function prepareProds() {
    event.preventDefault();   
    
    var prods = document.querySelectorAll('div.tab-pane.active div.mini-prods.visible');
    
    for (var i = 0; i < prods.length; i++) {
        addProd(prods[i]);
    }
}
////Обновляем запись в справочнике продуктов
function updDirRec(elem) {
    event.preventDefault();
    
    if (confirm("Сохранить изменения?")) {
        var idRecord, parentDIV, nameProd, edIzm, catProd, record = {}; 

        idRecord = $(elem).attr('data-id');
        parentDIV = $(elem).closest('div.mini-prods');
        
        record.nameProd = parentDIV.find('div.name-prod').html().trim();
        record.edIzm = parentDIV.find('select.edizm-prod :selected').val();
        record.catProd = parentDIV.find('select.cat-prod :selected').val();
        
        ajaxRequest('/directory/updProd/' + idRecord, 'list-prods', JSON.stringify(record)); 
        
        alert("Сохранено");
    }
    
}
////Удаляем картинку в справочнике продуктов
//function deletePicture(elem) {
//    event.preventDefault();
//    if (confirm("Удалить картинку?")) {
//        var namePic = elem.attr('data-img');
//        var idRecord = elem.attr('data-id');
//        var record = {};
//        record.img = namePic;
//
//        ajaxRequest('/directory/delpic/kt_dir_prod/' + idRecord, null, JSON.stringify(record));
//        elem.closest('div').find('img').remove();        
//    }
//}
//Составляем отчет
function getReport(elem) {
    var value, typeCondition;
    var typeReport = elem.attr('id');
    var reportFields = elem.closest('div').find('input.reports-fields:not(".nonselected")');
    var conditions = elem.closest('div').find('input.reports-conditions');
    
    var select = {}; 
    select.headers = [];
    select.fields = [];
    select.conditions = [];
    
    reportFields.each(function(){
        if ($(this).prop('checked')) {
            select.headers.push($(this).attr('data-header'));
            select.fields.push($(this).val());
        }
    });
    
    conditions.each(function(){
        if ($(this).prop('checked')) {            
            typeCondition = $(this).attr('data-type-condition');
            if (typeCondition == 'select') {                
                value = $(this).closest('label').next().val();
            } else if (typeCondition == 'multidate') {
                value = $(this).closest('label').nextAll('input.datebegin').val() + ',' 
                        + $(this).closest('label').nextAll('input.dateend').val();
            }
            select.conditions.push({
                "typeCondition": typeCondition,
                "nameCondition": $(this).val(), 
                "valueCondition": value
            });            
        }
    });    
    //alert(JSON.stringify(select));
    ajaxRequest('/report/get/' + typeReport, 'receiver-report', JSON.stringify(select));
}
//Функция вывода модального окна для списания 
function removeProdsFromStock(e, prods) {
    
    e.preventDefault(); 
    
    var idRequest = e.target.getAttribute('data-id');

    resetTable('table-act');
    
    for (var i = 0; i < prods.length; i++) {
        addProd(prods[i]);        
    }    
    
    $('div.modal-body').empty();
    $('#table-act').clone(true).appendTo('div.modal-body');
    $('#table-act input').attr('disabled', 'true');
    $('#showPartsRemoveModal-' + idRequest).modal('show');
}

//Сохранение списания
function saveRemoveProd(elem) {
    
    var record = {};
    var parentElem, trows, idRequest;
    
    parentElem = elem.closest('div.modal-content');
    trows = parentElem.find('#table-act tr:not(:first-child, :last-child)');
    idRequest = elem.attr('data-id');
    
    record.idRequest = idRequest;
    record.idScore = parentElem.find('#list-score-' + idRequest + ' :selected').val();
    
    record.prods = [];
    trows.each(function(){
        record.prods.push({
            "id_prod": $(this).attr('id'),            
            "count": $(this).find('input.td-amount').val(),
            "price": $(this).find('input.td-price').val(),
            "summa": $(this).find('i.value-summa').text(),
            "num_part": $(this).attr('data-num-part'),
            "id_stock": $(this).find('i.stock').text()
        });        
    });
    //alert(JSON.stringify(record));
    ajaxRequest('/sklad/savepartrem/', null, JSON.stringify(record));
    $('#showPartsRemoveModal-' + idRequest).modal('hide');
    
    alert('Сохранено'); 
    
    location.reload();
}
        
//Удаление операций по складу
function deleteStockOper(e) {
    
    e.preventDefault();
    
    if (confirm("Удалить запись?")) {
        var idRecord = e.target.getAttribute('data-id');        
    
        ajaxRequest('/sklad/del/' + idRecord, null, null);     
        
        deleteRow(e.target);
    }   
}
//
//Применить меню в новой калькуляяции
function useMenu(e) {
    
    e.preventDefault();

    var tableReceiptsRows = e.target.closest('table').rows;
    
    for (var i = 0; i < tableReceiptsRows.length - 1; i++) {
        addReceiptToNewCalc(tableReceiptsRows[i]);
    }
}
//Сохранение изменений в меню
function updateMenu(e) {
    var menu, idMenu;    
    
    idMenu = e.target.getAttribute('data-id');
    menu = getMenuJSON(idMenu);    
    
    ajaxRequest('/menus/updmenu/' + idMenu, null, menu);    
    
    alert('Запись обновлена');
    
    location.reload();    
    
}
//Добавление новых блюд в меню
function addReceiptsToMenu(e) {
    
    var idMenu = e.target.id;
    
    $('div#newReceiptToMenuModal').attr('data-id', idMenu);
    
    $('#newReceiptToMenuModal').modal('show');
    
}

//Удаление меню
function deleteMenu(e) {
    
    e.preventDefault();
    
    if (confirm("Удалить запись?")) {
        var idRecord = e.target.getAttribute('data-id');        
    
        ajaxRequest('/menus/delete/' + idRecord, null, null);
        
        location.reload();            
    }
}

//Сохранение меню 
function newMenuSave() {
    
    var menu;    

    menu = getMenuJSON();    
    
    ajaxRequest('/menus/addmenu/0', null, menu);    
    
    alert('Запись сохранена');
    
    //$('#newMenuModal').modal('hide');    
    
    location.reload();
    
}

function getMenuJSON(idMenu = 0) {
    
    var newMenu = {};
    
    newMenu.name = document.getElementById('name-new-menu-' + idMenu).value;    
    newMenu.receipts = [];
    
    var treceipts = document.getElementById('menu-receipts-' + idMenu).rows;
    
    for (var i = 1; i < treceipts.length; i++) {
        newMenu.receipts.push(
                treceipts[i].id
        );
    } 
    
    return JSON.stringify(newMenu); 
    
}
//Функция создания нового требования на продукты
function createRequest(idCalculation) {
    
    //event.preventDefault(); 
    
    if (confirm("Сформировать требование на продукты по данной калькуляции?")) {        
        ajaxRequest('/calculations/addrequest/' + idCalculation, null, null);   
        
        alert('Требование сформировано');
        location.reload();  
    }    
    
}

//Удалить требование
function deleteRequest(idRequest) {
    event.preventDefault();
    
    if (confirm("Удалить требование?")) {

        ajaxRequest('/calculations/delreq/' + idRequest, null, null);
        location.reload();
    }    
}

//
//Функция сохранения новой калькуляции
function saveNewCalculation() {
    
    var newCalculation = getCalcJSON();

    //alert(newCalculation);

    ajaxRequest('/calculations/save', null, newCalculation);    
    
    alert("Калькуляция сохранена");    
    
    window.location = '/calculations/show/0';
    
};

//УДаление калькуляции
function deleteCalculation(e) {
    
    if (confirm("Удалить калькуляцию?")) {
        
        var idCalc = e.target.getAttribute('data-id');
        
        ajaxRequest('/calculations/del/' + idCalc, null, null);
        
        alert("Запись удалена");
    }        
}

//Функция сохранения изменений в калькуляции
function saveUpdCalculation(idCalculation) {
    
    var updatedCalculation = getCalcJSON();
    //alert(updatedCalculation);
    
    ajaxRequest('/calculations/update/' + idCalculation, null, updatedCalculation); 
    
    alert('Запись обновлена');
    
    //window.location = '/calculations/show/0';
}
////Функция удаления записи
//function deleteRecord(e, url) {       
//    if (confirm("Удалить запись?")) {
//        var idRecord = e.target.getAttribute('data-id');
//        ajaxRequest(url + idRecord, null, null);        
//    }
//}
////Функция удаления записи и строки с записью (для таблиц)
//function deleteRecordAndRow(e, url) {   
//    deleteRecord(e, url);
//    deleteRow($(this));
//}

//
//Функция составления строки JSON с данными калькуляции
function getCalcJSON() {
    
    var idReceipt, tprods, tableProds, trows, prodsByReceipt = [];
    var newCalculation = {}; 
    newCalculation.dateCalc = $('#new-calc-date').val();   
    newCalculation.receipts = [];
        
    trows = document.getElementById('new-calc-receipts').rows;   
    
    for (var i = 1; i < trows.length; i++) { 
        prodsByReceipt = []; 
        idReceipt = trows[i].id;
        tableProds = trows[i].getElementsByClassName("new-calc")[0];
        
        if (tableProds) {
            tprods = tableProds.rows;          
            for (var j = 1; j < tprods.length-2; j++) {
                prodsByReceipt.push({
                    "idReceipt": idReceipt,                    
                    "idProd": tprods[j].id,
                    "brutto_1": parseFloat(tprods[j].querySelectorAll('input.brutto-1')[0].value)/1000,       
                    "netto_1": parseFloat(tprods[j].querySelectorAll('input.netto-1')[0].value)/1000,       
                    "brutto_2": parseFloat(tprods[j].querySelectorAll('input.brutto-2')[0].value)/1000,       
                    "netto_2": parseFloat(tprods[j].querySelectorAll('input.netto-2')[0].value)/1000       
                });
            }
        }    
        
        newCalculation.receipts.push({
            "idReceipt": idReceipt,
            "count": trows[i].getElementsByClassName("count-servings")[0].value,
            "weights": trows[i].getElementsByClassName("output-weights")[0].value,
            "basic": trows[i].getElementsByClassName("basics")[0].id, 
            "org": trows[i].getElementsByClassName("orgs")[0].id,
            "prods": prodsByReceipt
        });       

    }
    
    return newCalculation = JSON.stringify(newCalculation); 
    
}

//Функция добавления ингредиентов в блюдо в новой калькуляции
function addIngredientsNewCalc(e) {
    
    e.preventDefault();
    
    var id = e.target.getAttribute('data-id');

    $('#newCalcAddIngr').attr('data-id', 'receipt-ingr-' + id);
    
    //placed in addModal.php layouts
    $('#newCalcAddIngr').modal('show');
    
}
//
//Функция добавления блюда в новую калькуляцию по клику на рецепт
function addReceiptToNewCalc(elem) {
    var idReceipt, nameReceipt, outputone, outputtwo, orgs, org, txt;
    
    idReceipt = elem.getAttribute('data-id');
    nameReceipt = elem.getAttribute('data-name');
    outputone = elem.getAttribute('data-output-1');
    outputtwo = elem.getAttribute('data-output-2');
  
    var newRow = document.getElementById('new-calc-receipts').insertRow(1);
    
    newRow.setAttribute("id", idReceipt);
    newRow.setAttribute("class", "tr-receipts");
    newRow.insertCell(0).innerHTML = $('input[name=basic]:checked').attr('data-name');
    newRow.cells[0].setAttribute("id", $('input[name=basic]:checked').val());
    newRow.cells[0].setAttribute("class", "basics");
    newRow.insertCell(1).innerHTML = $('input[name=org]:checked').attr('data-name');
    newRow.cells[1].setAttribute("id", $('input[name=org]:checked').val());
    newRow.cells[1].setAttribute("class", "orgs");    
    newRow.insertCell(2).innerHTML = nameReceipt;
    newRow.insertCell(3).innerHTML = '<a href="#" class="glyphicon glyphicon-ok new-calc-show-ingr" \n\
                                        onclick="showIngredients(event, ' + idReceipt + ')">Показать ингредиенты</a>\n\
                                      <div id="receipt' + idReceipt + '"></div>';
    newRow.insertCell(4).innerHTML = '<input type="text" value="' + outputone + '/' + outputtwo + '" style="width: 70px;" class="output-weights" disabled>';
    newRow.insertCell(5).innerHTML = '<input type="number" value="0" style="width: 50px;" class="count-servings">';
    newRow.insertCell(6).innerHTML = '<a href="#" class="glyphicon glyphicon-remove remove-row" \n\
                                         title="Удалить из списка"></a>';
}
//Функция добавления рецепта в новое меню
function addReceiptToNewMenu(elem, tableId) {
    
    var idReceipt, nameReceipt, outputone, outputtwo;
    
    idReceipt = elem.getAttribute('data-id');
    nameReceipt = elem.getAttribute('data-name');
    outputone = elem.getAttribute('data-output-1');
    outputtwo = elem.getAttribute('data-output-2');
    
    var newRow = document.getElementById(tableId).insertRow(1);
    
    newRow.setAttribute("id", idReceipt);
    newRow.insertCell(0).innerHTML = '';
    newRow.insertCell(1).innerHTML = nameReceipt;
    newRow.insertCell(2).innerHTML = outputone + '/' + outputtwo;
    newRow.insertCell(3).innerHTML = '<a href="#" class="glyphicon glyphicon-remove remove-row"></a>';
}
//Показываем ингредиенты блюда в новой калькуляции
function showIngredients(event, idTechCard) {    
    event.preventDefault();  
    
    if (event.target.classList.contains('clicked')) {
        event.target.innerHTML = 'Показать ингредиенты';
        event.target.classList.remove('clicked');        
        document.getElementById('receipt-ingr-' + idTechCard).style.display = 'none';        
    } else {
        event.target.innerHTML = 'Скрыть ингредиенты';
        event.target.classList.add('clicked');        
        if (!event.target.closest('tr').classList.contains('changed')) {
            ajaxRequest('/tech/showrecingr/' + idTechCard, 'receipt' + idTechCard, null);        
        } else {
            document.getElementById('receipt-ingr-' + idTechCard).style.display = 'block';
        }
    }   
}
//
//Функция добавления записи в простой справочник
function insertRecordSimplyDir(element) {
    
    var nameDir = element.getAttribute('data-name-dir');
    var idDir = element.getAttribute('data-id-dir');
    var inputs = document.getElementsByClassName('dir-fields-' + nameDir); 
    var record = [];
    
    for (var i = 0; i < inputs.length; i++) {
        record.push(            
            inputs[i].value
        ); 
    }
    
    record = JSON.stringify(record); 
    
    ajaxRequest('/directory/save/' + nameDir + '/' + idDir, nameDir, record);
    
    alert("Сохранено");
    
}
//Функция редактирования простого справочника
function simplyUpd(e) {    
    e.preventDefault();
    var cells, prevValue, tableName, elem = e.target;
  
    cells = $(elem).closest('tr').children('td:not(:first, .non-updated)'); 
    if ($(elem).hasClass('glyphicon-pencil')) {
        $(elem).removeClass('glyphicon-pencil');
        $(elem).addClass('glyphicon-ok');        
        
        cells.each(function(){
            prevValue = $(this).text().trim();
            $(this).empty().append('<input type="text" value="' + prevValue + '">');
        });
    } else {
        if (confirm("Сохранить изменения?")) {
            $(elem).removeClass('glyphicon-ok');
            $(elem).addClass('glyphicon-pencil');       
            var tableName = elem.closest('table').id;
            var parentTR = elem.closest('tr');
            var idRecord = parentTR.children[0].getAttribute('class') + '=' + parentTR.children[0].getAttribute('data-id');
            var record = {};
            record.fields = [];            
            
            cells.each(function(){
                prevValue = $(this).children('input').val().trim();
                record.fields.push({
                    "nameField": $(this).attr('class'),
                    "valueField": prevValue
                });                                        
                $(this).empty().append(prevValue);
            });  
            
            ajaxRequest('/directory/simplyupd/' + tableName + '/' + idRecord, null, JSON.stringify(record));
        }
    }
}
//Функция удаления из простого справочника
function simplyDel(e) {    
    e.preventDefault();
    var elem = e.target;
    
    if (confirm('Удалить запись?')) {
        var tableName = elem.closest('table').id;
        var parentTR = elem.closest('tr');
        var idRecord = parentTR.children[0].getAttribute('class') + '=' + parentTR.children[0].getAttribute('data-id');
        
        ajaxRequest('/directory/simplydel/' + tableName + '/' + idRecord, null, null);
    }
    
    deleteRow(elem);
}
//
//Функция удаления рецепта (вкладки)
function deleteTab (element) {
    var idRecord = element.getAttribute('data-id');

    if (confirm("Удалить рецепт?")) {
        
        ajaxRequest('/tech/delete/' + idRecord + '/', 'list-receipts', null);
        
        //location.reload();                 
    }
}
//
//Функция добавления елемента в таблицу по клику на елемент
function addProd(prodBlock) {
    var nameProd, edIzm, idProd, priceProd, amountProd, summa, numPart, prodStock, parentTable, relId;
   
    idProd = prodBlock.getAttribute("data-id");
    priceProd = prodBlock.getAttribute("data-price");
    amountProd = prodBlock.getAttribute("data-amount");
    nameProd = prodBlock.getAttribute("data-prod-name");
    edIzm = prodBlock.getAttribute("data-ed-izm");
    numPart = prodBlock.getAttribute("data-num-part");
    prodStock = prodBlock.getAttribute('data-stock');
    relId = prodBlock.getAttribute('data-rel-id');
    summa = amountProd * priceProd;
    summa = summa.toFixed(2);
    
    var parentTable = document.getElementById('table-act');
    
    //Вставляем строчку с данными выбранного продукта в таблицу
    var newRow = parentTable.insertRow(1);
    newRow.setAttribute("id", idProd);    
    
    if (numPart) {
        newRow.setAttribute("data-num-part", numPart);
    }
    
    if (relId) {
        newRow.setAttribute("data-rel-id", relId);
    } else {
        newRow.setAttribute("data-rel-id", 0);
    }
    
    newRow.insertCell(0).innerHTML = nameProd;
    newRow.insertCell(1).innerHTML = edIzm;
    if (prodStock) {
        newRow.insertCell(2).innerHTML = '<i class="stock">' + prodStock + '</i>';
    } else {
        newRow.insertCell(2).innerHTML = '<i class="stock">' + $('#list-stock-1').val() + '</i>';
    }
    if (priceProd) {
        newRow.insertCell(3).innerHTML = '<input ng-required="true" type="number" \n\
                                             class="td-price" value="' + priceProd + '" disabled>';
    } else {
        newRow.insertCell(3).innerHTML = '<input ng-required="true" type="number" \n\
                                             class="td-price" value="0">';        
    }   
    if (amountProd) {
        newRow.insertCell(4).innerHTML = '<input ng-pattern="[0-9]+\.[0-9]{2}" ng-required="true" type="number" \n\
                                             class="td-amount" data-def-val="' + amountProd + '" value="' + amountProd + '">';        
    } else {
        newRow.insertCell(4).innerHTML = '<input ng-pattern="[0-9]+\.[0-9]{2}" ng-required="true" type="number" \n\
                                             class="td-amount" data-def-val="0" value="0">';          
    }
    newRow.insertCell(5).innerHTML = '<i class="value-summa">' + summa + '</i>';
    if ($(prodBlock).hasClass('returning-prods')) {
        newRow.insertCell(6).innerHTML = '<a href="#" class="glyphicon glyphicon-remove remove-row back-to-prod-list" title="Удалить из списка"></a>';
    } else {
        newRow.insertCell(6).innerHTML = '<a href="#" class="glyphicon glyphicon-remove remove-row" title="Удалить из списка"></a>';
    }    
    
    //placed in query.js
    recalcSummaryRow("table-act");
    
    if ($(prodBlock).hasClass('returning-prods')) {
        $(prodBlock).closest('div.tabbable').find('div.mini-prods[data-id=' + idProd + ']').addClass('hidden');
    }
}
//
//Функция добавления елемента в таблицу по клику на елемент
function addProdToReceipt(element, tableId) {

    var nameProd, edIzm, idProd;
    
    var parentTable = document.getElementById(tableId);
    
    //Вставляем строчку с данными выбранного продукта в таблицу
    var newRow = parentTable.insertRow(1);   
    
    idProd = element.getAttribute("data-id");
    nameProd = element.getAttribute("data-prod-name");
    edIzm = element.getAttribute("data-ed-izm");

    //Вставляем строчку с данными выбранного продукта в таблицу

    newRow.setAttribute("id", idProd);
    newRow.setAttribute("data-id-prod", idProd);

    newRow.insertCell(0).innerHTML = nameProd;
    newRow.insertCell(1).innerHTML = '<input type="number" min="0" class="td-netto-brutto brutto-1" value="0" style="width: 70px;">';
    newRow.insertCell(2).innerHTML = '<input type="number" min="0" class="td-netto-brutto netto-1" value="0" style="width: 70px;">';  
    newRow.insertCell(3).innerHTML = '<input type="number" min="0" class="td-netto-brutto brutto-2" value="0" style="width: 70px;">'; 
    newRow.insertCell(4).innerHTML = '<input type="number" min="0" class="td-netto-brutto netto-2" value="0" style="width: 70px;">';     
    newRow.insertCell(5).innerHTML = '<a href="#" class="glyphicon glyphicon-remove remove-row" title="Удалить из списка"></a>';

}
////Функции для перетаскивания
//function dragStart(e) {
//    e.target.style.opacity = '0.4';
//    
//    return true;
//}
//
//function dragEnd(e) {
//    e.target.style.opacity = '1.0';
//    
//    var receiver = document.getElementById('table-act');
//    var receiverCoords = receiver.getBoundingClientRect();
//    var receiverTop = receiverCoords.top;
//    var receiverLeft = receiverCoords.left;
//    var receiverRight = receiverCoords.right;
//    var receiverBottom = receiverCoords.bottom;
//    
//    if (e.pageY > receiverTop && e.pageX > receiverLeft && e.pageY < receiverBottom && e.pageX < receiverRight) {
//        addProd(e.target);
//    }
//
//    return true;
//}
//function dragEnter(e) {
//    e.preventDefault();
//    e.target.style.border = '1px solid blue';
//    
//}
//
//function dragLeave(e) {
//    e.target.style.border = '1px solid lightgrey';    
//}
//
//Функция чтения и сохранения данных(заглавная и табличная часть)
function readAndSaveData(tableId, typeOper, event = null) {
    var trows = document.getElementById(tableId).rows;
    var typeSave, record = {};
    
    if (typeOper == 'add') {
        record.id = $('#head-act').attr('data-id-oper');
        record.oper = 2;     
        record.organization = 0;
        record.stock = $('#list-stock-1').val();
        record.osnov = 0;
        record.bill = $('#list-score').val();   
        record.request = 0; 
        typeSave = 'saveadd';
    } else if (typeOper == 'rem') {        
        record.oper = 1;
        record.organization = $('#list-organizations').val();
        record.stock = $('#list-stock').val();
        record.osnov = $('#list-base').val();
        record.bill = $('#list-score').val();
        record.request = $('#list-requests').val();
        record.reason = $('#reason-remove').val();
        typeSave = 'saveremove';
    } else if (typeOper == 'ret') {
        record.oper = 3;     
        record.organization = 0;
        record.stock = 0;
        record.osnov = 0;
        record.bill = $('#list-score').val();
        record.request = $('#list-requests-1').val();
        typeSave = 'savereturn';
    } else if (typeOper == 'out') {
        record.id = $('#head-act').attr('data-id-oper');
        record.oper = 4;     
        record.organization = 0;
        record.stock = $('#list-stock').val();
        record.osnov = 0;
        record.bill = $('#list-score').val();
        record.request = 0;
        record.reason = $('#reason-remove').val();        
        typeSave = 'saveout';
    }
    
    record.prods = [];  
    
    for (var i = 1; i < trows.length-1; i++) {
        if (typeOper == 'rem' || typeOper == 'out') {
            record.prods.push({
                "id": trows[i].getAttribute("id"),
                "idpos": trows[i].getAttribute("data-id-pos"),
                "price": trows[i].getElementsByClassName("td-price")[0].value,
                "amount": (parseFloat(trows[i].getElementsByClassName("td-amount")[0].value) * -1),
                "summa": parseFloat(trows[i].getElementsByClassName("value-summa")[0].innerHTML) * -1,
                "part": trows[i].getAttribute("data-num-part"),
                "rel": trows[i].getAttribute("data-rel-id")
            });
        } else if (typeOper == 'add') {
            record.prods.push({
                "id": trows[i].getAttribute("id"),
                "idpos": trows[i].getAttribute("data-id-pos"),
                "price": trows[i].getElementsByClassName("td-price")[0].value,
                "amount": parseFloat(trows[i].getElementsByClassName("td-amount")[0].value),
                "summa": parseFloat(trows[i].getElementsByClassName("value-summa")[0].innerHTML),
                "part": 'p' + trows[i].getAttribute("id") + '-' + trows[i].getElementsByClassName("td-price")[0].value,
                "rel": 0
            });            
        } else if (typeOper == 'ret') {             
            record.prods.push({
                "id": trows[i].getAttribute("id"),
                "idpos": trows[i].getAttribute("data-id-pos"),
                "price": trows[i].getElementsByClassName("td-price")[0].value,
                "amount": parseFloat(trows[i].getElementsByClassName("td-amount")[0].value),
                "summa": parseFloat(trows[i].getElementsByClassName("value-summa")[0].innerHTML),
                "part": trows[i].getAttribute("data-num-part"),
                "stock": trows[i].getElementsByClassName("stock")[0].innerHTML,
                "rel": trows[i].getAttribute("data-rel-id")
            });             
        }
    }

    record = JSON.stringify(record);   
    //alert(record);
    if (event) {
        if ($(event.target).hasClass("update-oper")) {
            ajaxRequest('/sklad/saveupd', null, record);
            alert('Обновлено');
        }
    } else {
        ajaxRequest('/sklad/' + typeSave, null, record); 
        alert('Сохранено');
    }    
        
    location.reload();   
}
//Сохраняем новую технологическую карту(рецепт)
function saveReceipt() {

    var Receipt = {};
    
    Receipt.name = document.getElementById("name-new-receipt").value;
    Receipt.tech = document.getElementById("tech-new-receipt").value;
    Receipt.chem = document.getElementById("chem-new-receipt").value;
    Receipt.idcr = $("#cat-new-receipt :selected").attr('id');
    Receipt.outputone = $("#table-receipt tr.summary-weight td.summary-netto-1").text();
    Receipt.outputtwo = $("#table-receipt tr.summary-weight td.summary-netto-2").text();
    Receipt.prodsByReceipt = [];
    
    var idProdCategory = Receipt.idcr;
    
    var trows = document.getElementById("table-receipt").rows; 
    for (var i = 1; i < trows.length-1; i++) {
        Receipt.prodsByReceipt.push({
            "id": trows[i].getAttribute("id"),
            "amountbrone": parseFloat(trows[i].getElementsByClassName("brutto-1")[0].value)/1000,
            "amountnone": parseFloat(trows[i].getElementsByClassName("netto-1")[0].value)/1000,
            "amountbrtwo": parseFloat(trows[i].getElementsByClassName("brutto-2")[0].value)/1000,
            "amountntwo": parseFloat(trows[i].getElementsByClassName("netto-2")[0].value)/1000
        });
    }
    
    Receipt = JSON.stringify(Receipt);  
    
    ajaxRequest("/tech/save/" + idProdCategory, 'list-receipts', Receipt);    
    
    $('body').removeClass('modal-open');
    
    //location.reload();   

}
//
//Обновляем технологическую карту(рецепт)
function updateReceipt(element) {
    
    if (confirm("Сохранить изменения?")) {
        var Receipt = {};
        var idReceipt = element.getAttribute("data-id");
                
        var $rows = $('#prodsbyreceipt-' + idReceipt + ' tr:not(:first, :last)');
        var $summaryRow = $('#prodsbyreceipt-' + idReceipt + ' tr.summary-weight');


        Receipt.id = idReceipt;
        Receipt.name = document.getElementById("name-upd-receipt-" + idReceipt).innerHTML.trim();
        Receipt.tech = document.getElementById("tech-upd-receipt-" + idReceipt).innerHTML.trim();
        Receipt.chem = document.getElementById("chem-upd-receipt-" + idReceipt).innerHTML.trim();        
        Receipt.outputone = $summaryRow.find('td.summary-netto-1').text();
        Receipt.outputtwo = $summaryRow.find('td.summary-netto-2').text();        

        Receipt.prodsByReceipt = [];

        $rows.each(function() { 
            Receipt.prodsByReceipt.push({
                "idprod": $(this).attr("data-id-prod"),
                "amountbrone": $(this).find('input.brutto-1').val()/1000,
                "amountnone": $(this).find('input.netto-1').val()/1000,
                "amountbrtwo": $(this).find('input.brutto-2').val()/1000,
                "amountntwo": $(this).find('input.netto-2').val()/1000
            });                    
        });

        Receipt = JSON.stringify(Receipt);
        //alert(Receipt);

        ajaxRequest("/tech/upd/" + idReceipt, null, Receipt);
        
        //location.reload();
    }
    
}
//

//Експорт в ворд
function exportToWord(element) {
    
    var idReceipt = element.getAttribute("data-id");
    
    $("#printable-area-" + idReceipt).wordExport('receipt # ' + idReceipt);
    
}
//
//Функция заполнения редактируемыми данными формы для редактирования рецептов
function showListProds(element) {  

    var $idReceipt = $(element).attr('data-id-receipt');
    
    if ($('div').is('.update-receipt-' + $idReceipt)) {
        $('#addIngr-' + $idReceipt).empty();   
    } else {
        ajaxRequest('/tech/addingr/' + $idReceipt, 'addIngr-' + $idReceipt, null);    
    } 
    
}


