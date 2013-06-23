<?php echo $this->Html->script('ckeditor/ckeditor'); ?>

<div class="contents form">
<?php echo $this->Form->create('Content'); ?>
	<fieldset>
		<legend><?php echo __('Add Content'); ?></legend>
	<?php
		echo $this->Form->input('title');
		echo $this->Form->input('description');
                echo $this->Fck->ckedit('content.pagecontent');
		echo $this->Form->input('section');
		echo $this->Form->input('urlpart');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
            <li><?php echo $this->Html->link(__('List Contents'), array('action' => 'index')); ?></li>
	</ul>
</div>