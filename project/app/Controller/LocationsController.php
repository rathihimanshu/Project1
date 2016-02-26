<?php
/**
 * Static content controller.
 *
 * This file will render views from views/pages/
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

App::uses('AppController', 'Controller');

/**
 * Static content controller
 *
 * Override this controller by placing a copy in controllers directory of an application
 *
 * @package       app.Controller
 * @link http://book.cakephp.org/2.0/en/controllers/pages-controller.html
 */
class LocationsController extends AppController {

/**
 * This controller does not use a model
 *
 * @var array
 */
	public $uses = array('Location');
	public $helpers = array('Html', 'Common');
	
/**
 * Displays a view
 *
 * @param mixed What page to display
 * @return void
 * @throws NotFoundException When the view file could not be found
 *	or MissingViewException in debug mode.
 */
 /**
  * To Display the company default page
  * 
  * 
  * */
	function beforeFilter()
    {	
		parent::beforeFilter();
		if($this->Session->read('LOGEDTYPE') != 'True')
		{
			$this -> Session -> setFlash('Please Login First', true);
			$this->redirect(array('controller'=>'users','action'=>'login'));
		}
    }

  public function index(){
			$this->layout = 'dashboard';
			$user_id = $this->Session->read('LOGEDID'); 
			if($user_id==1){
							$location_data = $this->Location->find('all');
							$this->set('location',$location_data); 
							}
			 else{
					$this->Session->setFlash('Sorry you don\'t have enough permission to access the page.');
					$this->redirect(array('Controller'=>'users','action'=>'home'));
				}	
				
		}
		
	/****
	 * Created By : Rohit Mehrotra
	 * Created Date: 2/05/2105
	 * Function to edit the companies  
	 * 
	 ***/
	 public function edit ($id){
			$this->layout='dashboard';
			$this->addCompany($id);
		}
		
	/****
	 * Created By : Rohit Mehrotra
	 * Created Date: 2/05/2105
	 * Function to add companies 
	 * 
	 ***/ 
	 public function add (){
			$this->layout='dashboard';
			$this->addCompany();
		 }
	
	/****
	 * Created By : Rohit Mehrotra
	 * Created Date: 2/05/2105
	 * Function to add and edit companies
	 * 
	 ***/		
	public function addCompany($id=null){
		
			if($this->Session->read('LOGEDID')==1){
				if(!empty($this->data['Location']['name'])){
					$location_data = $this->data; 
					$this->Location->create(); 
					if ($this->Location->save($location_data)) //saving the data in table
					{
						$this->Session->setFlash('Data saved sucessfully !!');
						$this->redirect(array('controller'=>'locations','action'=>'index'));
					} 
				  }
				  else{
						if($id){
							
								 if(empty($this->data)){
										$this->data = $this->Location->read(null, $id);
									 									 
									 }
							}
					  
					  }
				
				}
		}
		
	/****
	 * Created By : Rohit Mehrotra
	 * Created Date: 2/05/2105
	 * Function to delete the companies  
	 * 
	 ***/
	 public function delete($id){
		 $this->autorender=false;
		 if($this->Session->read('LOGEDTYPE')=='True') {
				if($id=='')
				{	 	
				   $this->Session->setFlash(' SECURITY ERROR ! ');
				   $this->redirect(array('controller'=>'locations','action'=>'index'));
				}
				else
				{
				   $this->Location->delete($id);
				   $this->Session->setFlash(' Record deleted ');
				   $this->redirect(array('controller'=>'locations','action'=>'index'));
				}
			 
			 } 
		 }		 
		 
	
}
