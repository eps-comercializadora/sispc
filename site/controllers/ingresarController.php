<?php


class ingresarController extends Controller
{
	
	private $_panadero;
    public function __construct() {
        parent::__construct();
  	$this->_panadero=$this->loadModel('panadero');	
      
    }

    public function index()
    {


			
			$this->_view->setJs(array('index','validar'));
			$this->_view->setCss(array('css'));
        		$this->_view->titulo = 'Ingresar';
        		$this->_panadero->cargar_estados_all();
        		$this->_panadero->cargar_municipio(18);
        		$this->_panadero->cargar_parroquia(309);
        		$this->_view->panadero =$this->_panadero;
        	
			$this->_view->renderizar('index');
							
			
	}
	    public function cargar_municipio()
    {


			
		
        	 echo	json_encode($this->_panadero->cargar_municipio_ajax($_GET['id']));
        	
			
	}
		    public function cargar_parroquia()
    {


			
		
        	 echo	json_encode($this->_panadero->cargar_parroquia_ajax($_GET['id']));
        	
			
	}

		    public function guardar()
    			{

        	print_r($_POST);

        	$this->_panadero->guardar($_POST);

        	//$this->redireccionar('ingresar');
			
			}

}

	

?>