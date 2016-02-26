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
class UsersController extends AppController {

/**
 * This controller does not use a model
 *
 * @var array
 */
	public $uses = array('User','Staff','Leave');
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
	 * Login function 
	 **/

  public function login(){
		Configure::write('debug', 0);
		if(!empty($this->data)){
			if($this->data['User']['staff'] != 1){
			$users = $this->User->find('all',array('conditions'=>array('User.username'=>$this->data['User']['username'],'User.password'=>$this->data['User']['password'])));
			/*******Check for user validation*********/
			if(!empty($users)){
						$this->Session->write('LOGEDID',$users[0]['User']['id']);
						$this->Session->write('USERNAME',$users[0]['User']['username']);
						$this->Session->write('USEREMAIL',$users[0]['User']['admin_email']);
						$this->Session->write('Usertype',$users[0]['User']['role_id']);
						$this->Session->write('LOGEDTYPE','True');
						$this->Session->setFlash("Logged in sucessfully");
						$this->redirect(array('controller'=>'users','action'=>'home'));
						 
				}
				else{
						$this->Session->setFlash("Check your username or password");
						$this->redirect(array("action"=>"login"));
					}
			}
			else{
					$users = $this->Staff->find('all',array('conditions'=>array('Staff.email'=>$this->data['User']['username'],'Staff.password'=>$this->data['User']['password'])));
					/*******Check for user validation*********/
			if(!empty($users)){
						$unname = explode("@",$users[0]['Staff']['email']); 
						$this->Session->write('LOGEDID',$users[0]['Staff']['id']);
						$this->Session->write('USERNAME',$unname[0]);
						$this->Session->write('USEREMAIL',$users[0]['Staff']['email']);
						$this->Session->write('Userapprauth',$users[0]['Staff']['approving_authority']);
						$this->Session->write('Usertype',$users[0]['Staff']['employeetype_id']);
						$this->Session->write('ApprovalRequired',$users[0]['Staff']['supervisor_approval_required']);
						$this->Session->write('LOGEDTYPE','True');
						$this->Session->setFlash("Logged in sucessfully");
						$this->redirect(array('controller'=>'users','action'=>'home'));
						 
				}
				else{
						$this->Session->setFlash("Check your username or password");
						$this->redirect(array("action"=>"login"));
					}
				}
		}
		else{
				$this->set('users','Login Page');
			}	
		 
		
		
		}
		
	/****
	 * Function to display the user dashboard
	 * 
	 ***/
	 public function home(){
			$this->layout='dashboard';  
			if($this->Session->read('LOGEDID') !=""){
				$id = $this->Session->read('LOGEDID'); 
				$staff_data = $this->Staff->find('all',array('conditions'=>array('Staff.approving_authority'=>$id),'fields'=>array('Staff.id'))); 
				$leavelistarray = array();
				$i= 0 ;
				$count = 0 ;
				foreach($staff_data as $data){
					$leavelistarray = $this->Leave->find('count',array('fields'=>array('Leave.staff_id'),'conditions'=>array('Leave.staff_id'=>$data['Staff']['id'],'Leave.absence_type'=>'1','Leave.absence_status'=>'Pending')));  
					$count +=$leavelistarray;	
				   } 
					$this->Session->write('Leavepending',$staff_data);	
					$this->set('count',$count); 
			}
		 
		 }	
	
	function logout(){
	    $this->Session->destroy();
	    $this->Session->setFlash("Logout sucessfully");
		$this->redirect(array("action"=>"login"));
	}
	
	public function travel_count() {
		$path = func_get_args();

		$count = count($path);
		if (!$count) {
			return $this->redirect('/');
		}
		$page = $subpage = $title_for_layout = null;

		if (!empty($path[0])) {
			$page = $path[0];
		}
		if (!empty($path[1])) {
			$subpage = $path[1];
		}
		if (!empty($path[$count - 1])) {
			$title_for_layout = Inflector::humanize($path[$count - 1]);
		}
		$this->set(compact('page', 'subpage', 'title_for_layout'));

		try {
			$this->render(implode('/', $path));
		} catch (MissingViewException $e) {
			if (Configure::read('debug')) {
				throw $e;
			}
			throw new NotFoundException();
		}
	}
}
