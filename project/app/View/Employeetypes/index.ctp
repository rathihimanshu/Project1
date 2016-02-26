<?php ?>
<div class="content-wrapper">
	<div class="col-xs-12">
				<h4 class="text-center"><?php echo $this->Session->flash();?></h4>
			</div>
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Company
            <small></small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Settings</a></li>
            <li class="active">Employee Type</li>
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
					<?php echo $this->Html->link('Add',array('controller'=>'employeetypes','action'=>'add'),array('class'=>'btn btn-block btn-primary'))?>
                  </div>
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="table" class="table table-bordered table-striped">
                    <thead>
					 <tr>
                        <th>Name</th>
                        <th>Carry forward leave type</th>
                        <th>Max leave carry forward</th>
                        <th>Actions</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php  if(!empty($employee)){
									foreach ($employee as $employee_data){?>
										<tr>
											<td><?php echo $employee_data['Employeetype']['name']?></td>
											<td><?php echo $employee_data['Employeetype']['leave_type_id']?></td>
											<td><?php echo $employee_data['Employeetype']['carry_forward']?></td>
											<td>
												<?php echo $this->Html->link('<i class="fa fa-edit"></i>Edit',array('controller'=>'employeetypes','action'=>'edit/'.$employee_data['Employeetype']['id']),array('class'=>'btn btn-app','escape'=>false)); ?>
												<?php echo $this->Html->link('<i class="fa fa-trash-o"></i>Delete',array('controller'=>'employeetypes','action'=>'delete/'.$employee_data['Employeetype']['id']),array('class'=>'btn btn-app','escape'=>false)); ?>
											</td>			
										</tr>		
									<?} 
							}?>
                    </tbody>
                    <tfoot>
                      <tr>
                        <th>Name</th>
                        <th>Carry forward leave type</th>
                        <th>Max leave carry forward</th>
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
