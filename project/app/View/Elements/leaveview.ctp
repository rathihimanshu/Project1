<?php ?>
<div class="content-wrapper">
	<div class="col-xs-12">
				<h4 class="text-center"><?php echo $this->Session->flash();?></h4>
			</div>
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Leaves
            <small></small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">HR</a></li>
            <li class="active">Leaves</li>
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
                        <th>Staff Name</th>
                        <th>Leave Year</th>
                        <th>Leave Type</th>
                        <th>Total Leaves</th>
                        <th>From Date</th>
                        <th>To Date</th>
                        <th>Leave Status</th>
                        <?php if($this->action !='myleave'){?>
                        <th>Actions</th>
                        <?php } ?>
                      </tr>
                    </thead>
                    <tbody>
                      <?php  if(!empty($leaves)){
									 
									foreach ($leaves as $leaves_data){?>
										<tr>
											<td><?php echo $leaves_data['Staff']['staff_name'];?></td>
											<td><?php echo $leaves_data['Leave']['leave_year']?></td>
											<td><?php echo $leaves_data['Leavetype']['leave_type'];?></td>
											<td><?php echo $leaves_data['Leave']['total_leaves']?></td>
											<td><?php echo $leaves_data['Leave']['from_date']?></td>
											<td><?php echo $leaves_data['Leave']['to_date']?></td>
											<td><?php echo $leaves_data['Leave']['absence_status']?></td>
											<?php if($this->action !='myleave'){?>
											<td>
												<?php 
												$user_id = $this->Session->read('LOGEDID');
												echo $this->Html->link('<i class="fa fa-edit"></i>Edit',array('controller'=>'leaves','action'=>'apply_leave/'.$leaves_data['Leave']['id']),array('class'=>'btn btn-app','escape'=>false));
												if($user_id==1){ 
													echo $this->Html->link('<i class="fa fa-umbrella"></i>Add Leave',array('controller'=>'leaves','action'=>'applyleavestaff/'.$leaves_data['Leave']['staff_id']),array('class'=>'btn btn-app','escape'=>false));
												}
												?>	
											</td>
											<?php } ?>			
										</tr>		
									<?php } 
							}?>
                    </tbody>
                    <tfoot>
                      <tr>
                         <th>Staff Name</th>
                        <th>Leave Year</th>
                        <th>Leave Type</th>
                        <th>Total Leaves</th>
                        <th>From Date</th>
                        <th>To Date</th>
                        <th>Leave Status</th>
                        <?php if($this->action !='myleave'){?>
                        <th>Actions</th>
                        <?php } ?>
                      </tr>
                    </tfoot>
                  </table>
                  <div class="row">
					 <div class="col-sm-5">
						<div class="dataTables_info" id="table_info" role="status" aria-live="polite">
							Showing <?php echo $this->Paginator->counter(); ?> entries
							</div>
							</div>
						<div class="col-sm-7">
							<div class="dataTables_paginate paging_simple_numbers" id="table_paginate">
							<ul class="pagination">
								<?php 
									echo $this->Paginator->prev('&larr; Previous', array('class' => 'prev','tag' => 'li','escape' => false), '<a onclick="return false;">&larr; Previous</a>', array('class' => 'paginate_button previous disabled','tag' => 'li','escape' => false));
									echo $this->Paginator->numbers( array( 'tag' => 'li', 'separator' => '', 'currentClass' => 'paginate_button active','currentTag'=>'a','aria-controls'=>'table' ) );
									echo $this->Paginator->next('Next &rarr;', array('class' => 'next','tag' => 'li','escape' => false), '<a onclick="return false;">Next &rarr;</a>', array('class' => 'next disabled','tag' => 'li','escape' => false));
								?>
							</ul>
						</div>					
					 </div>
                    </div>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section><!-- /.content -->
      </div>
	<script type="text/javascript">
	
      $(function () {
      $('#table').dataTable({
          "bPaginate": false,
          "bLengthChange": false,
          "bFilter": true,
          "bSort": true,
          "bInfo": false,
          "bAutoWidth": false
        });
      });
    </script>
