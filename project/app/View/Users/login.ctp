<?php ?>
    <body class="login-page">
    <div class="login-box">
      <div class="login-logo">
        <a href="#"><b>FM</b>SF</a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <div class="col-xs-12">
				<h4 class="text-center" id="error"><?php echo $this->Session->flash();?></h4>
			</div>
        <p class="login-box-msg">Sign in to start your session</p>
        
        <?php  echo $this->Form->create('User',array('action'=>'login','class'=>'form-horizontal')); ?>
         
          <div class="form-group has-feedback">
             <?php echo $this->Form->input('username',array('class'=>'form-control','div'=>false,'label'=>false,'placeholder'=>'User Name'))?>
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">        
            <?php echo $this->Form->input('password',array('class'=>'form-control','div'=>false,'label'=>false,'placeholder'=>'Password'))?>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
          <div class="row">
            <div class="col-xs-10">    
              <div class="col-xs-5">
                <label>
                  <?php echo $this->Form->checkbox('staff', array('hiddenField' => false,'class'=>'checkbox','id'=>'Userstaff'));?> Staff
                </label>
               </div>
                                   
            </div><!-- /.col -->
            <div class="col-xs-12">
             <?php  echo $this->Form->submit('Submit',array('class'=>'btn btn-primary btn-block btn-flat','div'=>false,'label'=>false)); ?>
            </div><!-- /.col -->
          </div>
        <?php echo $this->Form->end();?>

        <!--<div class="social-auth-links text-center">
          <p>- OR -</p>
          <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using Facebook</a>
          <a href="#" class="btn btn-block btn-social btn-google-plus btn-flat"><i class="fa fa-google-plus"></i> Sign in using Google+</a>
        </div><!-- /.social-auth-links -->

       <!-- <a href="#">I forgot my password</a><br>
        <a href="register.html" class="text-center">Register a new membership</a>-->

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->
    <!-- jQuery 2.1.3 -->
     <script>
      $(function () {
		  $('.checkbox').checkbox();
		if($(".message").is(':visible')){
			$("#error").addClass('alert alert-danger');
			setTimeout(function() {
				$("#error").hide('slow');
				}, 3000);
			}
      });
    </script>
    </body>
      <?php ?>
