<?php $location_data = $this->data;   ?>
		<div class="content-wrapper">
		<section class="content-header">
          <h1>
            Travel
            <small><?php $uri = explode('/',$_SERVER['REQUEST_URI']); 
					echo ucfirst($uri['3']);
			         ?></small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#"><?php echo ucfirst($uri['2']);?></a></li>
            <li class="active"><?php echo ucfirst($uri['3']);?></li>
          </ol>
        </section>
					<section class="content">
                    <div class="row">
					<div class="col-xs-10">
                            <!-- general form elements -->
                            <div class="box box-primary">
                                <div class="box-header">
                                    <h3 class="box-title"><?php echo ucfirst($uri['3']);?> Travel</h3>
                                </div><!-- /.box-header -->
                                <!-- form start -->
                                <?php echo $this->Form->create('Leave', array('url' => array('controller' => 'travels', 'action' => 'edit')));?>
                                <?php echo $this->Form->input('id');?>
                                <form role="form">
                                    <div class="box-body">
                                        <table id="table" class="table table-bordered table-striped">
										<tr>
										<td>Staff Name</td>
										<td><?php $data = $this->Common->employeeAuth($location_data['Leave']['staff_id']);
														echo $data['Leave']['staff_name'];?></td>
										</tr>
										<tr>
											<td>Travel Purpose</td>
											<td><?php echo $location_data['Travelpurpose']['name']?></td>
										</tr>
										<tr>
											<td>Mode of Travel</td>
											<td><?php echo $location_data['Travelmode']['name']?></td>
										</tr>
										<tr>
											<td>Travel From</td>
											<td><?php echo $location_data['Leave']['travel_from_place']?></td>
										</tr>
										<tr>
											<td>Travel To</td>
											<td><?php echo $location_data['Leave']['travel_to_place']?></td>
											
										</tr>
										<tr>
											<td>Reporting Date</td>
											<td><?php echo $location_data['Leave']['reporting_date']?></td>
										</tr>
										<tr>
											<td>From Date</td>
											<td><?php echo $location_data['Leave']['from_date']?></td>
										</tr>
										<tr>
											<td>Total Abesence</td>
											<td><?php echo $location_data['Leave']['total_leaves']?></td>
										</tr>
										<tr>
											<td>Travel Advance</td>
											<td><?php echo $location_data['Leave']['travel_advance_required']?></td>
										</tr>
										<tr>
											<td>Travel Advance</td>
											<td><?php echo $location_data['Leave']['travel_advance_required']?></td>
										</tr>
										<tr>
											<td>Status</td>
											<td><?php echo $location_data['Leave']['absence_status']?></td>
										</tr>
										<tr>
											<td>Travel Report</td>
											<td><?php echo $location_data['Leave']['travel_report_upload']?></td>
										</tr>
										<tr>
											<td>Travel Request By</td>
											<td><?php echo $location_data['Leave']['absence_request_by']?></td>
										</tr>
										<tr>
											<td>Travel Reason</td>
											<td><?php echo $location_data['Leave']['absence_desc']?></td>
										</tr>
										<tr>
											<td>Supervisor Status</td>
											<td><?php echo $location_data['Leave']['supervisor_absence_status']?></td>
										</tr>
										<tr>
											<td>Supervisor Remarks</td>
											<td><?php echo $location_data['Leave']['supervisor_remarks']?></td>
										</tr>
										<tr>
											<td>Travel Status</td>
											<td><?php echo $location_data['Leave']['supervisor_absence_status']?></td>
										</tr>
										<?php 	$userauth = $this->Session->read('Userapprauth');
												$useradmin = $this->Session->read('USERNAME');
												$staff_id = $this->data['Leave']['staff_id'];
											if(($useradmin==='admin') || ($userauth != $staff_id)){?>
										<tr>
											<td>Absence Status</td>
											<td><?php $leavestat = $this->Common->leavestatustype(); ?>
											<?php 
												if($useradmin==='admin'){
														$remarks_absence = 'absence_status';
														}else if ($userauth != $staff_id){
														 $remarks_absence = 'supervisor_absence_status';
														}
												echo $this->Form->input($remarks_absence, array('type'=>'select', 'options'=>$leavestat,'default'=>'Select A Company', 'id'=>'company', 'class'=>'form-control', 'label'=>false,'required'));?></td>
										</tr>
										<?php } ?>
										<?php if(($useradmin==='admin') || ($userauth != $staff_id)){?>
										<tr>
											<td>Remarks</td>
											<td>
											<?php 
													if($useradmin==='admin'){
														$remarks = 'hr_remarks';
														}else if ($userauth != $staff_id){
															$remarks = 'supervisor_remarks';
														}
											 echo $this->Form->textarea($remarks,array('class'=>'form-control','id'=>'remarks','placeholder'=>'Remarks'));?></td>
										</tr>
										<?php } ?>
										</table>
                                    </div><!-- /.box-body -->

                                    <div class="box-footer">
										<?php $options = array('label' => 'Save', 'class' => 'btn btn-primary', 'div' => false);?>
										<?php echo $this->Form->end($options); ?>
                                        <button type="reset" class="btn btn-primary" onclick="history.back();">Cancel</button>
                                    </div>
                                
                            </div><!-- /.box -->

                            
                            
                        </div>
                        </div>
                        </section>
                        </div>

