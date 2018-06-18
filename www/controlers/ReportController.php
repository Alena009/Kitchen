<?php

/**
 * Description of ReportController
 *
 * @author Alena
 */
class ReportController {
    
    public static function actionIndex() {
        
        require_once(ROOT . '/views/reports/index.php');

        return true;
    }
    
    public static function actionGetReports($typeReport) {
        
        $idReport = Functions::getRecords('query', null, 
                'Select id from kt_reports where name_report = "' . $typeReport . '"');
        
        $idReport = $idReport[0]['id'];
        
        $fields = Functions::getRecords('query', null, 
                "Select * from kt_reports_fields where id_report = $idReport order by order_num asc");
        
        $conditions = Functions::getRecords('query', null, 
                "Select * from kt_reports_conditions where id_report = $idReport order by description_condition asc");
        
        if ($typeReport == 'stock') {            
            $nameTypeReport = 'Отчеты по складу';
                    
        } elseif ($typeReport == 'kitchen') {            
            $nameTypeReport = 'Отчеты по кухне';
            
        } elseif ($typeReport =='options') {            
            $nameTypeReport = 'Отчеты по выбранным критериям';
            
        }
        
        require_once(ROOT . '/views/reports/reports.php');
        
        return true;
    }
    
    public static function actionCreateReport($typeReport) {
        
        $mas = json_decode($_POST["jsonData"], true);
        
        $headers = $mas['headers'];
        
        $data = Report::getData($mas, $typeReport);       
        
        require_once(ROOT . '/views/reports/innerReport.php');
        
        return true;        
    }
}
