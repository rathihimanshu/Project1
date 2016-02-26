<?php 
	$this->data = $this->Common->leaveexcemption($this->data['Excemption']['staff_id']); 
	//echo '<pre>'; print_r($this->data); die; 
	?>
		<div class="content-wrapper">
			<section class="content-header">
          <h1>
            Company
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
                                    <h3 class="box-title"><?php echo ucfirst($uri['3']);?> Excemption</h3>
                                </div><!-- /.box-header -->
                                <!-- form start -->
                                <?php echo $this->Form->create('Excemption'); ?>
                                <?php echo $this->Form->input('id');
									
                                ?>
                                <form role="form">
                                    <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Staff Name </label>
									        <?php echo $this->Form->text('staff_name',array('class'=>'form-control','id'=>'name','placeholder'=>'Staff Name','value'=>$this->data['Excemption']['staff_name']))?>
                                                                                         
                                        </div>
										</div><!-- /.box-body -->
										<div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Causal Leave</label>
                                               <?php if (!empty($this->data['Excemption']['Causal_Leave'])){
																$value = $this->data['Excemption']['Causal_Leave'];
															}else{
																	$value = '0'; 
																}?>
                                              <?php echo $this->Form->text('Causal_Leave',array('class'=>'form-control','id'=>'name','placeholder'=>'Causal Leave','value'=>$value))?>
                                                                                         
                                        </div>
										</div><!-- /.box-body -->
										<div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Earned Leave</label>
                                            <?php if (!empty($this->data['Excemption']['Earned_Leave'])){
																$value = $this->data['Excemption']['Earned_Leave'];
														}else{
																	$value = ''; 
																}?>
                                              <?php echo $this->Form->text('Earned_Leave',array('class'=>'form-control','id'=>'name','placeholder'=>'Earned Leave','value'=>$value))?>
                                                                                         
                                        </div>
										</div><!-- /.box-body -->
										<div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Loss Of Pay</label>
                                             <?php if (!empty($this->data['Excemption']['Loss_Of_Pay'])){
																$value = $this->data['Excemption']['Loss_Of_Pay'];
														}else{
																	$value = ''; 
																}?>
                                              <?php echo $this->Form->text('Loss_Of_Pay',array('class'=>'form-control','id'=>'name','placeholder'=>'Loss Of Pay','value'=>$value))?>
                                                                                         
                                        </div>
										</div><!-- /.box-body -->
										<div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Maternity Leave</label>
                                             <?php if (!empty($this->data['Excemption']['Maternity_Leave'])){
																$value = $this->data['Excemption']['Maternity_Leave'];
														}else{
																	$value = ''; 
																}?>
                                              <?php echo $this->Form->text('Maternity_Leave',array('class'=>'form-control','id'=>'name','placeholder'=>'Maternity Leave','value'=>$value))?>
                                                                                         
                                        </div>
										</div><!-- /.box-body -->
										
										<div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Paternity Leave</label>
                                              <?php echo $this->Form->text('Paternity_Leave',array('class'=>'form-control','id'=>'name','placeholder'=>'Paternity Leave','value'=>$value))?>
                                              <?php echo $this->Form->text('staff_id',array('class'=>'form-control','id'=>'name','type'=>'hidden'))?>
                                              <?php echo $this->Form->text('leavetype_id',array('class'=>'form-control','id'=>'name','type'=>'hidden'))?>
                                              <?php echo $this->Form->text('leave_count',array('class'=>'form-control','id'=>'name','type'=>'hidden','value'=>$this->data['Excemption']['count']))?>
                                                                                         
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

