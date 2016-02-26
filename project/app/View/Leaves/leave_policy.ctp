<?php ?>
<div class="content-wrapper">
	<div class="col-xs-12">
				<h4 class="text-center"><?php echo $this->Session->flash();?></h4>
			</div>
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Location
            <small></small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Settings</a></li>
            <li class="active">Location</li>
          </ol>
        </section>
		
        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-xs-12">
                 <div class="box">
                <div class="box-header">
                  <div class="row">
                  
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="table" class="table table-bordered table-striped">
                    <thead>
					 <tr>
                        <th>Leave Type</th>
                        <th>Holidays</th>
                        <th>Weekly Off</th>
                        <th>Club With Other Leave</th>
                        <th>No of days to apply in Advance</th>
                        <th>No of days After end date</th>
                        <th>Actions</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php  if(!empty($policy)){
									 
									foreach ($policy as $policy_data){?>
										<tr>
											<td><?php echo $policy_data['Policyleave']['leavetype_id']?></td>
											<td><?php echo $policy_data['Policyleave']['include_holidays']?></td>
											<td><?php echo $policy_data['Policyleave']['include_weekly_off']?></td>
											<td><?php echo $policy_data['Policyleave']['club_with_other_leave']?></td>
											<td><?php echo $policy_data['Policyleave']['no_of_days_to_apply_in_advance']?></td>
											<td><?php echo $policy_data['Policyleave']['no_of_days_after_end_date']?></td>
											<td>
												<?php echo $this->Html->link('<i class="fa fa-edit"></i>Edit',array('controller'=>'leaves','action'=>'policy_edit/'.$policy_data['Policyleave']['id']),array('class'=>'btn btn-app','escape'=>false)); ?>
												<?php echo $this->Html->link('<i class="fa fa-trash-o"></i>Delete',array('controller'=>'leaves','action'=>'policy_delete/'.$policy_data['Policyleave']['id']),array('class'=>'btn btn-app','escape'=>false)); ?>
											</td>			
										</tr>		
									<?} 
							}?>
                    </tbody>
                    <tfoot>
                      <tr>
                        <th>Leave Type</th>
                        <th>Holidays</th>
                        <th>Weekly Off</th>
                        <th>Club With Other Leave</th>
                        <th>No of days to apply in Advance</th>
                        <th>No of days After end date</th>
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
          "bAutoWidth": false
        });
      });
    </script>
