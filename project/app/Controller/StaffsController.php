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
class StaffsController extends AppController {

/**
 * This controller does not use a model
 *
 * @var array
 */
	public $uses = array('Staff','Company','Location','Designation','Staffdesignation','Employeetype');
	public $helpers = array('Html', 'Session','Common','Form');
	public $components = array('Common');
	
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
							$this->recursive = 2;
							$this->Staff->bindModel(array('belongsTo'=>array('Company')));
							$this->Staff->bindModel(array('belongsTo'=>array('Company')));
							$this->Staff->bindModel(array('belongsTo'=>array('Location')));
							$this->Staff->bindModel(array('belongsTo'=>array('Employeetype')));
						    $staff_data = $this->Staff->find('all');
							$staff_array = array();
							$i =0 ;
							foreach ($staff_data as $data){
									$staff_array[$i]['Staff']['id'] = $data['Staff']['id']; 
									$staff_array[$i]['Staff']['staff_name'] = $data['Staff']['staff_name']; 
									$staff_array[$i]['Staff']['email'] =$data['Staff']['email'];
									$staff_array[$i]['Staff']['company'] =$data['Company']['name'];
									$staff_array[$i]['Staff']['location'] =	$data['Location']['name'];
									$staff_array[$i]['Staff']['status'] =	$data['Employeetype']['name'];
								$i++;
								} 
							$this->set('staff',$staff_array); 
							}
			 else{
					$this->Session->setFlash('Sorry you don\'t have enough permission to access the page.');
					$this->redirect(Router::url('/', true).'users/home');
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
			$this->addStaff($id);
		}
		
	/****
	 * Created By : Rohit Mehrotra
	 * Created Date: 2/05/2105
	 * Function to add companies 
	 * 
	 ***/ 
	 public function add (){
			$this->layout='dashboard';
			$this->addStaff();
		 }
	
	/****
	 * Created By : Rohit Mehrotra
	 * Created Date: 2/05/2105
	 * Function to add and edit companies
	 * 
	 ***/		
	public function addStaff($id=null){
		
			if($this->Session->read('LOGEDID')==1){
				
				if(!empty($this->data['Staff']['staff_name'])){
					$staff_data = $this->data; 
					if(empty($this->data['Staff']['terminate_date'])){
						$staff_data['Staff']['terminate_date'] = '0000-00-00';
						}
						if(empty($this->data['Staff']['pincode'])){
						$staff_data['Staff']['pincode'] = '0000';
						}
					/**Upload Photo**/
					if($this->data['Staff']['photo']['name']!=""){
							$photo="";
							$ext=explode(".",$this->data['Staff']['photo']['name']);			
							$string = "";
							$time= time();
							$photo="staff_".($ext['0']."_".$time).".".$ext[count($ext)-1];
							if (!empty($this->data['Staff']) && is_uploaded_file($this->data['Staff']['photo']['tmp_name']))
							{
								move_uploaded_file($this->data['Staff']['photo']['tmp_name'], WWW_ROOT."img/staff_photo/".$photo);
								$orig = WWW_ROOT."img/staff_photo/".$photo;
								$copy = WWW_ROOT."img/staff_photo/small/".$photo;	
								move_uploaded_file($this->data['Staff']['photo']['tmp_name'], $orig);
								copy($orig,$copy);
								$this->Common->resize($copy,'50','50');
							}
								$staff_data['Staff']['photo']=str_replace(" ","_",$photo);
						} else 	{
							$staff_data['Staff']['photo'] = '';
						}
					/*****Upload Photo******/
					/*********Upload Cv*************/
					if($this->data['Staff']['cv']['name']!=""){
							$photo="";
							$ext=explode(".",$this->data['Staff']['cv']['name']);			
							$string = "";
							//$time= time();
							$photo="staffdoc_".($ext['0']."_".$time).".".$ext[count($ext)-1];
							if (!empty($this->data['Staff']) && is_uploaded_file($this->data['Staff']['cv']['tmp_name']))
							{
								move_uploaded_file($this->data['Staff']['cv']['tmp_name'], WWW_ROOT."img/staff_cv/".$photo);
								$orig = WWW_ROOT."img/staff_cv/".$photo;
								move_uploaded_file($this->data['Staff']['cv']['tmp_name'], $orig);
								
							}
								$staff_data['Staff']['cv']=str_replace(" ","_",$photo);
						} else 	{
							$staff_data['Staff']['cv'] = '';
						}
					/************Upload Cv******************/	
					$this->Staff->create(); 
					if ($this->Staff->save($staff_data)) //saving the data in table
					{
						$this->Session->setFlash('Data saved sucessfully !!');
						$this->redirect(array('action'=>'index'));
					} 
				  }
				  else{
						if($id){
							
								 if(empty($this->data)){
										$this->data = $this->Staff->read(null, $id);
									 									 
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
				   $this->redirect(array('controller'=>'companies','action'=>'index'));
				}
				else
				{
				   $this->Staff->delete($id);
				   $this->Session->setFlash(' Record deleted ');
				   $this->redirect(array('controller'=>'companies','action'=>'index'));
				}
			 
			 } 
		 }		 
		 
	
}
