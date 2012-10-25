<?php $this->layout = 'home'; ?>
<section id="block_first">
	<div class="left">
		<article>
			<figure><img src="img/fotos/foto_1.jpg" alt="Foto 1"></figure>
		</article>
	</div>
	<div class="right">
		<?php echo $this->element('noticias_relacionadas');?>
	</div>
</section>
<section id="block_second">
	<div class="left_sec">
		<?php echo $this->element('twitter');?>
	</div>
	<div class="middle_sec">
		<?php echo $this->element('noticia_principal');?>
	</div>
	<div class="right_sec">
		<?php echo $this->element('publicidad');?>
	</div>
</section>
