<?php

class cruzeModel extends Model
{
    public function __construct() {
        parent::__construct();
    }
    





public function cruze(){


$sql="select * from empresa";

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
	

//echo $i."<br>";
//print_r($rs_mysql[$i]['razon_social']);



$sql = "SELECT id3, descrip FROM saclie where id3='".$rs_mysql[$i]['tipo'].$rs_mysql[$i]['rif']."'";
$stmt = sqlsrv_query( $conn, $sql );
if( $stmt === false) {
    die( print_r( sqlsrv_errors(), true) );
}

while( $row = sqlsrv_fetch_array( $stmt, SQLSRV_FETCH_NUMERIC) ) {
echo $x;
print_r($row);
$x++;

}








}














}

}?>
