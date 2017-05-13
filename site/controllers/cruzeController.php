<?php


class cruzeController extends Controller
{
	
	private $_index;
    public function __construct() {
        parent::__construct();
  	 $this->_index=$this->loadModel('cruze');	
      
    }

    public function index()
    {


			
			$this->_view->setJs(array('index'));
			$this->_view->setCss(array('css'));
        	$this->_view->titulo = 'cruze';
        	
        	$this->_index->cruze();
        	
		//	$this->_view->renderizar('index');
							
			
	}

	
		

}

	

?>