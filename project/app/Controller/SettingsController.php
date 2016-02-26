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
class SettingsController extends AppController {

/**
 * This controller does not use a model
 *
 * @var array
 */
	public $uses = array('Setting');
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
  * To Display the setting default page
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
							$settings_data = $this->Setting->find('all',array('order'=>array('Setting.sort_order'=>'asc')));
							$this->set('settings',$settings_data); 
							}
			 else{
					$this->Session->setFlash('Sorry you don\'t have enough permission to access the page.');
					$this->redirect(array('Controller'=>'users','action'=>'home'));
				}	
				
		}
		
	/****
	 * Created By : Rohit Mehrotra
	 * Created Date: 2/05/2105
	 * Function to edit the new settings  
	 * 
	 ***/
	 public function edit ($id){
			$this->layout='dashboard';
			$this->addSettings($id);
		}
		
	/****
	 * Created By : Rohit Mehrotra
	 * Created Date: 2/05/2105
	 * Function to add the new settings  
	 * 
	 ***/ 
	 public function add (){
			$this->layout='dashboard';
			$this->addSettings();
		 }
	
	/****
	 * Created By : Rohit Mehrotra
	 * Created Date: 2/05/2105
	 * Function to add and edit the new settings  
	 * 
	 ***/		
	public function addSettings($id=null){
		
			if($this->Session->read('LOGEDID')==1){
				if(!empty($this->data['Setting']['config_name'])){
					$settings_data = $this->data; 
					$settings_data['Setting']['status'] = 1;
					$this->Setting->create(); 
					if ($this->Setting->save($settings_data)) //saving the data in table
					{
						$this->Session->setFlash('The Default Setting details has been saved', true);
						$this->redirect(array('action'=>'index'));
					} 
				  }
				  else{
						if($id){
							
								 if(empty($this->data)){
									 //echo $id."jj" ; die;
								     //$settings_data = $this->Setting->findById($id);
								     $this->data = $this->Setting->read(null, $id);
									 
									 
									 }
							}
					  
					  }
				
				}
		} 
		 
	
}
