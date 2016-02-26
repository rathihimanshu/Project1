<?php ?>
<div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Default Settings
            <small></small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Settings</a></li>
            <li class="active">Default Settings</li>
          </ol>
        </section>
		
        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-xs-12">
                 <div class="box">
                <div class="box-header">
                  <div class="row">
                  <div class="col-xs-2">
					<?php echo $this->Html->link('Add',array('controller'=>'settings','action'=>'add'),array('class'=>'btn btn-block btn-primary'))?>
                  </div>
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="table" class="table table-bordered table-striped">
                    <thead>
					 <tr>
                        <th>Config Name</th>
                        <th>Value</th>
                        <th>Description</th>
                        <th>Sort Order</th>
                        <th>Actions</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php  if(!empty($settings)){
									foreach ($settings as $setting_data){?>
										<tr>
											<td><?php echo $setting_data['Setting']['config_name']?></td>
											<td><?php echo $setting_data['Setting']['value']?></td>	
											<td><?php echo $setting_data['Setting']['description']?></td>
											<td><?php echo $setting_data['Setting']['sort_order']?></td>
											<td>
												<?php echo $this->Html->link('<i class="fa fa-edit"></i>Edit',array('controller'=>'settings','action'=>'edit/'.$setting_data['Setting']['id']),array('class'=>'btn btn-app','escape'=>false)); ?>
											</td>			
										</tr>		
									<?php } 
							}?>
                    </tbody>
                    <tfoot>
                      <tr>
                        <th>Config Name</th>
                        <th>Value</th>
                        <th>Description</th>
                        <th>Sort Order</th>
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
          "bFilter": false,
          "bSort": true,
          "bInfo": true,
          "bAutoWidth": false
        });
      });
    </script>
