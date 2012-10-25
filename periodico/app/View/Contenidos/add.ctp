<div class="contenidos form">
<?php echo $this->Form->create('Contenido'); ?>
	<fieldset>
		<legend><?php echo __('Add Contenido'); ?></legend>
	<?php
		echo $this->Form->input('titulo');
		echo $this->Form->input('cuerpo');
		echo $this->Form->input('image_url');
		echo $this->Form->input('categoria_id');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Contenidos'), array('action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('List Categorias'), array('controller' => 'categorias', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Categoria'), array('controller' => 'categorias', 'action' => 'add')); ?> </li>
	</ul>
</div>
