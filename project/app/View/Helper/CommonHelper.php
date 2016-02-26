<?php
/****************************************************************************************************
* File: CommentHelper.php
* Created by: Rohit Mehrotra
* Created on: 28 April,2015
* Modified BY:
* Modified on:  
**************************************************************************************************/
class CommonHelper extends Helper 
{ 
    var $uses=array('Setting','Companylocation','Location','Company','Excemption','Leavetype','Staff','Designation','Staffdesignation','Employeetype','Employeestatus','Allottedleave','Leave','Travelmode','Travelpurpose');
    var $components = array();
	var $helpers=array('Html','Session');
	/**
	 * To get the last sort_order 
	 * 
	 * */
	function getsortOrder()
	{
		$sort_order = ClassRegistry::init('Setting')->find('all',array('order'=>array('Setting.id'=>'desc'),'fields'=>array('sort_order')));
		$sortedOrder = $sort_order['0']['Setting']['sort_order'];
		$final_sortOrder = $sortedOrder + 1;
		return $final_sortOrder; 
    }
    /***
     * To get the company dropdown 
     * **/
     
     function companydropdown()
	{
		 
		$compdropdown = ClassRegistry::init('Company')->find('list');
		return $compdropdown; 
	  
	}
	/***
     * To get the location dropdown 
     * **/
	   
     function locationdropdown()
	{
					
		$locdropdown = ClassRegistry::init('Location')->find('list');
		return $locdropdown; 
	  
	}
	/**
	 * To get the leave typoe 
	 * 
	 * **/
	 function leavetype(){
						$leave_list = ClassRegistry::init('Leavetype')->find('all');
							foreach ($leave_list as $list){
						                 $list_id = $list['Leavetype']['id'];
										 $leave_listing[$list_id] = $list['Leavetype']['leave_type'];
								}
						
						 return $leave_listing;
						
					 }
	/**
	 * To get the leave exception 
	 * 
	 * **/
	 
	function leaveexcemption($id){
							  
							  ClassRegistry::init('Excemption')->bindModel(array('belongsTo'=>array('Leavetype')));
							  ClassRegistry::init('Excemption')->bindModel(array('belongsTo'=>array('Staff')));
							if($id){
									$leaveexcemption_data = ClassRegistry::init('Excemption')->find('all',array('conditions'=>array('Excemption.year'=>date('Y'),'Excemption.staff_id'=>$id),array('order'=>array('Excemption.year'=>'desc'))));	
								}
								else{
										$leave_data = ClassRegistry::init('Excemption')->find('all',array('conditions'=>array('Excemption.year'=>date('Y')),array('order'=>array('Excemption.year'=>'desc'))));
									}
				 
				 
				
				$leaveArray = array();
				$i = 0;
				$j = 0 ;
				if(!empty($leaveexcemption_data)){
								foreach ($leaveexcemption_data as $excemption){
									$leaveType = str_replace(" ","_",$excemption['Leavetype']['leave_type']);
									$leaveArray['Excemption']['id'] = $excemption['Excemption']['id'];
									$leaveArray['Excemption']['staff_name'] = $excemption['Staff']['staff_name'];
									$leaveArray['Excemption'][$leaveType] = $excemption['Excemption']['values'];
									$leaveArray['Excemption']['count'] = $i;
									$i++;	
								}
					}
					else{
						  foreach ($leave_data as $dataleave){
							 $leaveType = str_replace(" ","_",$dataleave['Leavetype']['leave_type']);
							 if(($i > 0) && in_array($dataleave['Excemption']['staff_id'],$leaveArray[$i-1]['Excemption'])){
									$leaveArray[$i-1]['Excemption'][$leaveType] = $dataleave['Excemption']['values'];
									
								}
								else{
									$leaveArray[$i]['Excemption']['id'] = $dataleave['Excemption']['id'];
									$leaveArray[$i]['Excemption']['staff_name'] = $dataleave['Staff']['staff_name'];
									$leaveArray[$i]['Excemption']['staff_id'] = $dataleave['Excemption']['staff_id'];
									$leaveArray[$i]['Excemption']['year'] = $dataleave['Excemption']['year'];
									$leaveArray[$i]['Excemption'][$leaveType] = $dataleave['Excemption']['values'];
							} 
							$i++;
							}//foreach
						}//else
								
				return $leaveArray;
		}	 				 
	/**
	 * To get the Employee Designation 
	 * 
	 * **/	
	 function emp_designation($id){
					
					if($id){
								ClassRegistry::init('Staffdesignation')->bindModel(array('belongsTo'=>array('Designation')));
								$designation_list = ClassRegistry::init('Staffdesignation')->find('all',array('conditions'=>array('Staffdesignation.staff_id'=>$id,'Designation.status'=>1),'fields'=>array('Designation.name'),'order'=>array('Staffdesignation.growth_id'=>'desc')));
								$listarray = array();
								if(!empty($designation_list)){
									foreach($designation_list as $list){
										$listarray['designation'] = $list['Designation']['name'];
									}
								}	
								
								return $listarray; 
						}
		 
		 }
		 
		/***
     * To get the employeetdropdown dropdown 
     * **/
     
     function employeetype()
	{
		 
		$empdropdown = ClassRegistry::init('Employeetype')->find('list');
		return $empdropdown; 
	  
	} 		
	
	/***
     * To get the employeetdropdown dropdown 
     * **/
     
     function employeestatus()
	{
		 
		$empstatdropdown = ClassRegistry::init('Employeestatus')->find('list');
		return $empstatdropdown; 
	  
	} 
	/*****
	 * Employee Approving Auth
	 * 
	 */	
	 function employeeAuth($id=null){
			
			if($id){
					
					$empauthdropdown = ClassRegistry::init('Staff')->find('all',array('conditions'=>array('Staff.id'=>$id),'fields'=>array('Staff.id','Staff.staff_name')));
				}
				else{
						$empauthdropdown = ClassRegistry::init('Staff')->find('all',array('fields'=>array('Staff.id','Staff.staff_name')));
					}
			
		    $authArray = array();
		    if($id){
					foreach($empauthdropdown as $authdata){
					$authid = $authdata['Staff']['id']; 
					$authArray['Leave']['staff_name'] = $authdata['Staff']['staff_name'];
				}
				
				}else{
						foreach($empauthdropdown as $authdata){
								$authid = $authdata['Staff']['id']; 
								$authArray[$authid] = $authdata['Staff']['staff_name'];
							}
					}
				
		    return $authArray; 
		 
		 }
		 
	/***************
	 * 
	 * 
	 * */
	 function leavestatustype (){
		 $leave = array();
		 $leavetype = array();
		 $leave[0]['absence_status'] = "Approved";
		 $leave[1]['absence_status'] = "Pending";
		 $leave[2]['absence_status'] = "Rejected"; 
		 $leave[3]['absence_status'] = "Cancel";
		 foreach ($leave as $type){
			 $status = $type['absence_status'];
			 $leavetype[$status] = $type['absence_status']; 
			 } 
			 return  $leavetype;
		 
		 
		 }
		/******
		 * Employee Leave Current Status
		 * 
		 **/
		 function empleave_currentstatus($empid){
			 $leavetypes = $this->leavetype();
			 $leaveStatusArray = array();
			 $i = 0 ;
			 foreach ($leavetypes as $key=>$value){ 
				/*$total_leavestatus = ClassRegistry::init('Allottedleave')->query("SELECT ((SELECT SUM( Allottedleave.values ) FROM  `allottedleaves` AS  `Allottedleave` WHERE Allottedleave.leavetype_id =  ".$key." AND Allottedleave.employeetype_id = ( 
				SELECT Staff.employeetype_id FROM  `staffs` AS  `Staff` WHERE Staff.id =  ".$empid." ) AND Allottedleave.year =  ".date('Y').") - SUM( Leave.total_leaves )
				)left_leave FROM  `leaves` AS  `Leave` WHERE Leave.staff_id =  ".$emp." AND Leave.leave_year =  ".date('Y')." AND leavetype_id =  ".$key." AND Leave.absence_status = 'Approved'");*/
				$total_leavestatus = ClassRegistry::init('Leave')->find('all',array('fields'=>array('SUM(Leave.total_leaves) AS leave_left','Leave.leavetype_id'),'conditions'=>array('Leave.staff_id'=>$empid,'Leave.leave_year'=>date('Y'),'Leave.absence_status'=>'Approved','Leave.leavetype_id'=>$key)));
				if($total_leavestatus[0][0]['leave_left'] !=""){
					$leaveStatusArray[$i]['leave_left'] = $total_leavestatus[0][0]['leave_left'];
					$leaveStatusArray[$i]['leavetype_id'] = $total_leavestatus[0]['Leave']['leavetype_id']; 
				}
				$i++;
			}
			return $leaveStatusArray;
		}
		  	 
	 	/*********
	 	 * 
	 	 * Total Leaves 
	 	 * **/
	 	 
	 function leave_employee($id){
				
				$typeexcemption = $this->leaveexcemption($id);
				$leavetypes = $this->leavetype();
				$emp_leave = $this->empleave_currentstatus($id); 
				$newArray = array();
				$finalArray = array();
				$i = 0;
				foreach ($leavetypes as $key=>$value){
					 $leavetypesval = str_replace(" ","_",$value);
						if(isset($emp_leave[$i]['leavetype_id']) == $key){
							$newArray[$i][$leavetypesval] = $emp_leave[$i]['leave_left'];
							$newArray[$i]['total_leave'] = $typeexcemption['Excemption'][$leavetypesval]; 
						}
						else{
							 if(isset($typeexcemption['Excemption'][$leavetypesval])){
							  $newArray[$i][$leavetypesval] = $typeexcemption['Excemption'][$leavetypesval];
							  $newArray[$i]['total_leave'] = $typeexcemption['Excemption'][$leavetypesval];
						     }else{
									$newArray[$i][$leavetypesval] = 0;
							        $newArray[$i]['total_leave'] = 0;
								 
								 }
							}
						$i++;
					}
					
				return $newArray; 	 
		 }
/*********
 * Travel mode drop down 
 * 
 * */		 
 function travel_mode(){
	 
		$modedropdown = ClassRegistry::init('Travelmode')->find('list');
		return $modedropdown; 
	 }
/*************
 * 
 * Travle Purpose
 * */	 
function travel_purpose(){
	$travelpurposedropdown = ClassRegistry::init('Travelpurpose')->find('list');
	return $travelpurposedropdown; 
	
	}
/*********
 * Pending Travel Count
 * */
 function travel_count(){
			if($this->Session->read('LOGEDID') !=""){
				$id = $this->Session->read('LOGEDID'); 
				$staff_data = ClassRegistry::init('Staff')->find('all',array('conditions'=>array('Staff.approving_authority'=>$id),'fields'=>array('Staff.id'))); 
				
				$leavelistarray = array();
				$i= 0 ;
				$count = 0 ;
				foreach($staff_data as $data){
					$leavelistarray = ClassRegistry::init('Leave')->find('count',array('fields'=>array('Leave.staff_id'),'conditions'=>array('Leave.staff_id'=>$data['Staff']['id'],'Leave.absence_type'=>'2','Leave.absence_status'=>'Pending')));  
					$count +=$leavelistarray;	
				   } 
					
					return $count; 
				}
	 
	 }
 		 	 
}
?>   
