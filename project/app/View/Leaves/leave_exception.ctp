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
                        <th>Year</th>
                        <th>Staff Name</th>
                        <th>Causal Leave</th>
						<th>Earned Leave</th>
						<th>Loss Of Pay</th>
						<th>Maternity Leave</th>
						<th>Paternity Leave</th>
                        <th>Actions</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php  if(!empty($staff_listing_excemption)){
									$leaveexception = $this->Common->leaveexcemption(); 
									$leavetype = $this->Common->leavetype();
									 foreach ($leaveexception as $staff_data){?>
										<tr>
											<td><?php echo $staff_data['Excemption']['year']?></td>
											<td><?php echo $staff_data['Excemption']['staff_name']?></td>
											<td><?php 
													if(!empty($staff_data['Excemption']['Causal_Leave'])){ 
															echo $staff_data['Excemption']['Causal_Leave'];
													}else{?>
														0
													<?php } ?>
											</td>
											<td><?php 
													if(!empty($staff_data['Excemption']['Earned_Leave'])){	
															echo $staff_data['Excemption']['Earned_Leave'];
															}else{?>
																0
															<?php }?></td>
											<td><?php if(!empty($staff_data['Excemption']['Loss_Of_Pay'])){
															echo $staff_data['Excemption']['Loss_Of_Pay'];
													}else{?>
														0
													<?php } ?></td>		
											<td><?php if(!empty($staff_data['Excemption']['Maternity_Leave'])){
															echo $staff_data['Excemption']['Maternity_Leave'];
													}else{?>
														0
													<?php } ?></td>
											<td><?php if(!empty($staff_data['Excemption']['Paternity_Leave'])){
															echo $staff_data['Excemption']['Paternity_Leave'];
													}else{?>
														0
													<?php } ?></td>						
											<td>
												<?php echo $this->Html->link('<i class="fa fa-edit"></i>Edit',array('controller'=>'leaves','action'=>'leave_Exceptionedit/'.$staff_data['Excemption']['id']),array('class'=>'btn btn-app','escape'=>false)); ?>
											</td>			
										</tr>		
									<?
									$i++;
									} 
							}?>
                    </tbody>
                    <tfoot>
                      <tr>
                        <th>Year</th>
                        <th>Staff Name</th>
                        <th>Causal Leave</th>
                        <th>Earned Leave</th>
                        <th>Loss Of Pay</th>
                        <th>Maternity Leave</th>
                        <th>Paternity Leave</th>
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
		  		  
        });
	  $('#table tfoot th').not(":eq(2),:eq(3),:eq(4),:eq(5),:eq(6),:eq(7)") //Exclude columns 3, 4, and 5
                          .each( function () {
        var title = $('#table thead th').eq( $(this).index() ).text();
        $(this).html( '<input type="text" class="form-searchbox" placeholder="'+title+'" />' );
    } );

    // DataTable
		var table = $('#table').DataTable();

		// Apply the search
		table.columns().eq( 0 ).each( function ( colIdx ) {
        if (colIdx == 2 || colIdx == 3 || colIdx == 4 || colIdx == 5 || colIdx == 6 || colIdx == 7) return; //Do not add event handlers for these columns

        $( 'input', table.column( colIdx ).footer() ).on( 'keyup change', function () {
            table
                .column( colIdx )
                .search( this.value )
                .draw();
			} );
				} );
      });
    </script>
