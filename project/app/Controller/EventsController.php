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
class EventsController extends AppController {

/**
 * This controller does not use a model
 *
 * @var array
 */
	public $uses = array('Event','Ticket');

/**
 * Displays a view
 *
 * @param mixed What page to display
 * @return void
 * @throws NotFoundException When the view file could not be found
 *	or MissingViewException in debug mode.
 */
	public function index() 
	{
		$events = $this->Event->find('all',array('conditions'=>array('Event.status'=>1),'fields'=>array('Event.event_name','Event.event_type','Event.id','Event.status')));
		$this->set('event',$events); 	 

	}
	
	public function add($id=null)
	{
			
				if(!empty($this->request->data))
				{ 
					if($this->Event->save($this->request->data))
					{
						$this->Session->setFlash('Data Saved Sucessfully');
						$this->redirect(array('controller'=>'events', 'action'=>'index'));
					}	
				}	
				
				if($id)
				{
					$this->data = $this->Event->read(null,$id);
				}
				else
				{
						
				}	
				
	}
	
	public function activate($id=null)
	{
			$this->autoRender=false; 
			if(!empty($id))
			{
				$event = $this->Event->updateAll(array('Event.status'=>'1'),array('Event.id'=>$id));
				$this->Session->setFlash('Status Updated Sucessfully');
				$this->redirect(array('controller'=>'events','action'=>'index'));
			}
			else
			{
				$this->Session->setFlash('Some Error Please Try Again');
				$this->redirect(array('controller'=>'events','action'=>'index'));
			}
			
	}
	
	public function deactivate($id=null)
	{
			$this->autoRender=false;
			if(!empty($id))
			{
				$event = $this->Event->updateAll(array('Event.status'=>'0'),array('Event.id'=>$id));
				$this->Session->setFlash('Status Updated sucessfully');
				$this->redirect(array('controllers'=>'events','action'=>'index'));
			}
			else
			{
				$this->Session->setFlash('Some Error Please Try Again');
				$this->redirect(array('controller'=>'event','action'=>'index'));
			}
	}
	
	public function addticket()
	{
			echo $_POST['id']; die; 
	}
	
			 
}
