<div class="categorias view">
<h2><?php  echo __('Categoria'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($categoria['Categoria']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Nombre'); ?></dt>
		<dd>
			<?php echo h($categoria['Categoria']['nombre']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Descripcion'); ?></dt>
		<dd>
			<?php echo h($categoria['Categoria']['descripcion']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Categoria'), array('action' => 'edit', $categoria['Categoria']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Categoria'), array('action' => 'delete', $categoria['Categoria']['id']), null, __('Are you sure you want to delete # %s?', $categoria['Categoria']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Categorias'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Categoria'), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Contenidos'), array('controller' => 'contenidos', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Contenido'), array('controller' => 'contenidos', 'action' => 'add')); ?> </li>
	</ul>
</div>
<div class="related">
	<h3><?php echo __('Related Contenidos'); ?></h3>
	<?php if (!empty($categoria['Contenido'])): ?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php echo __('Id'); ?></th>
		<th><?php echo __('Titulo'); ?></th>
		<th><?php echo __('Cuerpo'); ?></th>
		<th><?php echo __('Categoria Id'); ?></th>
		<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php
		$i = 0;
		foreach ($categoria['Contenido'] as $contenido): ?>
		<tr>
			<td><?php echo $contenido['id']; ?></td>
			<td><?php echo $contenido['titulo']; ?></td>
			<td><?php echo $contenido['cuerpo']; ?></td>
			<td><?php echo $contenido['categoria_id']; ?></td>
			<td class="actions">
				<?php echo $this->Html->link(__('View'), array('controller' => 'contenidos', 'action' => 'view', $contenido['id'])); ?>
				<?php echo $this->Html->link(__('Edit'), array('controller' => 'contenidos', 'action' => 'edit', $contenido['id'])); ?>
				<?php echo $this->Form->postLink(__('Delete'), array('controller' => 'contenidos', 'action' => 'delete', $contenido['id']), null, __('Are you sure you want to delete # %s?', $contenido['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>

	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Contenido'), array('controller' => 'contenidos', 'action' => 'add')); ?> </li>
		</ul>
	</div>
</div>
