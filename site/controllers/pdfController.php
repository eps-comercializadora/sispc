<?php

class pdfController extends Controller
{
    private $cruze;

    public function __construct() {
        parent::__construct();
        $this->getLibrary('fpdf');
		$this->cruze=$this->loadModel('cruze');

				
        $this->_pdf = new fpdf;
    }
    
    public function index(){}
	
    public function cruzar(){

			$array=$this->cruze->cruze();
			//print_r($array);

			$this->_pdf->AddPage();
			$this->_pdf->SetFont('Arial','B',12);


			$this->_pdf->SetFont('Arial','B',12);
			$this->_pdf->Cell(190,8, utf8_decode('LISTA'),0,1,'C');
			$this->_pdf->Ln(15);
			$this->_pdf->SetFont('Arial','',8);

			$this->_pdf->Cell(5,6, utf8_decode('Nº'),1,0,'C');
			$this->_pdf->Cell(14,6, utf8_decode('COD.SICA'),1,0,'C');
			$this->_pdf->Cell(14,6, utf8_decode('RIF'),1,0,'C');
			$this->_pdf->Cell(100,6, utf8_decode('DESCRIPCION'),1,0,'C');	
			$this->_pdf->Cell(58,6, utf8_decode('REPRESENTANTE'),1,1,'C');
		
			$this->_pdf->SetFont('Arial','',6);
			for ($i=1; $i <= count($array)  ; $i++) { 
			
			$this->_pdf->Cell(5,6, $i,1,0,'C');
			$this->_pdf->Cell(14,6, utf8_decode($array[$i]['4']),1,0,'C');
			$this->_pdf->Cell(14,6, $array[$i]['0'],1,0,'L');
			$this->_pdf->Cell(100,6, utf8_decode($array[$i]['1']),1,0,'L');	
			$this->_pdf->Cell(58,6, utf8_decode($array[$i]['2']),1,1,'C');
			


			}








			$this->_pdf->Output();}
	public function cruze2(){

	

			$array=$this->cruze->cruze2();


			//print_r($res);


			$this->_pdf->AddPage();
			$this->_pdf->SetFont('Arial','B',12);


			$this->_pdf->SetFont('Arial','B',12);
			$this->_pdf->Cell(190,8, utf8_decode('LISTA'),0,1,'C');
			$this->_pdf->Ln(15);
			$this->_pdf->SetFont('Arial','',8);

			
		
			$this->_pdf->SetFont('Arial','',6);
			for ($i=1; $i <= count($array)  ; $i++) { 
			$this->_pdf->Cell(5,6, utf8_decode('Nº'),1,0,'C');
			$this->_pdf->Cell(14,6, utf8_decode('COD.SICA'),1,0,'C');
			$this->_pdf->Cell(14,6, utf8_decode('RIF'),1,0,'C');
			$this->_pdf->Cell(100,6, utf8_decode('DESCRIPCION'),1,0,'C');	
			$this->_pdf->Cell(58,6, utf8_decode('COD.FACTURA'),1,1,'C');
			
			$this->_pdf->Cell(5,6, $i,1,0,'C');
			$this->_pdf->Cell(14,6, utf8_decode($array[$i]['5']),1,0,'C');
			$this->_pdf->Cell(14,6, $array[$i]['0'],1,0,'L');
			$this->_pdf->Cell(100,6, utf8_decode($array[$i]['1']),1,0,'L');	
			$this->_pdf->Cell(58,6, utf8_decode($array[$i]['2']),1,1,'C');
			$this->_pdf->Cell(191,6, utf8_decode("Fecha de la ultima factura:".$array[$i]['4']->format('d/m/Y')),1,1,'C');

				for ($f=0; $f < count($array[$i][6]) ; $f++) { 
					
			$this->_pdf->Cell(58,6, utf8_decode($array[$i][6][$f][1]),0,0,'L');	
			$this->_pdf->Cell(58,6, utf8_decode($array[$i][6][$f][0]),0,0,'L');
			$this->_pdf->Cell(58,6, intval($array[$i][6][$f][2]),0,1,'L');
				}


				}
				$this->_pdf->Output();}
	public function reporte1(){

	

			$array=$this->cruze->reporte1();


			/*print_r($res);


			$this->_pdf->AddPage();
			$this->_pdf->SetFont('Arial','B',12);


			$this->_pdf->SetFont('Arial','B',12);
			$this->_pdf->Cell(190,8, utf8_decode('LISTA'),0,1,'C');
			$this->_pdf->Ln(15);
			$this->_pdf->SetFont('Arial','',8);

			
		
			$this->_pdf->SetFont('Arial','',6);
			for ($i=1; $i <= count($array)  ; $i++) { 
			$this->_pdf->Cell(5,6, utf8_decode('Nº'),1,0,'C');
			$this->_pdf->Cell(14,6, utf8_decode('COD.SICA'),1,0,'C');
			$this->_pdf->Cell(14,6, utf8_decode('RIF'),1,0,'C');
			$this->_pdf->Cell(100,6, utf8_decode('DESCRIPCION'),1,0,'C');	
			$this->_pdf->Cell(58,6, utf8_decode('COD.FACTURA'),1,1,'C');
			
			$this->_pdf->Cell(5,6, $i,1,0,'C');
			$this->_pdf->Cell(14,6, utf8_decode($array[$i]['5']),1,0,'C');
			$this->_pdf->Cell(14,6, $array[$i]['0'],1,0,'L');
			$this->_pdf->Cell(100,6, utf8_decode($array[$i]['1']),1,0,'L');	
			$this->_pdf->Cell(58,6, utf8_decode($array[$i]['2']),1,1,'C');
			$this->_pdf->Cell(191,6, utf8_decode("Fecha de la ultima factura:".$array[$i]['4']->format('d/m/Y')),1,1,'C');

				for ($f=0; $f < count($array[$i][6]) ; $f++) { 
					
			$this->_pdf->Cell(58,6, utf8_decode($array[$i][6][$f][1]),0,0,'L');	
			$this->_pdf->Cell(58,6, utf8_decode($array[$i][6][$f][0]),0,0,'L');
			$this->_pdf->Cell(58,6, intval($array[$i][6][$f][2]),0,1,'L');
				}


				}
				$this->_pdf->Output();*/

			}






}
?>
