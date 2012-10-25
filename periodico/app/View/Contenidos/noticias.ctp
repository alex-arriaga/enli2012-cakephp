<div class="contenidos index">
	<?php
	foreach ($contenidos as $contenido): ?>
	<div class="item">
		<div class="datos_article">
			<div class="datos_left">
				<h4>Publicado en <?php echo $contenido['Categoria']['nombre'];?></h4>
				<p class="fecha"><?php echo $this->Time->format('r', $contenido['Contenido']['created'], true); ;?></p>
			</div>
			<div class="datos_right">
				<div class="addthis_toolbox addthis_default_style ">
				<a class="addthis_button_preferred_1"></a>
				<a class="addthis_button_preferred_2"></a>
				<a class="addthis_button_preferred_3"></a>
				<a class="addthis_button_preferred_4"></a>
				<a class="addthis_button_compact"></a>
				<a class="addthis_counter addthis_bubble_style"></a>
				</div>
				<script type="text/javascript">var addthis_config = {"data_track_addressbar":true};</script>
				<script type="text/javascript" src="http://s7.addthis.com/js/300/addthis_widget.js#pubid=ra-4e3aca746a03b9bd"></script>
			</div>
		</div>
		<!-- -->
		<h2><?php echo $this->Html->link(h($contenido['Contenido']['titulo']), array('action'=>'view',$contenido['Contenido']['id'])); ?></h2>
		<figure><?php echo $this->Html->image($contenido['Contenido']['image_url'], array('width'=>'140'));?></figure>
		<p><?php echo h($contenido['Contenido']['cuerpo']); ?></p>
	</div>
<?php endforeach; ?>
	<p>
	<?php
	echo $this->Paginator->counter(array(
	'format' => __('Página {:page} de {:pages}, mostrando {:current} registros de {:count}, comenzando en {:start}, finalizando en {:end}')
	));
	?></p>
	<div class="paging">
	<?php
		echo $this->Paginator->prev('< ' . __('anterior'), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => ''));
		echo $this->Paginator->next(__('siguiente') . ' >', array(), null, array('class' => 'next disabled'));
	?>
	</div>
</div>
