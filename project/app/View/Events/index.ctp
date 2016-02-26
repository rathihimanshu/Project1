<?php echo $this->Html->script('jquery.min');?>
<script type="text/javascript">
function addticket(id)
{
	alert('kks'); 
	 $.post('http://localhost/cakephp/events/addticket',{id:id},function (data){
			alert(data); return false;
	 
	 
	 });
}
</script>	
<?php 
	echo $this->Html->link('add',array('controller'=>'events','action'=>'Add'));
	foreach ($event as $events)
	{ 
			echo "<br>".$events['Event']['event_name']."&nbsp;";
			echo $events['Event']['event_type']."&nbsp;";
			echo $this->Html->link('add',array('controller'=>'events','action'=>'Edit',$events['Event']['id'])); 
			echo $this->Html->link('active',array('controller'=>'events','action'=>'activate',$events['Event']['id']));
			echo $this->Html->link('deactive',array('controller'=>'events','action'=>'deactivate',$events['Event']['id']));
			echo $this->Form->button('Ticket',array('onclick'=>'addticket('.$events['Event']['id'].')'));
	}
	echo "<br>"
	
	
	
?>
