<?php

class principalModel extends Model
{
    public function __construct() {
        parent::__construct();
    }
    
public function buscar_por_code($codigo){


$sql="select * from empresa where codigo_sica like '%$codigo%'";

$datos = $this->_db->query($sql);
        
return $datos->fetchall();

}

}?>
