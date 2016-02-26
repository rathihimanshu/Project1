<?php ?>
		<div class="content-wrapper">
			<section class="content-header">
          <h1>
            Staff
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
					<div class="col-xs-8">
                            <!-- general form elements -->
                            <div class="box box-primary">
                                <div class="box-header">
                                    <h3 class="box-title"><?php echo ucfirst($uri['3']);?> Staff</h3>
                                </div><!-- /.box-header -->
                                <!-- form start -->
                                <?php echo $this->Form->create('Leave',array('url' => array('controller' => 'leaves', 'action' => 'applyleavestaff'))); ?>
                                <?php echo $this->Form->input('id');
									
                                ?>
                                <form role="form">
                                    
									<div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Leave Date From*</label>
                                              <?php echo $this->Form->text('from_date',array('class'=>'form-control','id'=>'from_date','placeholder'=>'From Date','required'));?>
                                                                                         
                                        </div>
                                         </div><!-- /.box-body -->
                                         
                                         <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Leave Date To*</label>
                                              <?php echo $this->Form->text('to_date',array('class'=>'form-control','id'=>'to_date','placeholder'=>'To Date','required'));?>                                    
										</div>
                                        </div><!-- /.box-body -->
                                         <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Half Day</label>
                                              <?php echo $this->Form->checkbox('half_day', array('hiddenField' => false,'id'=>'half_day','onclick'=>'halfday()'));
													echo $this->Form->text('leave_half',array('class'=>'form-control','id'=>'leave_halfday','placeholder'=>'Half Day','value'=>'0.5','readonly'));
                                              ?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
										<div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Leave Type*</label>
                                              <?php $leave_type = $this->Common->leavetype();?>
                                              <?php echo $this->Form->input('leavetype_id', array('type'=>'select', 'options'=>$leave_type,'default'=>'Select Location', 'id'=>'leavetype', 'class'=>'form-control', 'label'=>false,'required'));?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
                                         <?php 
										
										if($this->Session->read('Userapprauth') !=$staff_id || $this->Session->read('Userapprauth')==$staff_id){?>
                                        
                                         <?php }else{?>
											 <div class="box-body">
                                        <div class="form-group">
                                             <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Leave Status*</label>
                                            <?php  $leave_status = $this->Common->leavestatustype();?>
                                              <?php echo $this->Form->input('absence_status', array('type' => 'select','options'=>$leave_status,'class'=>'form-control','id'=>'email','placeholder'=>'Email','label'=>false,'required')); 
                                              ?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
											 <?php } ?>
                                         <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Comment</label>
                                              <?php echo $this->Form->textarea('absence_desc',array('class'=>'form-control','id'=>'phone','placeholder'=>'Comment'));?>
                                              <?php echo $this->Form->text('staff_id',array('type'=>'hidden','class'=>'form-control','id'=>'phone','value'=>$staff_id ));?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
                                        <div class="box-footer">
										<?php $options = array('label' => 'Save', 'class' => 'btn btn-primary', 'div' => false);?>
										<?php echo $this->Form->end($options); ?>
                                        <button type="reset" class="btn btn-primary" onclick="history.back();">Cancel</button>
                                    </div>
                                     </div><!-- /.box -->                
                                      </div>
									  <div class="col-xs-4">
									   <div class="box">
										<div class="box-header">
										  <h3 class="box-title">Total Leaves</h3>
										</div><!-- /.box-header -->
										<div class="box-body no-padding">
											<?php $staffleave_data = $this->Common->leave_employee($staff_id );?>
										  <table class="table table-condensed">
											  <tr>
											  <td>Leave Type</td>
											  <td>Balance Leave</td>
											  </tr>
											<?php //foreach($staffleave_data as $data){
												?>
											  <tr>
											  <td>Causal Leave</td>	  
											  <td><?php echo $staffleave_data[0]['Causal_Leave']."/".$staffleave_data[0]['total_leave'];?></td>  
											</tr>
											<tr>
											<td>Earned Leave</td>
											  <td><?php echo $staffleave_data[1]['Earned_Leave']."/".$staffleave_data[1]['total_leave'];?></td>
											</tr>
											<?php 
											//} ?>
										  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
									  </div>
                        </div>
                        </section>
                        </div>
<?php 
	echo $this->Html->css('datepicker');
	echo $this->Html->script('bootstrap-datepicker');
	
?>
<script>

$(function(){
	console.log($.fn.jquery); 
	$("#from_date").datepicker({
    format: "yyyy-mm-dd",
    autoclose:true
});

$('#to_date').datepicker({
		format: "yyyy-mm-dd",
		autoclose:true
	});
	
$('#leave_halfday').hide();
/*
  $('#to_date').on('change', function() {
   var todate = $('#to_date').val();
   var fromdate = $('#from_date').val();  
   var days = new Date(todate.getDate() - fromdate.getDate());
   var diffdays = Math.abs( days / (1000 * 60 * 60 * 24));
   $('#leavedays').val(days);
});
*/
});
function halfday(){
	if($('#half_day').is(':checked')){
		
		$('#leave_halfday').show('slow');
	 }
	else{
			$('#leave_halfday').hide('slow');
		}
	}

</script>
