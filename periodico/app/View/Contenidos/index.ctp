<div class="contenidos index">
	<h2><?php echo __('Contenidos'); ?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id'); ?></th>
			<th><?php echo $this->Paginator->sort('titulo'); ?></th>
			<th><?php echo $this->Paginator->sort('cuerpo'); ?></th>
			<th><?php echo $this->Paginator->sort('image_url'); ?></th>
			<th><?php echo $this->Paginator->sort('categoria_id'); ?></th>
			<th><?php echo $this->Paginator->sort('created'); ?></th>
			<th><?php echo $this->Paginator->sort('modified'); ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php
	foreach ($contenidos as $contenido): ?>
	<tr>
		<td><?php echo h($contenido['Contenido']['id']); ?>&nbsp;</td>
		<td><?php echo h($contenido['Contenido']['titulo']); ?>&nbsp;</td>
		<td><?php echo h(String::truncate($contenido['Contenido']['cuerpo'],100)); ?>&nbsp;</td>
		<td><?php echo h($contenido['Contenido']['image_url']); ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($contenido['Categoria']['nombre'], array('controller' => 'categorias', 'action' => 'view', $contenido['Categoria']['id'])); ?>
		</td>
		<td><?php echo h($contenido['Contenido']['created']); ?>&nbsp;</td>
		<td><?php echo h($contenido['Contenido']['modified']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View'), array('action' => 'view', $contenido['Contenido']['id'])); ?>
			<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $contenido['Contenido']['id'])); ?>
			<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $contenido['Contenido']['id']), null, __('Are you sure you want to delete # %s?', $contenido['Contenido']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
	</table>
	<p>
	<?php
	echo $this->Paginator->counter(array(
	'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
	));
	?>	</p>

	<div class="paging">
	<?php
		echo $this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => ''));
		echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));
	?>
	</div>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('New Contenido'), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Categorias'), array('controller' => 'categorias', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Categoria'), array('controller' => 'categorias', 'action' => 'add')); ?> </li>
	</ul>
</div>
