<?php

class principalModel extends Model
{
    public function __construct() {
        parent::__construct();
    }
    
public function a(){

$datos = $this->_db->query($sql);
        
return $datos->fetchall();

}

}?>
