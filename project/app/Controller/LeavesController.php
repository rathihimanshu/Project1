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
class LeavesController extends AppController {

/**
 * This controller does not use a model
 *
 * @var array
 */
    var $name = 'Leaves';
    public $uses = array('Leavetype','Policyleave','Staff','Excemption','Leave','Policyleave','Allottedleave');
    public $helpers = array('Html', 'Common');
    public $components = array('Common','Paginator','Email');
    
/**
 * Displays a view
 *
 * @param mixed What page to display
 * @return void
 * @throws NotFoundException When the view file could not be found
 *    or MissingViewException in debug mode.
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
                            $leaves_data = $this->Leavetype->find('all');
                            $this->set('leaves',$leaves_data); 
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
            $this->addLeaves($id);
        }
        
    /****
     * Created By : Rohit Mehrotra
     * Created Date: 2/05/2105
     * Function to add companies 
     * 
     ***/ 
     public function add (){
            $this->layout='dashboard';
            $this->addLeaves();
         }
    
    /****
     * Created By : Rohit Mehrotra
     * Created Date: 2/05/2105
     * Function to add and edit companies
     * 
     ***/        
    public function addLeaves($id=null){
        
            if($this->Session->read('LOGEDID')==1){
                if(!empty($this->data['Location']['name'])){
                    $leave_data = $this->data; 
                    $this->Leavetype->create(); 
                    if ($this->Leavetype->save($leave_data)) //saving the data in table
                    {
                        $this->Session->setFlash('Data saved sucessfully !!');
                        $this->redirect(array('controller'=>'leaves','action'=>'index'));
                    } 
                  }
                  else{
                        if($id){
                            
                                 if(empty($this->data)){
                                        $this->data = $this->Leavetype->read(null, $id);
                                                                          
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
                   $this->redirect(array('controller'=>'leaves','action'=>'index'));
                }
                else
                {
                   $this->Leavetype->delete($id);
                   $this->Session->setFlash(' Record deleted ');
                   $this->redirect(array('controller'=>'leaves','action'=>'index'));
                }
             
             } 
         }
    /****
     * Created By : Rohit Mehrotra
     * Created Date: 2/05/2105
     * Function to display alloted leaves  
     * 
     ***/              
    public function allottedLeave(){
            if(empty($this->data)){
                    //$alloted_leavesdata = $this->
                }
                else{
                    
                    }
        
        }    
    /****
     * Created By : Rohit Mehrotra
     * Created Date: 2/05/2105
     * Function to display leaves policy  
     * 
     ***/     
     
     public function leavePolicy(){
            $this->layout = 'dashboard';
            $user_id = $this->Session->read('LOGEDID'); 
            if($user_id==1){
                            if(empty($this->data)){
                                                    $this->Policyleave->bindModel(array('belongsTo'=>array('Leavetype')));
                                                    $policy_data = $this->Policyleave->find('all',array('conditions'=>array('NOT'=>array('Leavetype.id' => ""))));             
                                                    $policyarray = array();
                                                     $i = 0;
                                                     foreach ($policy_data as $policy){
                                                            
                                                            $policyarray[$i]['Policyleave']['id'] = $policy['Policyleave']['id'];
                                                            $policyarray[$i]['Policyleave']['leavetype_id'] = $policy['Leavetype']['leave_type'];
                                                            $policyarray[$i]['Policyleave']['include_holidays'] = $policy['Policyleave']['include_holidays'];
                                                            $policyarray[$i]['Policyleave']['include_weekly_off'] = $policy['Policyleave']['include_weekly_off'];
                                                            $policyarray[$i]['Policyleave']['club_with_other_leave'] = $policy['Policyleave']['club_with_other_leave'];
                                                            $policyarray[$i]['Policyleave']['no_of_days_to_apply_in_advance'] = $policy['Policyleave']['no_of_days_to_apply_in_advance'];
                                                            $policyarray[$i]['Policyleave']['no_of_days_after_end_date'] = $policy['Policyleave']['no_of_days_after_end_date']; 
                                                            $i++;
                                                         }
                                      
                                     $this->set('policy',$policyarray); 
                                }
                            else{
                                 
                                    $this->Session->setFlash('Sorry something went wrong !!!!.');
                                    $this->redirect(array('Controller'=>'leaves','action'=>'leavePolicy'));
                                    
                                }     
                            }
             else{
                    $this->Session->setFlash('Sorry you don\'t have enough permission to access the page.');
                    $this->redirect(Router::url('/', true).'users/home');
                }    
         
         }
    /****
     * Created By : Rohit Mehrotra
     * Created Date: 2/05/2105
     * Function to display leaves policy edit   
     * 
     ***/             
    public function policy_edit($id=null){
                                $this->layout = 'dashboard';
                                if($id){
                                    if(!empty($this->data)){
                                            $leave_policydata = $this->data; 
                                            $this->Policyleave->create(); 
                                            if ($this->Policyleave->save($leave_policydata)) //saving the data in table
                                            {
                                                $this->Session->setFlash('Data saved sucessfully !!');
                                                $this->redirect(array('controller'=>'leaves','action'=>'leavePolicy'));
                                            }
                                        
                                        }
                                    else{
                                            $this->data = $this->Policyleave->read(null, $id);
                                                
                                        }    
                                    }
     }        
     
    /****
     * Created By : Rohit Mehrotra
     * Created Date: 2/05/2105
     * Function to display leaves policy edit   
     * 
     ***/             
    public function policy_delete($id){
                     $this->autorender=false;
                     if($this->Session->read('LOGEDTYPE')=='True') {
                            if($id=='')
                            {         
                               $this->Session->setFlash(' SECURITY ERROR ! ');
                               $this->redirect(array('controller'=>'leaves','action'=>'leavePolicy'));
                            }
                            else
                            {
                               $this->Policyleave->delete($id);
                               $this->Session->setFlash(' Record deleted ');
                               $this->redirect(array('controller'=>'leaves','action'=>'leavePolicy'));
                            }
                         
                         } 
     }
    /****
     * Created By : Rohit Mehrotra
     * Created Date: 2/05/2105
     * Function to display leaves policy  
     * 
     ***/
     public function leave_exception(){
                $this->layout = 'dashboard';
                $user_id = $this->Session->read('LOGEDID');
                if($user_id==1){
                
                        $staff_data = $this->Staff->find('all',array('fields'=>array('Staff.id','Staff.staff_name')));
                        $this->set('staff_listing_excemption',$staff_data);
                    }
                 
         }

    /****
     * Created By : Rohit Mehrotra
     * Created Date: 2/05/2105
     * Function to edit leaves execmption  
     * 
     ***/    
     public function leave_Exceptionedit($id){
                        $this->layout = 'dashboard';
                                if($id){
                                    if(!empty($this->data)){
                                        $leavedata = $this->Common->leavetype();
                                        foreach($this->data as $dataleave){
                                                for($i=0;$i<=$dataleave['leave_count'];$i++){
                                                     $leaveExcemption[$i]['Excemption']['staff_id'] = $dataleave['staff_id'];
                                                     if(array_key_exists($leavedata[$i]['leave_type'],$dataleave)){                
                                                            $leavetype = $leavedata[$i]['leave_type'];
                                                            $leavetype_id = $leavedata[$i]['id'];
                                                            $leaveExcemption[$i]['Excemption']['leavetype_id'] = $leavetype_id;
                                                            $leaveExcemption[$i]['Excemption']['values'] = $dataleave[$leavetype];
                                                        }
                                                        $leaveExcemption[$i]['Excemption']['year'] = date('Y');
                                                        $staff_id = $this->Common->fetchStaff($dataleave['staff_id']);
                                                        if($this->Excemption->UpdateAll(array('Excemption.leavetype_id'=>$leaveExcemption[$i]['Excemption']['leavetype_id'],'Excemption.values'=>$leaveExcemption[$i]['Excemption']['values']),array('Excemption.id'=>$staff_id[$i]['Excemption']['id'],'Excemption.year'=>date('Y')))){
                                                            $redirect_variable = $i;
                                                            }
                                                        }
                                                }
                                                if($redirect_variable == $this->data['Excemption']['leave_count']){
                                                        $this->Session->setFlash(' Record Updated Sucessfully !!!!');
                                                        $this->redirect(array('controller'=>'leaves','action'=>'leave_exception'));
                                                    }
                                                else{
                                                        $this->Session->setFlash(' Some internal Error Has Occured !!!!');
                                                        $this->redirect(array('controller'=>'leaves','action'=>'leave_exception'));
                                                    }     
                                        }
                                    else{
                                            $this->data = $this->Excemption->read(null, $id);
                                                
                                        }    
                                    }
                                }
                                
    /****
     * Created By : Rohit Mehrotra
     * Created Date: 2/05/2105
     * Function to apply leaves execmption  
     * 
     ***/                
     
     public function apply_leave($id=null){
            $this->layout = 'dashboard';
            $leavesArray = array();
              
                if(!empty($this->data)){
                        
                        $leavesArray = $this->data; 
                        $leavePolicy = $this->Common->leavePolicy($this->data['Leave']['leavetype_id']); 
                        $total_leave = $this->Allottedleave->query("SELECT ((SELECT SUM( Allottedleave.values ) FROM  `allottedleaves` AS  `Allottedleave` WHERE Allottedleave.leavetype_id =  ".$this->data['Leave']['leavetype_id']." AND Allottedleave.employeetype_id = ( 
                                 SELECT Staff.employeetype_id FROM  `staffs` AS  `Staff` WHERE Staff.id =  ".$this->data['Leave']['staff_id']." ) AND Allottedleave.year =  ".date('Y').") - SUM( Leave.total_leaves )
                                )left_leave FROM  `leaves` AS  `Leave` WHERE Leave.staff_id =  ".$this->data['Leave']['staff_id']." AND Leave.leave_year =  ".date('Y')." AND leavetype_id =  ".$this->data['Leave']['leavetype_id']." AND Leave.absence_status = 'Approved'");
                            
                        //$total_leave = $this->Allottedleave->find('all',array('fields'=>array('SUM(values)'),'conditions'=>array('Allottedleave.leavetype_i'=>$this->data['Leave']['leavetype_id'],'Allottedleave.employeetype_id'=>($this->Staff->find('all','fields'=>array('Staff.employeetype_id'),'conditions'=>array('Staff.id'=>$this->data['Leave']['staff_id'])))))))));
                        if($total_leave > 0){
                                    $diff = abs(strtotime($this->data['Leave']['to_date']) - strtotime($this->data['Leave']['from_date']));  
                                    $days = floor(($diff)/ (60*60*24));
                                    /***************Checking for leave policy****************/
                                    /*if($leavePolicy[0]['Policyleave']['no_of_days_to_apply_in_advance'] =='N'){
                                        $leavesArray['Leave']['total_leaves'] =  $days;
                                        }else{ 
                                                $applyleaveadvance = $leavePolicy[0]['Policyleave']['no_of_days_to_apply_in_advance'];
                                                $from = $this->data['Leave']['from_date'];
                                                $policy_date = date('d-m-Y',strtotime($applyleaveadvance));
                                                $from_applydate =  date('d-m-Y',strtotime($from));
                                                $date_diff = date('d-m-Y', strtotime($from_applydate. ' - 15 days'));
                                                                                        
                                                if((strtotime($from_applydate) <= strtotime($date_diff))){                             
                                                        $leavesArray['Leave']['total_leaves'] =  $days;
                                                    }
                                                else{
                                                         
                                                        $this->Session->setFlash('Sorry as per leave policy you can apply leave'.$days.'before.');
                                                        $this->redirect(array('Controller'=>'users','action'=>'home'));
                                                    }    
                                            }*/
                                            /***************Policy check ends *****************************/
                                            /*********************Data Insertion Block Start*****************************/
                                            $leavesArray['Leave']['leave_year'] = date('Y');
                                            $staff_name = $this->Common->staff_name($this->data['Leave']['staff_id']); 
                                            $leavesArray['Leave']['absence_request_by'] = $staff_name;
                                            $leavesArray['Leave']['absence_type'] = 1; //for leave
                                            $leavesArray['Leave']['updated_by'] = $this->Session->read('USERNAME');
                                            $leavesArray['Leave']['total_leaves'] =  $days; 
                                            $this->Leave->create(); 
                                            if ($this->Leave->save($leavesArray)) //saving the data in table
                                            {
                                                //$this->email($this->Session->read('Userapprauth'),$days); 
                                                $this->Session->setFlash('Leave Updated Sucessfully !!');
                                                $this->redirect(Router::url('/', true).'leaves/viewleave');
                                            }             
                                            /*******************************Insertion and redirect block ends*********************************/
                        }//if clause
                        else{
                                $this->Session->setFlash('Sorry you didn\'t have enough balance to apply leave !!');
                                $this->redirect(array('controller'=>'staffs','action'=>'index'));
                            
                            }
                                            $leavesArray['Leave']['staff_id'] = $this->data['Leave']['staff_id'];
                                            $leavesArray['Leave']['leave_year'] = date('Y');
                                            $leavesArray['Leave']['from_date']=$this->data['Leave']['from_date'];
                                            $leavesArray['Leave']['to_date']=$this->data['Leave']['to_date'];
                                            $leavesArray['Leave']['leavetype_id']=$this->data['Leave']['leavetype_id'];
                                            $staff_name = $this->Common->staff_name($this->data['Leave']['staff_id']); 
                                            $leavesArray['Leave']['absence_request_by'] = $staff_name;
                                            $leavesArray['Leave']['absence_type'] = 1; //for leave
                                            $leavesArray['Leave']['absence_status'] = $this->data['Leave']['absence_status'];
                                            $leavesArray['Leave']['updated_by'] = $this->Session->read('USERNAME');               
                                $this->Leave->create(); 
                                if ($this->Leave->save($leavesArray)) //saving the data in table
                                {
                                    $this->Session->setFlash('Leave Apply Sucessfully !!');
                                    $this->redirect(array('controller'=>'staffs','action'=>'index'));
                                }             
                         
                    }
                else{
        
                            //$this->set('staff_id',$id);
                            $this->data = $this->Leave->read(null, $id);
                            
                        
                    }
                }
                
/****************
*Created By : Rohit Mehrotra
* Created Date: 21/05/2105
* Function to view leaves   
****/

function viewleave(){
        $this->layout = 'dashboard';
        $user_id = $this->Session->read('LOGEDID');
         
            if($user_id==1){
                            $leavesdata = $this->Common->staff_leave('');
                            $this->set('leaves',$leavesdata); 
                            }else{
                                    $staff_data = $this->Session->read('Leavepending');
                                    if(isset($staff_data)){
                                            $staffarray_data = '';
                                            $i=0;
                                            foreach ($staff_data as $key=>$value){
                                                    $staffarray_data .= ','.$value['Staff']['id'];
                                                    }
                                                     
                                            $staffarray = substr($staffarray_data,1);
                                            $staffarray = explode(',',$staffarray);
                            
                                            /********To Retreive Staff Data********************************/
                                                    $this->recursive = -1;
                                                    $leavesdata = $this->Common->staff_leave($staffarray);
                                                    $this->set('leaves',$leavesdata); 
                                                  }
                                        else{
                                                $this->Session->setFlash('Sorry you don\'t have enough permission to access the page.');
                                                $this->redirect(Router::url('/', true).'users/home');
                                            }
                                    }    
    
    }
    
/****************
 * To Apply staff leave
 * 
 * *************/
 
 function applyleavestaff($id=null){
                $this->layout = 'dashboard';
                $userName = $this->Session->read('USERNAME'); 
                      if(!empty($this->data)){ 
                                $leavePolicy = $this->Common->leavePolicy($this->data['Leave']['leavetype_id']); //getting leave policy for leave type  
                                /**********Calculating total leaves for employee****************/
                                $total_leave = $this->Allottedleave->query("SELECT ((SELECT SUM( Allottedleave.values ) FROM  `allottedleaves` AS  `Allottedleave` WHERE Allottedleave.leavetype_id =  ".$this->data['Leave']['leavetype_id']." AND Allottedleave.employeetype_id = ( 
                                 SELECT Staff.employeetype_id FROM  `staffs` AS  `Staff` WHERE Staff.id =  ".$this->data['Leave']['staff_id']." ) AND Allottedleave.year =  ".date('Y').") - SUM( Leave.total_leaves )
                                )left_leave FROM  `leaves` AS  `Leave` WHERE Leave.staff_id =  ".$this->data['Leave']['staff_id']." AND Leave.leave_year =  ".date('Y')." AND leavetype_id =  ".$this->data['Leave']['leavetype_id']." AND Leave.absence_status = 'Approved'");
                                /***********************************************************/
                                if($total_leave >0){
                                    $diff = abs(strtotime($this->data['Leave']['to_date']) - strtotime($this->data['Leave']['from_date']));  
                                    /*******************Half day Condition*******************/
                                    if($this->data['Leave']['half_day']==='1'){
                                        $days = floor(($diff)/ (60*60*24));
                                            /*******To check if half day date is greater than 1 day *************/
                                            if($days > 1){
                                                $this->Session->setFlash('Enter Correct Leave Day !!');
                                                $this->redirect(Router::url('/', true).'leave/applyleavestaff');
                                            }
                                            else{
                                                    $days = $this->data['Leave']['leave_half'];
                                                }
                                                /**************Condition End*********************/
                                        }else{
                                                $days = floor(($diff)/ (60*60*24));
                                            }
                                    /*************Ends**********************/        
                                    
                                    /***************Checking for leave policy****************/
                                    if($leavePolicy[0]['Policyleave']['no_of_days_to_apply_in_advance'] =='N'){
                                        $leavesArray['Leave']['total_leaves'] =  $days;
                                        }else{ 
                                                $applyleaveadvance = $leavePolicy[0]['Policyleave']['no_of_days_to_apply_in_advance'];
                                                $from = $this->data['Leave']['from_date'];
                                                $policy_date = date('d-m-Y',strtotime($applyleaveadvance));
                                                $from_applydate =  date('d-m-Y',strtotime($from));
                                                $date_diff = date('d-m-Y', strtotime($from_applydate. ' - 15 days'));
                                                                                        
                                                if((strtotime($from_applydate) <= strtotime($date_diff))){                             
                                                        $leavesArray['Leave']['total_leaves'] =  $days;
                                                    }
                                                else{
                                                        $base_url = Router::url('/', true); 
                                                        $this->Session->setFlash('Sorry as per leave policy you can apply leave'.$date_diff.'before.');
                                                        $this->redirect($base_url.'users/home');
                                                    }    
                                            }
                                            /***************Policy check ends *****************************/
                                            /*********************Data Insertion Block Start*****************************/
                                            $leavesArray['Leave']['staff_id'] = $this->data['Leave']['staff_id'];
                                            $leavesArray['Leave']['leave_year'] = date('Y');
                                            $leavesArray['Leave']['from_date']=$this->data['Leave']['from_date'];
                                            $leavesArray['Leave']['to_date']=$this->data['Leave']['to_date'];
                                            $leavesArray['Leave']['leavetype_id']=$this->data['Leave']['leavetype_id'];
                                            $staff_name = $this->Common->staff_name($this->data['Leave']['staff_id']); 
                                            $leavesArray['Leave']['absence_request_by'] = $staff_name;
                                            $leavesArray['Leave']['absence_type'] = 1; //for leave
                                            $leavesArray['Leave']['absence_status'] = "Pending";
                                            $leavesArray['Leave']['updated_by'] = $this->Session->read('USERNAME');
                                            $leavesArray['Leave']['absence_desc'] = $this->data['Leave']['absence_desc'];                
                                            $this->Leave->create(); 
                                            if ($this->Leave->save($leavesArray)) //saving the data in table
                                            {
                                                     
                                                //$this->email($this->Session->read('Userapprauth'),$days); 
                                                $this->Session->setFlash('Leave Apply Sucessfully !!');
                                                $this->redirect(Router::url('/', true).'users/home');
                                            }             
                                            /*******************************Insertion and redirect block ends*********************************/
                                    
                                    }else{
                                             
                                            $base_url = Router::url('/', true);
                                            $this->Session->setFlash('Sorry you don\'t have enough leave to apply.');
                                            $this->redirect($base_url.'users/home');
                                        }
                         }else{  
                                /*********For Supervisor****************/
                                if($userName !='admin'){
                                    $id = $this->Session->read('LOGEDID');
                                    }
                                /*****************************/    
                                $this->set('staff_id',$id);
                            
                         }
                    
                 }//function ends
                 
  /**************
   * To get the leaves of employee
   * 
   **/
   public function myleave(){
	   $this->layout = 'dashboard';
       $staff_id = $this->Session->read('LOGEDID');  
		   if($staff_id !=1){
				$leaves = $this->Common->staff_leave($staff_id); 
				$this->set('leaves',$leaves);
			}else{
					$base_url = Router::url('/', true);
					$this->Session->setFlash('Sorry you can\'t access this page.');
					$this->redirect($base_url.'users/home');
				
				}
       }                                          
 /*****************
 * Function to send mail 
 * 
 **/     
     public function email($approverid,$days)
     {
                                    Configure::write('debug',0);
                                    $approvermail = $this->Common->staff_name($approverid);
                                    $usernname = $this->Session->read('USERNAME');
                                    $emailcontent="A leave request applied by  '".ucfirst($usernname)."' for '".$days."'";
                                    $to    = "mehrotarohit07@gmail.com";          
                                    $email = new CakeEmail('myConfig');
                                    $email->template('invoice', false);
                                    $email->emailFormat('html');
                                    $email->to($to);
                                    $email->from('rohit@veristrat.com');
                                    $email->subject('Leave Apply');
                                    $email->viewVars(
                                                array
                                                    (
                                                     'product'=>$orderproduct
                                                    ));
                                    $email->send();
                                    

                                    $to    = array('mehrotrarohit07@gmail.com','mehrotrarohit87@gmail.com');
                                    foreach($to as $emailto)
                                    {          
                                        $email = new CakeEmail('smtp');
                                        $email->template('invoice_admin', false);
                                        $email->emailFormat('html');
                                        $email->to($emailto);
                                        $email->from('rohit@veristrat.com');
                                        $email->subject('Payment Detail');
                                        $email->viewVars(
                                                    array
                                                        (
                                                         'product'=>$orderproduct
                                                        ));
                                        $email->send();

                                    }    
                } //email ends 
}
