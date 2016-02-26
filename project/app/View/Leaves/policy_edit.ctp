<?php ?>
		<div class="content-wrapper">
		<section class="content-header">
          <h1>
            Default Settings
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
                                    <h3 class="box-title"><?php echo ucfirst($uri['3']);?> Default Settings</h3>
                                </div><!-- /.box-header -->
                                <!-- form start -->
                                <?php echo $this->Form->create('Policyleave', array('url' => array('controller' => 'leaves', 'action' => 'policy_edit')));?>
                                <?php echo $this->Form->input('id');?>
                                <form role="form">
                                    <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Leave Type </label>
                                            <?php $leavelist = $this->Common->leavetype();?>
                                              <?php echo $this->Form->input('leavetype_id', array('type'=>'select', 'options'=>$leavelist,'default'=>'Select A Leave', 'id'=>'leave', 'class'=>'form-control', 'label'=>false));?>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Holidays </label>
                                            <?php echo $this->Form->text('include_holidays',array('class'=>'form-control','id'=>'holidays','placeholder'=>'Holidays'))?>
                                        </div>
                                        <div class="form-group">
                                             <label for="exampleInputPassword1">Weekly Off</label>
                                            <?php echo $this->Form->text('include_weekly_off',array('class'=>'form-control','id'=>'weeklyoff','placeholder'=>'Weekly Off'))?>
                                        </div>
                                          <div class="form-group">
                                             <label for="exampleInputPassword1">Club With Other Leave</label>
                                            <?php echo $this->Form->text('club_with_other_leave',array('class'=>'form-control','id'=>'club','placeholder'=>'club with other leave'))?>
                                        </div>
                                        <div class="form-group">
                                             <label for="exampleInputPassword1">No of days to apply in Advance</label>
                                            <?php echo $this->Form->text('no_of_days_to_apply_in_advance',array('class'=>'form-control','id'=>'no_of_days_to_apply_in_advance','placeholder'=>'No of days to apply in Advance'))?>
                                        </div>
                                        <div class="form-group">
                                             <label for="exampleInputPassword1">No of days After end date</label>
                                            <?php echo $this->Form->text('no_of_days_after_end_date',array('class'=>'form-control','id'=>'no_of_days_after_end_date','placeholder'=>'No of days After end date'))?>
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

