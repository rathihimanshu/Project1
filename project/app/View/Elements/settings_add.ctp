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
                                <?php echo $this->Form->create('Setting'); ?>
                                <?php echo $this->Form->input('id');
									
                                ?>
                                <form role="form">
                                    <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Config Name *</label>
                                              <?php echo $this->Form->text('config_name',array('class'=>'form-control','id'=>'config_name','placeholder'=>'Config Name','required'))?>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Value *</label>
                                            <?php echo $this->Form->text('value',array('class'=>'form-control','id'=>'value','placeholder'=>'Value','required'))?>
                                        </div>
                                        <div class="form-group">
                                             <label for="exampleInputPassword1">Description</label>
                                            <?php echo $this->Form->textarea('description',array('class'=>'form-control','id'=>'desc','placeholder'=>'Description'))?>
                                        </div>
                                         <div class="form-group">
                                             <label for="exampleInputPassword1">Sort Order</label>
                                             <?php if($uri['3']=='add'){ 
													$sort_order = $this->Common->getsortOrder();
												 ?>
                                            <?php echo $this->Form->text('sort_order',array('class'=>'form-control','id'=>'sort','value'=>$sort_order,'readonly'))?>
											<?php }else{
												   echo $this->Form->text('sort_order',array('class'=>'form-control','id'=>'sort','readonly'));
												}?>
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

