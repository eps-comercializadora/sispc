<?php

class cruzeModel extends Model
{
    public function __construct() {
        parent::__construct();
    }
    





public function cruze(){


        $sql="select * from empresa order by rif";

        $datos = $this->_db->query($sql);
                
        $rs_mysql=$datos->fetchall();




        $serverName = "servidor";
        $connectionInfo = array( "Database"=>"enterpriseadmindb", "UID"=>"sa", "PWD"=>"9822");
        $conn = sqlsrv_connect( $serverName, $connectionInfo );
        if( $conn === false ) {
            die( print_r( sqlsrv_errors(), true));
        }


        $x=1;

        for ($i=0; $i < count($rs_mysql) ; $i++) { 
        	

        $sql = "SELECT id3, descrip, Represent,Telef FROM saclie where id3='".$rs_mysql[$i]['tipo_rif_id'].$rs_mysql[$i]['rif']."' order by id3";
        $stmt = sqlsrv_query( $conn, $sql );
        if( $stmt === false) {
            die( print_r( sqlsrv_errors(), true) );
        }

        while( $row = sqlsrv_fetch_array( $stmt, SQLSRV_FETCH_NUMERIC) ) {
        //echo $x;
        //print_r($row);


        $array[$x]=$row;
        $array[$x][]=$rs_mysql[$i]['codigo_sica'];


        $x++;

        }








        }


        return $array;}
public function cruze2(){


      $sql="select * from empresa order by rif";

      $datos = $this->_db->query($sql);
              
      $rs_mysql=$datos->fetchall();




      $serverName = "servidor";
      $connectionInfo = array( "Database"=>"enterpriseadmindb", "UID"=>"sa", "PWD"=>"9822");
      $conn = sqlsrv_connect( $serverName, $connectionInfo );
      if( $conn === false ) {
          die( print_r( sqlsrv_errors(), true));
      }


      $x=1;

      for ($i=0; $i < count($rs_mysql) ; $i++) { 
      	

      $sql = "SELECT SACLIE.CodClie,SACLIE.Descrip,SAFACT.NumeroD,SAFACT.tipofac,SAFACT.fechai
      FROM SACLIE SACLIE INNER JOIN SAFACT SAFACT ON 
           (SAFACT.NumeroD = SACLIE.NumeroUV)
            AND (SAFACT.CodClie = SACLIE.CodClie)
            and (SACLIE.CodClie = '".$rs_mysql[$i]['tipo_rif_id'].$rs_mysql[$i]['rif']."')";

      $stmt = sqlsrv_query( $conn, $sql );
      while( $row = sqlsrv_fetch_array( $stmt, SQLSRV_FETCH_NUMERIC) ) {
      //echo $x;
      //print_r($row);


      $array[$x]=$row;
      $array[$x][]=$rs_mysql[$i]['codigo_sica'];





      $sql = "SELECT SAITEMFAC.Descrip1,SAITEMFAC.Coditem,SAITEMFAC.Cantidad FROM SAITEMFAC where NumeroD='".$array[1][2]."'
       ";
      $stmt = sqlsrv_query( $conn, $sql );
      if( $stmt === false) {
          die( print_r( sqlsrv_errors(), true) );
      }
      while( $row = sqlsrv_fetch_array( $stmt, SQLSRV_FETCH_NUMERIC) ) {

      $array[$x][6][]=$row;

      }




      $x++;

      }

      }



      return $array;
    }
public function reporte1(){


    

      //conexion
      $serverName = "servidor";
      $connectionInfo = array( "Database"=>"enterpriseadmindb", "UID"=>"sa", "PWD"=>"9822");
      $conn = sqlsrv_connect( $serverName, $connectionInfo );
     
      //consulta

    $sql = "SELECT 
    SAFACT.fechai as fecha_defactura,
    SAFACT.NumeroD as nro_factura,
    SAFACT.descrip as nombre_cliente,
    SAFACT.contado as monto_contado,
    SAFACT.credito as monto_credito,
    SAFACT.notas1 as autoriza,
    SAVEND.descrip as vendedor,
    SACLIE.movil as tlf_cliente,
    SAFACT.notas2 as municipio_parroquia,
    SAOPER.descrip as operacion,
    SAFACT.notas3 as combos_cajas
FROM SAFACT SAFACT INNER JOIN SAOPER SAOPER ON 
     (SAOPER.CodOper = SAFACT.CodOper)
      INNER JOIN SACLIE SACLIE ON 
     (SACLIE.CodClie = SAFACT.CodClie) and (SACLIE.CodClie = 'V 20574205')
      INNER JOIN SAVEND SAVEND ON 
     (SAVEND.CodVend = SAFACT.CodVend)
     ";

    //send a db

    $stmt = sqlsrv_query( $conn, $sql );
    while( $row = sqlsrv_fetch_array( $stmt, SQLSRV_FETCH_ASSOC) ) {

    $array[]=$row;
    
    }

    print_r($array);

/*
for ($i=0; $i < count($array) ; $i++) { 



$stmt = sqlsrv_query( $conn, $sql );
    while( $row = sqlsrv_fetch_array( $stmt, SQLSRV_FETCH_ASSOC) ) {

    $array[$i]=$row;
    
    }

 
}

*/




    }



}?>
