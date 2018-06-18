<?php
/**
 * Description of User
 *
 * @author ALENA
 */
class User {
    
    /**
     * Метод для проверки пользователя гость он или нет
     *
     * @return boolean
     */
    public static function isGuest()
    {
        if (isset($_SESSION['id_user'])) {
            return false;            
        }
        
        return true;
    }
    
    public static function isAdmin()
    {
        if (self::isGuest()) {
            return false;
        }
        
        $userData = self::userData($_SESSION['id_user']);        
        if ($userData[0]['role'] == 'admin') {
            
            return true;
            
        }
        
        return false;
    }  
    
    public static function userData($id)
    {
        
        return $userData = Functions::getRecords('query', null, 
                    "Select * from kt_users where id = $id");                                    

    }    
        
    /**
     * Проверка логина пользователя, есть ли такой пользователь в базе
     * 
     * @param type $options <p>Полученный из формы авторизации логин и пароль</p>
     * @return type integer <p>Идентификатор пользователя</p>
     */
    public static function userLogin($options) 
    {
        $db = DB::getConnection();
        
        $sql = "SELECT id FROM kt_users WHERE name = '" . $options['name'] . 
               "' AND password = '" . $options['password'] . "'";
        
        $uslAr = array();
        $usl = $db->query("SELECT id FROM kt_users WHERE name = '" . $options['name'] . 
               "' AND password = '" . $options['password'] . "'"); 
        $i = 0;
        while ($row = $usl->fetch()) {
            $uslAr[$i]['id'] = $row['id'];
            $i++;
        }
        
        return $uslAr[0]['id'];
    }
}
