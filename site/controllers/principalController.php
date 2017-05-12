<?php


class principalController extends Controller
{
	
	private $_index;
    public function __construct() {
        parent::__construct();
  	 $this->_index=$this->loadModel('principal');	
      
    }

    public function index()
    {


			
			$this->_view->setJs(array('index'));
			$this->_view->setCss(array('css'));
        	$this->_view->titulo = 'Binevenido';
        	
        	
			$this->_view->renderizar('index');
							
			
	}

	public function buscar_por_code(){

		

		echo json_encode($this->_index->buscar_por_code($_GET['codigo']));

	}
		public function buscar_por_rif(){

		

		echo json_encode($this->_index->buscar_por_rif($_GET));

	}

}

	

?>