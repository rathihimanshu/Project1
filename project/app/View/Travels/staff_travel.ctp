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
         </div>
         <!-- /.box-header -->
         <!-- form start -->
         <?php echo $this->Form->create('Leave', array('url' => array('controller' => 'travels', 'action' => 'staff_travel')));?>
         <?php echo $this->Form->input('id');?>
         <form role="form">
		<div class="box-body">
               <div class="form-group">
                  <label for="exampleInputEmail1">Travel Mode</label>
                  <?php  $mode = $this->Common->travel_mode(); 
					echo  $this->Form->input('travelmode_id', array('type' => 'select','options'=>$mode ,'class'=>'form-control','id'=>'mode','placeholder'=>'Travel Mode','label'=>false,'required'));?>
               </div>
            
                <div class="form-group">
                  <label for="exampleInputEmail1">Travel Purpose</label>
                  <?php  $purpose = $this->Common->travel_purpose(); 
					echo  $this->Form->input('travelpurpose_id', array('type' => 'select','options'=>$purpose ,'class'=>'form-control','id'=>'mode','placeholder'=>'Travel Mode','label'=>false,'required'));?>
               </div>
            
            <!-- /.box-body -->
            
               <div class="form-group">
                  <label for="exampleInputEmail1">Travel From*</label>
                  <?php echo $this->Form->text('travel_from_place',array('class'=>'form-control','id'=>'from_place','placeholder'=>'Travel From','required'));?>
               </div>
            
            <!-- /.box-body -->	
            
               <div class="form-group">
                  <label for="exampleInputEmail1">Travel To*</label>
                  <?php echo $this->Form->text('travel_to_place',array('class'=>'form-control','id'=>'to_place','placeholder'=>'Travel To','required'));?>
               </div>
            
            <!-- /.box-body --> 
         
           
            
            <!-- /.box-body -->
            
               <div class="form-group">
                  <label for="exampleInputEmail1">From Date*</label>
                  <?php echo $this->Form->text('from_date',array('class'=>'form-control','id'=>'from_dates','placeholder'=>'From Date','required'));?>
               </div>
            
            <!-- /.box-body -->
            
               <div class="form-group">
                  <label for="exampleInputEmail1">To Date*</label>
                  <?php echo $this->Form->text('to_date',array('class'=>'form-control','id'=>'to_dates','placeholder'=>'To Date','required'));?>                                    
               </div>
            
            <!-- /.box-body -->
            
               <div class="form-group">
                  <label for="exampleInputEmail1">Travel Advance</label>
                  <?php echo $this->Form->text('travel_advance_required',array('type'=>'number','class'=>'form-control','id'=>'advance','placeholder'=>'Travel Advance'));?>
               </div>
            
            <!-- /.box-body --> 
            <?php 
               if($this->Session->read('Userapprauth') !=$staff_id || $this->Session->read('Userapprauth')==$staff_id){?>
            <?php }else{?>
            
               
                  
                     <div class="form-group">
                        <label for="exampleInputEmail1">Leave Status*</label>
                        <?php  $leave_status = $this->Common->leavestatustype();?>
                        <?php echo $this->Form->input('absence_status', array('type' => 'select','options'=>$leave_status,'class'=>'form-control','id'=>'email','placeholder'=>'Email','label'=>false,'required')); 
                           ?>                                        
                     </div>
                  
                  <!-- /.box-body -->
                  <?php } ?>
                     <div class="form-group">
                        <label for="exampleInputEmail1">Comment</label>
                        <?php echo $this->Form->textarea('absence_desc',array('class'=>'form-control','id'=>'phone','placeholder'=>'Comment'));?>
                        <?php echo $this->Form->text('staff_id',array('type'=>'hidden','class'=>'form-control','id'=>'phone','value'=>$staff_id ));?>                                        
                     </div>
                  </div>
                  <!-- /.box-body -->
                  <div class="box-footer">
                     <?php $options = array('label' => 'Save', 'class' => 'btn btn-primary', 'div' => false);?>
                     <?php echo $this->Form->end($options); ?>
                     <button type="reset" class="btn btn-primary" onclick="history.back();">Cancel</button>
                  </div>
               </div>
               <!-- /.box -->                
            </div>
         
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
	$("#from_dates").datepicker({
    format: "yyyy-mm-dd",
    autoclose:true
});

$('#to_dates').datepicker({
		format: "yyyy-mm-dd",
		autoclose:true
	});

});

</script>

