<?php $lastCreated = $this->requestAction('contenidos/getLastCreated');?>
<article>
	<div class="datos_article">
		<div class="datos_left">
			<h4><?php echo $lastCreated['Categoria']['nombre'];?></h4>
			<p class="fecha"><?php echo $this->Time->format('r', $lastCreated['Contenido']['created'], true); ;?></p>
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
	<div class="cls"></div>
	<h2><?php echo $this->Html->link($lastCreated['Contenido']['titulo'], array('controller'=>'contenidos','action'=>'view', $lastCreated['Contenido']['id']));?></h2>
	<figure>
		<?php echo $this->Html->image($lastCreated['Contenido']['image_url'], array('width'=>405));?>
	</figure>
	<p><?php echo $lastCreated['Contenido']['cuerpo'];?></p>
</article>
