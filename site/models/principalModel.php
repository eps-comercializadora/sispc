<?php

class principalModel extends Model
{
    public function __construct() {
        parent::__construct();
    }
    
public function buscar_por_code($codigo){


$sql="select empresa_cargada.*,municipios.municipio,parroquias.parroquia from empresa_cargada LEFT JOIN municipios on empresa_cargada.id_municipio = municipios.id_municipio LEFT JOIN parroquias on parroquias.id_municipio = municipios.id_municipio and empresa_cargada.id_parroquia = parroquias.id_parroquia where codigo_sica like '%$codigo%' ";

$datos = $this->_db->query($sql);
        
return $datos->fetchall();

}

public function buscar_por_rif($datos){


 $sql="select empresa_cargada.*,municipios.municipio,parroquias.parroquia from empresa_cargada LEFT JOIN municipios on empresa_cargada.id_municipio = municipios.id_municipio LEFT JOIN parroquias on parroquias.id_municipio = municipios.id_municipio and empresa_cargada.id_parroquia = parroquias.id_parroquia where  tipo_rif_id ='".$datos['tipo']."' and rif = '".$datos['rif']."'  ";

$datos = $this->_db->query($sql);
        
return $datos->fetchall();

}

}?>
