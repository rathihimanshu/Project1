<?php 
echo $this->Form->create('Event',array('action'=>'add','validate'=>true));
echo $this->Form->input('event_name',array('type'=>'text','id'=>'event_name','required'=>'required'));
echo $this->Form->input('id',array('type'=>'hidden'));
echo $this->Form->input('event_type',array('type'=>'text','id'=>'event_type','required'=>'required'));
echo $this->Form->end('Submit');
?>
