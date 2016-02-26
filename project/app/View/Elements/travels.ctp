<?php ?>
<div class="content-wrapper">
	<div class="col-xs-12">
				<h4 class="text-center"><?php echo $this->Session->flash();?></h4>
			</div>
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Travel
            <small></small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Settings</a></li>
            <li class="active">Travel</li>
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
					
                  </div>
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="table" class="table table-bordered table-striped">
                    <thead>
					 <tr>
                        <th>Staff Name</th>
                        <th>Travel Purpose</th>
                        <th>Travel From</th>
                        <th>Travel To</th>
                        <th>From Date</th>
                        <th>To Date</th>
                        <th>Status</th>
                        <th>Travel Report</th>
                        <th>Actions</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php  if(!empty($stafftraveldetail)){
									foreach ($stafftraveldetail as $location_data){?>
										<tr>
											<td><?php $data = $this->Common->employeeAuth($location_data['Leave']['staff_id']);
														echo $data['Leave']['staff_name'];?></td>
											<td><?php echo $location_data['Travelpurpose']['name']?></td>
											<td><?php echo $location_data['Leave']['travel_from_place']?></td>
											<td><?php echo $location_data['Leave']['travel_to_place']?></td>
											<td><?php echo $location_data['Leave']['from_date']?></td>
											<td><?php echo $location_data['Leave']['to_date']?></td>
											<td><?php echo $location_data['Leave']['absence_status']?></td>
											<td><?php echo $location_data['Leave']['travel_report_upload']?></td>
											<td>
												<?php echo $this->Html->link('<i class="fa fa-edit"></i>Edit',array('controller'=>'travels','action'=>'edit/'.$location_data['Leave']['id']),array('class'=>'btn btn-app','escape'=>false));?>
												<?php 
													$user_id = $this->Session->read('LOGEDID');
													if($user_id==1){  
														echo $this->Html->link('<i class="fa fa-truck"></i>Add Travel',array('controller'=>'travels','action'=>'staff_travel/'.$location_data['Leave']['staff_id']),array('class'=>'btn btn-app','escape'=>false));
													}?>
											</td>			
										</tr>		
									<?php } 
							}?>
                    </tbody>
                    <tfoot>
                      <tr>
                        <th>Staff Name</th>
                        <th>Travel Purpose</th>
                        <th>Travel From</th>
                        <th>Travel To</th>
                        <th>From Date</th>
                        <th>To Date</th>
                        <th>Status</th>
                        <th>Travel Report</th>
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
          "bFilter": false,
          "bSort": true,
          "bInfo": true,
          "bAutoWidth": false,
		  "scrollX": true
        });
      });
    </script>
