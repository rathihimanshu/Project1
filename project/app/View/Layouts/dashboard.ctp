<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
    <head>	
        <meta charset="utf-8">
        <title>Admin panel</title>
        <?php 
			echo $this->Html->css('bootstrap.min');
			echo $this->Html->css('AdminLTE');
			echo $this->Html->css('skins/_all-skins.min');
			echo $this->Html->css('skins/_all-skins.min');
			echo $this->Html->css('dataTables.bootstrap');
			echo $this->Html->css('jquery.dataTables');
			echo $this->Html->script('jQuery-2.1.3.min');
			echo $this->Html->script('bootstrap.min');
			echo $this->Html->script('jquery.dataTables.min');
			echo $this->Html->script('dataTables.bootstrap');
			echo $this->Html->script('jquery-ui.min');
			echo $this->Html->script('app');
			echo $this->Html->script('Chart.min');
			echo $this->Html->script('menu');
		?>
        
		 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
		<!-- Ionicons 2.0.0 -->
		<link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />  
		
         <script>
			 
			 $.widget.bridge('uibutton', $.ui.button);
		</script>
    
        
<body class="skin-blue sidebar-mini">
	<div class="wrapper">
	<?php echo $this->element('menu/header');?>
	<?php echo $this->element('menu/sidebar');?>
	<?php echo $content_for_layout;?>
	<?php echo $this->element('menu/footer');?>
	<script>
	$(function () {
			if($(".message").is(':visible')){
				setTimeout(function() {
				$("#flashMessage").hide('slow');
				}, 3000);
			}
      });
	
	</script>
</div>
</body>
</head>
</html>

