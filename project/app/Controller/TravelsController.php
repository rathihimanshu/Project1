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
class TravelsController extends AppController {

/**
 * This controller does not use a model
 *
 * @var array
 */
	public $uses = array('Staff','Travelpurpose','Travelmode','Leave');
	public $helpers = array('Html', 'Common');
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
  * To Display the travel list  default page
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

  public function index($id=null){
			$this->layout = 'dashboard';
			$userName = $this->Session->read('USERNAME');  
			if($userName==='admin'){
				
							$stafftravel_data = $this->Common->travel_detail('','');
							$this->set('stafftraveldetail',$stafftravel_data);
							
				}
				else{
						$staff_data = $this->Session->read('Leavepending');
						if(isset($staff_data)){
								$staffarray_data ='';
								foreach ($staff_data as $key=>$value){
									$staffarray_data .= ','.$value['Staff']['id'];
								}
								$staffarray = substr($staffarray_data,1);
								$staffarray = explode(',',$staffarray);
								$stafftravel_data = $this->Common->travel_detail('',$staffarray);
								$this->set('stafftraveldetail',$stafftravel_data);						
											
							}else{
									$this->Session->setFlash('Sorry didn\'t have enough permission to view this page.!!!');
									$this->redirect(Router::url('/', true).'users/home');
								
								}
						
					}		
	
		 
	}
	/**
	 * To Travel Detail of staff
	 * 
	 **/
	public function edit($id){
		$this->layout = 'dashboard';
		
		if($id){
			if(!empty($this->data)){
					
					$this->Leave->create();	
						if($this->Leave->save($this->data)){
								$this->Session->setFlash('Data saved sucessfully !!');
						        $this->redirect(array('controller'=>'travels','action'=>'index'));
							}
							else{
									$this->Session->setFlash('Oop\'s Some Error Occured Please Try Again !!');
									$this->redirect(array('controller'=>'staff','action'=>'leaves'));
								}				
				 }else{
						$this->Leave->bindModel(array('belongsTo'=>array('Travelpurpose')));
						$this->Leave->bindModel(array('belongsTo'=>array('Travelmode')));
						$this->data = $this->Leave->read(null, $id);
						
					 }
			
			}
			else{
					$this->Session->setFlash('Something went wrong please try again.!!!');
					$this->redirect(array('Controller'=>'staffs','action'=>'index'));
				}	
		}	
/*******************
 * 
 * To apply Staff travel 
 * 
 * */
	public function staff_travel($id=null){
		$this->layout = 'dashboard';
		$userName = $this->Session->read('USERNAME'); 
				  
			 if(!empty($this->data)){ 
				 	$leave_data = $this->data; 
					$leave_data['Leave']['reporting_date'] = $this->data['Leave']['to_date'];
					$leave_data['Leave']['absence_status'] = "Pending";
					$leave_data['Leave']['absence_type'] = 2;
					$diff = abs(strtotime($this->data['Leave']['to_date']) - strtotime($this->data['Leave']['from_date']));  
					$days = floor(($diff)/ (60*60*24));
					$leave_data['Leave']['total_leaves'] = $days;
					$leave_data['Leave']['absence_request_by'] = $this->Session->read('USERNAME');
					$staff_leaveupdated = $this->Leave->create();
					
						if($this->Leave->save($leave_data)){
								$this->Session->setFlash('Leave applied sucessfully !!');
								$base_url = Router::url('/', true); 
						        $this->redirect($base_url.'users/home');
							}
							else{
									$this->Session->setFlash('Oop\'s Some Error Occured Please Try Again !!');
									$base_url = Router::url('/', true); 
									$this->redirect($base_url.'users/home');
								}				
				 }else{
						if($userName==='admin'){
								$id = $id;
							}else{
									$id = $this->Session->read('LOGEDID');
								}
						$this->set('staff_id',$id);
					 }
			
	}//stafftravel
	/***************
	 * To view staff travel
	 * 
	 **/
	 public function mytravel(){
		 $this->layout = 'dashboard';
		 $staff_id = $this->Session->read('LOGEDID');  
		   if($staff_id !=1){
				$travel_data = $this->Common->travel_detail('',$staff_id); 
				$this->set('stafftraveldetail',$travel_data);
			}else{
					$base_url = Router::url('/', true);
					$this->Session->setFlash('Sorry you can\'t access this page.');
					$this->redirect($base_url.'users/home');
				
				}
		 }	

}
