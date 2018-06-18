<?php

return array (
    'news/([a-z]+)/([0-9]+)' => 'news/view/$1/$2',
    'news' => 'news/index',
    'articles/([a-z]+)/([0-9]+)' => 'articles/view/$1/$2',
    'articles' => 'articles/index',
    
    //Регистрация пользователя
    'user/login' => 'user/userLogin',
    'user/logout' => 'user/userLogout',
    
    //Главное меню    
    'sklad/showlist/([0-9]+)' => 'stock/showListOper/$1',
    'sklad/show/([0-9]+)' => 'stock/showOper/$1',
    'sklad/upd/([0-9]+)' => 'stock/updateOper/$1',
    'sklad/del/([0-9]+)' => 'stock/deleteOper/$1',
    'sklad/saveadd' => 'stock/saveAddRemOut',
    'sklad/saverem' => 'stock/saveAddRemOut',
    'sklad/savereturn' => 'stock/saveReturn',
    'sklad/savepartrem' => 'stock/savePartRem',
    'sklad/saveout' => 'stock/saveAddRemOut',
    'sklad/saveupd' => 'stock/saveUpd',
    'sklad/invlist' => 'stock/invList',
    'sklad/showinv/([0-9]+)' => 'stock/showInv/$1',
    'sklad/delinv/([0-9]+)' => 'stock/deleteInv/$1',
    'sklad/inner' => 'stock/showStockInner',
    'sklad/add' => 'stock/add',
    'sklad/rem/([0-9]+)' => 'stock/rem/$1',
    'sklad/ret/([0-9]+)' => 'stock/ret/$1',
    'sklad/out' => 'stock/out',
    'sklad/getinv' => 'stock/inv',
    'sklad' => 'stock/index',    
    
    //'tech/([a-z]+)/([0-9]+)' => 'receipt/receiptOper/$1/$2',    
    'tech/addingr/([0-9]+)' => 'receipt/addIngr/$1',
    'tech/showrecingr/([0-9]+)' => 'receipt/showRecIngr/$1', 
    'tech/show/([0-9]+)' => 'receipt/showReceipts/$1', 
    'tech/showall' => 'receipt/showAllReceipts', 
    'tech/save/([0-9]+)' => 'receipt/saveReceipt/$1', 
    'tech/upd/([0-9]+)' => 'receipt/updateReceipt/$1', 
    'tech/delete/([0-9]+)' => 'receipt/deleteReceipt/$1',   
    'tech' => 'receipt/index',    
    
    //'directory/([a-z]+)/([a-z_]+)/([a-z_=0-9]+)' => 'dir/directoryOper/$1/$2/$3',    
    'directory/showDir/([a-z_]+)/([0-9]+)' => 'dir/showDirectory/$1/$2',    
    'directory/saveProd' => 'dir/saveProd',    
    'directory/updProd/([0-9]+)' => 'dir/updProd/$1',    
    'directory/save/([a-z_]+)/([0-9]+)' => 'dir/save/$1/$2',    
    'directory/del/([0-9]+)' => 'dir/deleteProd/$1',    
    'directory/simplydel/([a-z_]+)/([0-9a-z_=]+)' => 'dir/delete/$1/$2',    
    'directory/simplyupd/([a-z_]+)/([0-9a-z_=]+)' => 'dir/update/$1/$2',    
    'directory' => 'dir/index',     
    
    //'calculations/([a-z]+)/([0-9]+)' => 'calc/calcOper/$1/$2',    
    'calculations/show' => 'calc/show',    
    'calculations/add' => 'calc/add',    
    'calculations/save' => 'calc/save', 
    'calculations/del/([0-9]+)' => 'calc/delCalc/$1', 
    'calculations/showcalc/([0-9]+)' => 'calc/showcalc/$1',    
    'calculations/updcalc/([0-9]+)' => 'calc/updcalc/$1',    
    'calculations/update/([0-9]+)' => 'calc/saveUpdate/$1',    
    'calculations/listrequests' => 'calc/listRequests',    
    'calculations/listremoves/([0-9]+)' => 'calc/listRemoves/$1',    
    'calculations/listreturns/([0-9]+)' => 'calc/listReturns/$1',    
    'calculations/addrequest/([0-9]+)' => 'calc/addRequest/$1',    
    'calculations/showrequest/([0-9]+)' => 'calc/showRequest/$1',    
    'calculations/showrem/([0-9]+)' => 'calc/showRemRet/$1',    
    'calculations/showret/([0-9]+)' => 'calc/showRemRet/$1',    
    'calculations/delreq/([0-9]+)' => 'calc/deleteRequest/$1',
    'calculations/history/([0-9]+)' => 'calc/showHistory/$1',
    'calculations' => 'calc/index',
    
    'menus/([a-z]+)/([0-9]+)' => 'menu/menuOper/$1/$2',    
    'menus' => 'menu/index',
    
    'report/get/([a-z]+)' => 'report/createReport/$1',
    'report/([a-z]+)' => 'report/getReports/$1',  
    'report' => 'report/index',
    
    //Общие
    'index.html' => 'site/index',
    'index.php' => 'site/index',
    '' => 'site/index'   
);



