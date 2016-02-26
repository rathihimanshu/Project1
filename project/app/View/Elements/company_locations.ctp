<?php ?>
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
                                    <h3 class="box-title"><?php echo ucfirst($uri['3']);?> Company</h3>
                                </div><!-- /.box-header -->
                                <!-- form start -->
                                <?php echo $this->Form->create('Companylocation'); ?>
                                <?php echo $this->Form->input('id');
									
                                ?>
                                <form role="form">
                                    <div class="box-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Name </label>
                                            <?php $compdrop = $this->Common->companydropdown();?>
                                              <?php echo $this->Form->input('company_id', array('type'=>'select', 'options'=>$compdrop,'default'=>'Select A Company', 'id'=>'company', 'class'=>'form-control', 'label'=>false));?>
                                                                                         
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Location </label>
                                            <?php  $locationdroplist = $this->Common->locationdropdown();?>
                                              <?php echo $this->Form->input('location_id', array('type'=>'select', 'options'=>$locationdroplist,'default'=>'Select A Location', 'id'=>'location', 'class'=>'form-control', 'label'=>false));?>
                                                                                         
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
