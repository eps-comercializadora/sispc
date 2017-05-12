<?php

class principalModel extends Model
{
    public function __construct() {
        parent::__construct();
    }
    
public function buscar_por_code($codigo){


$sql="select empresa.*,municipios.municipio,parroquias.parroquia from empresa LEFT JOIN municipios on empresa.id_municipio = municipios.id_municipio LEFT JOIN parroquias on parroquias.id_municipio = municipios.id_municipio and empresa.id_parroquia = parroquias.id_parroquia where codigo_sica like '%$codigo%' ";

$datos = $this->_db->query($sql);
        
return $datos->fetchall();

}

public function buscar_por_rif($datos){


$sql="select empresa.*,municipios.municipio,parroquias.parroquia from empresa LEFT JOIN municipios on empresa.id_municipio = municipios.id_municipio LEFT JOIN parroquias on parroquias.id_municipio = municipios.id_municipio and empresa.id_parroquia = parroquias.id_parroquia where  tipo ='".$datos['tipo']."' and rif = '".$datos['rif']."'  ";

$datos = $this->_db->query($sql);
        
return $datos->fetchall();

}

}?>
