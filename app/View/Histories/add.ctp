<?php echo $this->Html->script('ckeditor/ckeditor'); ?>
<div class="histories form">
<?php echo $this->Form->create('History'); ?>
	<fieldset>
		<legend><?php echo __('Add History'); ?></legend>
	<?php
		echo $this->Form->input('day');
		echo $this->Form->input('month');
		echo $this->Form->input('year');
		echo $this->Form->input('urlpart');
		echo $this->Form->input('title');
                echo $this->Fck->ckedit('history.pagecontent');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Histories'), array('action' => 'index')); ?></li>
	</ul>
</div>
