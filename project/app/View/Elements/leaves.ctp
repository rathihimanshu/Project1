<?php ?>
<div class="content-wrapper">
			<section class="content-header">
          <h1>
            Leaves
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
                                    <h3 class="box-title"><?php echo ucfirst($uri['3']);?> Leaves</h3>
                                </div><!-- /.box-header -->
                                <!-- form start -->
                                <?php echo $this->Form->create('Leavetype'); ?>
                                <?php echo $this->Form->input('id');
									
                                ?>
                                <form role="form">
                                    <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Leave Type </label>
                                            
                                              <?php echo $this->Form->input('leave_type', array('type'=>'text', 'id'=>'leavetype','placeholder'=>'Leave Type' ,'class'=>'form-control', 'label'=>false,'required'));?>
                                                                                         
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
