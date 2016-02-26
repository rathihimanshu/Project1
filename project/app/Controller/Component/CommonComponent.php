<?php
/*******************************************
 * Created By : Rohit Mehrotra
 * Created Date:6th may 2015
 * Modified Date:
 * For: To handle the common properties of application
 * *****************************************/	

class CommonComponent  extends Component{
var $uses=array('Leavetype','Policyleave','Staff');
var $components=array('Paginator');
/*******************************************
 * Created By : Rohit
 * Created Date:6th may 2015
 * Modified Date:
 * For: To get leavetype
 * *****************************************/	
function leavetype($id=null){
						if($id){
								$types= ClassRegistry::init('Leavetype')->find('all',array('conditions'=>array('Leavetype.id'=>$id)));
								foreach ($types as $leave){
										$leavetype = $leave['Leavetype']['leave_type'];
									}
									
							}
							else{
									$i=0;
									$leaveArraytype = array();
									$types= ClassRegistry::init('Leavetype')->find('all');
									 
										foreach ($types as $leavedata){
												 $dataleave = str_replace(" ","_",$leavedata['Leavetype']['leave_type']);
												 $leavetype[$i]['id'] = $leavedata['Leavetype']['id'];
												 $leavetype[$i]['leave_type'] = $dataleave;
												 $i++;
											 }
											 
								}		
						 	return $leavetype;										
					}
					
function fetchStaff($id){
					
						if($id){
								 
								$staff_list= ClassRegistry::init('Excemption')->find('all',array('conditions'=>array('Excemption.staff_id'=>$id,'Excemption.year'=>date('Y')),'fields'=>array('Excemption.id')));
			 
								return $staff_list; 
						}
	
	
	
	}
/*-----------------------------------image resize ------------------------------------------*/
	function resize($imagePath, $destinationWidth, $destinationHeight)
    { 
        $this->autoRender = false;
        // The file has to exist to be resized
        if(file_exists($imagePath)) {
        // Gather some info about the image
        $imageInfo = getimagesize($imagePath);
           
        // Find the intial size of the image
        $sourceWidth = $imageInfo[0];
        $sourceHeight = $imageInfo[1];
           
        // Find the mime type of the image
        $mimeType = $imageInfo['mime'];
           
        // Create the destination for the new image
        $destination = imagecreatetruecolor($destinationWidth, $destinationHeight);
   
        // Now determine what kind of image it is and resize it appropriately
        if($mimeType == 'image/jpeg' || $mimeType == 'image/pjpeg') {
            $source = imagecreatefromjpeg($imagePath);
            imagecopyresampled($destination, $source, 0, 0, 0, 0, $destinationWidth, $destinationHeight, $sourceWidth, $sourceHeight);
            imagejpeg($destination, $imagePath);
        } else if($mimeType == 'image/gif') {
            $source = imagecreatefromgif($imagePath);
            imagecopyresampled($destination, $source, 0, 0, 0, 0, $destinationWidth, $destinationHeight, $sourceWidth, $sourceHeight);
            imagegif($destination, $imagePath);
        } else if($mimeType == 'image/png' || $mimeType == 'image/x-png') {
            $source = imagecreatefrompng($imagePath);
            imagecopyresampled($destination, $source, 0, 0, 0, 0, $destinationWidth, $destinationHeight, $sourceWidth, $sourceHeight);
            imagepng($destination, $imagePath);
        } else {
            //$this->_error('This image type is not supported.');
        }
           
        // Free up memory
        imagedestroy($source);
        imagedestroy($destination);
        } else {
        //$this->error('The requested file does not exist.');
        }
    }
/*--------------------------image resize-------------------------------------*/						

function leavePolicy($id){
		 
		if($id){
			
			$leavepolicy = ClassRegistry::init('Policyleave')->find('all',array('conditions'=>array('Policyleave.leavetype_id'=>$id)));
			return $leavepolicy; 
			}
			
	}
/******
 * To Get Staff Name 
 * 
 * */	
 function staff_name($id){
		if($id){
			  
			$staff_name = ClassRegistry::init('Staff')->find('all',array('conditions'=>array('Staff.id'=>$id),'fields'=>array('Staff.staff_name')));			 
			foreach($staff_name as $staff){
					$name = $staff['Staff']['staff_name'];
				}
			return $name; 
			
			}
	 
	 }
/************
 * 
 * To Get The Staff Travel Data 
 * **/	 
 function travel_detail($id,$staffarray){
			ClassRegistry::init('Leave')->bindModel(array('belongsTo'=>array('Travelpurpose'=>array('type'=>'INNER'))));
			ClassRegistry::init('Leave')->bindModel(array('belongsTo'=>array('Travelmode'=>array('type'=>'INNER'))));
			if (!empty($staffarray))
			{
					$travel_data = ClassRegistry::init('Leave')->find('all', array(
						'conditions' => array(
							'Leave.staff_id' => $staffarray,
							'Leave.absence_type' => '2',
							'Leave.absence_status' => 'Pending',
						)
					));
			}
		  else
			{ 
				$travel_data = ClassRegistry::init('Leave')->find('all', array(
				'conditions' => array(
					'Leave.absence_type' => '2',
					'Leave.absence_status' => 'Pending'
					)
				));
			}

		return $travel_data;
}
/*****************
 * To Get the staff Leave 
 * 
 **/
 function staff_leave($staffarray){
	 
								ClassRegistry::init('Leave')->bindModel(array('belongsTo'=>array('Leavetype'=>array('type'=>'INNER'))));
								ClassRegistry::init('Leave')->bindModel(array('belongsTo'=>array('Staff'=>array('type'=>'INNER'))));
						if(!empty($staffarray)){
												$this->Paginator->settings = array('conditions' =>array('Leave.absence_type'=>'1','Leave.staff_id'=>$staffarray,'Leave.absence_status'=>'Pending'));
												$leaves_data = $this->Paginator->paginate('Leave');  
													
			 						}else{
											$this->Paginator->settings = array('conditions' =>array('Leave.absence_type'=>'1','Leave.absence_status'=>'Pending'),'order'=>array('Leave.id Desc'));
											// similar to findAll(), but fetches paged results
											$leaves_data = $this->Paginator->paginate('Leave');
				 
									}
							return $leaves_data;		
	 
	 }//staffleave 

}
