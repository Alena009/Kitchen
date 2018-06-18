<?php

/**
 * Description of UserController
 *
 * @author Alena
 */
class UserController {
    
    public static function actionIndex() {        
        
        return true;
    }    
    
    public static function actionUserLogin() {
        
        $_SESSION['id_user'] = User::userLogin($_POST);  
        
        header( 'Location: /', true, 307 );

    } 
    
    public static function actionUserLogout() {
        
        unset($_SESSION['id_user']);
        
        header( 'Location: /', true, 307 );

    }     

}
