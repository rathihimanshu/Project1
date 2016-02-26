<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
    <head>	
        <meta charset="utf-8">
        <title>Admin panel</title>
        <?php echo $this->Html->script('jQuery-2.1.3.min.js'); ?>
        <?php echo $this->Html->script('jquery-ui-1.10.3.js'); ?>
         <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <?php echo $this->Html->script('jbootstrap.min.js.js'); ?>
        
<body class="skin-blue sidebar-mini">
	<div class="wrapper">
	<?php echo $this->element('menu/header');?>
	<?php echo $this->element('menu/dashboard');?>
	<?php echo $this->element('menu/content.ctp');?>
</div>
</body>
</head>
</html>

