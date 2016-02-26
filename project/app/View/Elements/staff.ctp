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
					<div class="col-xs-10">
                            <!-- general form elements -->
                            <div class="box box-primary">
                                <div class="box-header">
                                    <h3 class="box-title"><?php echo ucfirst($uri['3']);?> Staff</h3>
                                </div><!-- /.box-header -->
                                <!-- form start -->
                                <?php echo $this->Form->create('Staff',array('type'=>'file')); ?>
                                <?php echo $this->Form->input('id');
									
                                ?>
                                <form role="form">
                                    <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Staff Name*</label>
                                              <?php echo $this->Form->text('staff_name',array('class'=>'form-control','id'=>'name','placeholder'=>'Name','required'));?>
                                                                                         
                                        </div>           
										</div><!-- /.box-body -->
									<div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Employee Id</label>
                                              <?php echo $this->Form->text('member_id',array('class'=>'form-control','id'=>'member','placeholder'=>'Employee Id'));?>
                                                                                         
                                        </div>
                                         </div><!-- /.box-body -->
                                         
                                         <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">DOB*</label>
                                              <?php echo $this->Form->text('dob',array('class'=>'form-control','id'=>'dob','placeholder'=>'Employee Id','required'));?>                                    
										</div>
                                        </div><!-- /.box-body -->
                                         <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Joining Date*</label>
                                              <?php echo $this->Form->text('joing_date',array('class'=>'form-control','id'=>'joining','placeholder'=>'Joining Date','required'));?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
										<div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Releiving Date</label>
                                              <?php echo $this->Form->text('terminate_date',array('class'=>'form-control','id'=>'releiving','placeholder'=>'Releiving'));?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
                                         <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Email*</label>
                                              <?php echo $this->Form->input('email', array('type' => 'email','class'=>'form-control','id'=>'email','placeholder'=>'Email','label'=>false,'required')); 
                                              ?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
                                         <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Password*</label>
                                              <?php echo $this->Form->input('password',array('class'=>'form-control','id'=>'pass','placeholder'=>'Password','label'=>false, 'required'));?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
                                         <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Photo</label>
                                              <?php echo $this->Form->File('photo',array('class'=>'form-control','id'=>'photo'));?>
                                                <?php 
									 
										   if(!empty($this->data['Staff']['photos']))
										   { ?>
												 <input id="hidd" type="hidden" value="<?php echo $this->data['Staff']['photo'];?>" /><br /><br />
												 <?php echo $this->Html->image('staff_photo/'.$this->data['Staff']['photo']);
											}?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
                                         <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Address*</label>
                                              <?php echo $this->Form->text('address',array('class'=>'form-control','id'=>'addrs','placeholder'=>'Address', 'required'));?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
                                          <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">City*</label>
                                              <?php echo $this->Form->text('city',array('class'=>'form-control','id'=>'city','placeholder'=>'City', 'required'));?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
                                         <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">State*</label>
                                              <?php echo $this->Form->text('state',array('class'=>'form-control','id'=>'state','placeholder'=>'State', 'required'));?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
                                         <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Pincode</label>
                                              <?php echo $this->Form->text('pincode',array('type'=>'number','class'=>'form-control','id'=>'pincode','placeholder'=>'Pincode'));?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
                                          <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Phone*</label>
                                              <?php echo $this->Form->text('phone',array('type'=>'tel','class'=>'form-control','id'=>'phone','placeholder'=>'Phone','min'=>'10','required'));?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
                                         <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Brief Profile</label>
                                              <?php echo $this->Form->textarea('brief_profile',array('class'=>'form-control','id'=>'phone','placeholder'=>'Breif Profile'));?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
                                        
                                         <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">PPF - Account No</label>
                                              <?php echo $this->Form->text('ppf_ac_no',array('type'=>'number','class'=>'form-control','id'=>'phone','placeholder'=>'PPF Account Number'));?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
                                         <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">PPF – Post Office/ Bank Branch</label>
                                              <?php echo $this->Form->text('ppf_ac_no',array('class'=>'form-control','id'=>'phone','placeholder'=>'Branch'));?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
                                         <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Photo</label>
                                              <?php echo $this->Form->File('cv',array('class'=>'form-control','id'=>'cv'));?>
                                                <?php 
									 
										   if(!empty($this->data['Staff']['photos']))
										   { ?>
												 <input id="hidd" type="hidden" value="<?php echo $this->data['Staff']['cv'];?>" /><br /><br />
												 <?php echo $this->Html->image('staff_cv/'.$this->data['Staff']['cv']);
											}?>                                        
                                        </div>
                                        </div><!--/box body-->
                                        <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Company</label>
                                              <?php $compdrop = $this->Common->companydropdown();?>
                                              <?php echo $this->Form->input('company_id', array('type'=>'select', 'options'=>$compdrop,'default'=>'Select A Company', 'id'=>'company', 'class'=>'form-control', 'label'=>false,'required'));?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
                                         
                                          <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Emp status*</label>
                                              <?php $empstatdrop = $this->Common->employeestatus();?>
                                              <?php echo $this->Form->input('employee_status', array('type'=>'select', 'options'=>$empstatdrop,'default'=>'Select Status', 'id'=>'stat', 'class'=>'form-control', 'label'=>false,'required'));?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
                                         <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Employee Type*</label>
                                              <?php $empdrop = $this->Common->employeetype();?>
                                              <?php echo $this->Form->input('employeetype_id', array('type'=>'select', 'options'=>$empdrop,'default'=>'Select Status', 'id'=>'company', 'class'=>'form-control', 'label'=>false,'required'));?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
                                         <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Location*</label>
                                              <?php $locdrop = $this->Common->locationdropdown();?>
                                              <?php echo $this->Form->input('location_id', array('type'=>'select', 'options'=>$locdrop,'default'=>'Select Location', 'id'=>'company', 'class'=>'form-control', 'label'=>false,'required'));?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
                                         <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Approving Authority</label>
                                              <?php $empauth = $this->Common->employeeAuth();?>
                                              <?php echo $this->Form->input('approving_authority', array('type'=>'select', 'options'=>$empauth,'default'=>'Select Location', 'id'=>'company', 'class'=>'form-control', 'label'=>false));?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
                                          <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Reporting Authority</label>
                                   
                                              <?php echo $this->Form->input('reporting_authority', array('type'=>'select', 'options'=>$empauth,'default'=>'Select Location', 'id'=>'company', 'class'=>'form-control', 'label'=>false));?>                                        
                                        </div>
                                         </div><!-- /.box-body -->
                                         <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">No. of work Report in a year*</label>
                                   
                                              <?php echo $this->Form->input('total_work_report', array('type'=>'number','id'=>'total_work', 'class'=>'form-control', 'label'=>false,'Placeholder'=>'No. of work Report in a year'));?>                                        
                                        </div>
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

<script>
$(function(){
	$('#dob').attr('type', 'date');
	$('#joining').attr('type', 'date');
	$('#releiving').attr('type', 'date');	
	});

</script>
