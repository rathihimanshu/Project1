<?php ?>
<div class="content-wrapper">
	<div class="col-xs-12">
				<h4 class="text-center"><?php echo $this->Session->flash();?></h4>
			</div>
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Staff
            <small></small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">HR</a></li>
            <li class="active">Staff</li>
          </ol>
        </section>
		
        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-xs-12">
                 <div class="box">
                <div class="box-header">
                  <div class="row">
                  <div class="col-xs-2">
					<?php echo $this->Html->link('Add',array('controller'=>'staffs','action'=>'add'),array('class'=>'btn btn-block btn-primary'))?>
                  </div>
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="table" class="table table-bordered table-striped">
                    <thead>
					 <tr>
                        <th>Staff Name</th>
                        <th>Designation</th>
                        <th>Email</th>
                        <th>Company</th>
                        <th>Location</th>
                        <th>Status</th>
                        <th>Actions</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php  if(!empty($staff)){
									$i =0; 
									foreach ($staff as $staff_data){?>
										<tr>
											<td><?php echo $staff_data['Staff']['staff_name'];?></td>
											<td><?php 
													$staff_designation=$this->Common->emp_designation($staff_data['Staff']['id']);
													if(!empty($staff_designation)){
														echo $staff_designation['designation'];
													} 
											?></td>
											<td><?php echo $staff_data['Staff']['email'];?></td>
											<td><?php echo $staff_data['Staff']['company'];?></td>
											<td><?php echo $staff_data['Staff']['location'];?></td>
											<td><?php echo $staff_data['Staff']['status'];?></td>
											<td>
												<div class="col-xs-7">
												<?php echo $this->Html->link('<i class="fa fa-edit"></i>Edit',array('controller'=>'staffs','action'=>'edit/'.$staff_data['Staff']['id']),array('class'=>'btn btn-app','escape'=>false)); ?>
												<?php echo $this->Html->link('<i class="fa fa-trash-o"></i>Delete',array('controller'=>'staffs','action'=>'delete/'.$staff_data['Staff']['id']),array('class'=>'btn btn-app','escape'=>false)); ?>
												<?php
														$user_id = $this->Session->read('LOGEDID');
														if($user_id==1){
															echo $this->Html->link('<i class="fa fa-calendar"></i>View Leave',array('controller'=>'leaves','action'=>'viewleave/'),array('class'=>'btn btn-app','escape'=>false));
														}else{
															echo $this->Html->link('<i class="fa fa-calendar"></i>View Leave',array('controller'=>'leaves','action'=>'viewleave/'.$staff_data['Staff']['id']),array('class'=>'btn btn-app','escape'=>false));
															} 	
														echo $this->Html->link('<i class="fa fa-umbrella"></i>Add Leave',array('controller'=>'leaves','action'=>'applyleavestaff/'.$staff_data['Staff']['id']),array('class'=>'btn btn-app','escape'=>false));
														?>
														<?php echo $this->Html->link('<i class="fa fa-truck"></i>Add Travel',array('controller'=>'travels','action'=>'staff_travel/'.$staff_data['Staff']['id']),array('class'=>'btn btn-app','escape'=>false));?>
												<?php echo $this->Html->link('<i class="fa fa-plane"></i>View Travel',array('controller'=>'travels','action'=>'index/'.$staff_data['Staff']['id']),array('class'=>'btn btn-app','escape'=>false)); ?>
												</div>
											</td>			
										</tr>		
									<?php $i++;} 
							}?>
                    </tbody>
                    <tfoot>
                      <tr>
                        <th>Staff Name</th>
                        <th>Designation</th>
                        <th>Email</th>
                        <th>Company</th>
                        <th>Location</th>
                        <th>Status</th>
                        <th>Actions</th>
                      </tr>
                    </tfoot>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section><!-- /.content -->
      </div>
	<script type="text/javascript">
	    $(function () {
		  $('#table').dataTable({
			  "bPaginate": true,
			  "bLengthChange": false,
			  "bFilter": true,
			  "bSort": true,
			  "bInfo": true,
			  "bAutoWidth": false,
			  "scrollX":true
					  
			});

      });
    </script>
