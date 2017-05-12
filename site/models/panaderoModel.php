<?php

class panaderoModel extends Model
{
    public $estados;
      public $municipios;


    public function __construct() {
        parent::__construct();
    }

    



    public function cargar_estados_all(){


    $sql="select * from estados";
       

        $datos = $this->_db->query($sql);
        $datos->setFetchMode(PDO::FETCH_ASSOC);

        $this->estados=$datos->fetchall();


    }
        public function cargar_municipio($id_estado){


    $sql="select * from municipios where id_estado='$id_estado' ";
       

        $datos = $this->_db->query($sql);
        $datos->setFetchMode(PDO::FETCH_ASSOC);

        $this->municipios=$datos->fetchall();
        //print_r($datos->fetchall());
        return $datos->fetchall();



    }
            public function cargar_parroquia($municipio){


    $sql="select * from parroquias where id_municipio='$municipio' ";
       

        $datos = $this->_db->query($sql);
        $datos->setFetchMode(PDO::FETCH_ASSOC);

        $this->parroquia=$datos->fetchall();
        //print_r($datos->fetchall());
        return $datos->fetchall();



    }
            public function cargar_municipio_ajax($id_estado){


    $sql="select * from municipios where id_estado='$id_estado' ";
       

        $datos = $this->_db->query($sql);
        $datos->setFetchMode(PDO::FETCH_ASSOC);
        return $datos->fetchall();



    }
               public function cargar_parroquia_ajax($id_estado){


    $sql="select * from parroquias where id_municipio='$id_estado'";
       

        $datos = $this->_db->query($sql);
        $datos->setFetchMode(PDO::FETCH_ASSOC);
        return $datos->fetchall();



    }

                public function guardar($datos){





    $sql="insert into empresa values ('','".$datos['municipio']."','".$datos['parroquia']."','".$datos['codigo']."','".$datos['figura']."','".$datos['rif']."','".$datos['razon']."','".$datos['tipo_ente']."','".$datos['circuito']."')";
    $this->_db->query($sql);
    $id_empresa=$this->_db->lastInsertId();

    for ($i=0; $i < count($datos['emp_tlf']) ; $i++) { 
      if ($datos['emp_tlf'][$i]!=''):
       $sql="insert into telefono_emp values ('','".$id_empresa."','".$datos['emp_tlf'][$i]."','empresa')";
    $this->_db->query($sql);
      endif;
      
}

    for ($i=0; $i < count($datos['emp_email']); $i++) { 
  if ($datos['emp_email'][$i]!=''):
     $sql="insert into email_emp values ('','".$id_empresa."','".$datos['emp_email'][$i]."','empresa')";
    $this->_db->query($sql);
    endif;
    }


     $sql="insert into gerencia values ('','".$id_empresa."','".$datos['nacionalidad']."','".$datos['cedula']."','".$datos['nombres']."','".$datos['apellidos']."','".$datos['sexo']."','propietario')";
    $this->_db->query($sql);
    $id_dueno=$this->_db->lastInsertId();


        for ($i=0; $i < count($datos['due_tlf']) ; $i++) { 
  if ($datos['due_tlf'][$i]!=''):
     $sql="insert into telefono_gere values ('','".$id_dueno."','".$datos['due_tlf'][$i]."','propietario')";
    $this->_db->query($sql);
    endif;
}

    for ($i=0; $i < count($datos['due_email']); $i++) { 
  if ($datos['due_email'][$i]!=''):
     $sql="insert into email_gere values ('','".$id_dueno."','".$datos['due_email'][$i]."','propietario')";
    $this->_db->query($sql);
    endif;

    }


     $sql="insert into gerencia values ('','".$id_empresa."','".$datos['enc_nacionalidad']."','".$datos['enc_cedula']."','".$datos['enc_nombres']."','".$datos['enc_apellidos']."','".$datos['enc_sexo']."','encargado')";
    $this->_db->query($sql);
    $id_dencargado=$this->_db->lastInsertId();


        for ($i=0; $i < count($datos['enc_tlf']) ; $i++) { 
  if ($datos['enc_tlf'][$i]!=''):
     $sql="insert into telefono_gere values ('','".$id_dencargado."','".$datos['enc_tlf'][$i]."','encargado')";
    $this->_db->query($sql);
    endif;
}

    for ($i=0; $i < count($datos['enc_email']); $i++) { 
  if ($datos['enc_email'][$i]!=''):
     $sql="insert into email_gere values ('','".$id_dencargado."','".$datos['enc_email'][$i]."','encargado')";
    $this->_db->query($sql);
    endif;

    }


 

     $sql="insert into materia_prima_req values ('','".$id_empresa."','".$datos['harina']."','".$datos['azucar']."','".$datos['sal']."','".$datos['manteca']."','".$datos['margarina']."','".$datos['levadura']."','".$datos['aceite']."')";

      $this->_db->query($sql);




          for ($i=0; $i < count($datos['maquina']); $i++) { 

    $sql="insert into maquinas values ('','".$id_empresa."','".$datos['maquina'][$i]['maquina']."','".$datos['maquina'][$i]['cantidad']."','".$datos['maquina'][$i]['estatus']."')";

      $this->_db->query($sql);


     $sql="insert into materia_prima_req values ('','".$id_empresa."','".$datos['cap_operativa']."','".$datos['cap_almacen']."','".$datos['cap_instalada']."')";

      $this->_db->query($sql);

        

}

    }


}

?>
