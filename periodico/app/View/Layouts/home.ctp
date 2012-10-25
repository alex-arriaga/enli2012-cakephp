<!doctype html>
<html lang="es">
<head>
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php echo $title_for_layout; ?>
	</title>
	<?php
		echo $this->Html->meta('icon');
		echo $this->Html->css(array('style','http://fonts.googleapis.com/css?family=Amaranth'));
		echo $this->fetch('meta');
		echo $this->fetch('css');
		echo $this->fetch('script');
	?>
</head>
<body>
	<!--[if lt IE 7]><p class=chromeframe>Su navegador es muy <em>antiguo!</em> <a href="http://browsehappy.com/">Actualice a uno diferente </a> o <a href="http://www.google.com/chromeframe/?redirect=true">instale Google Chrome Frame</a> para mejorar la experiencia con este sitio.</p><![endif]-->
	<div id="wrapper_all">
	<header>
		<div class="left">
			<h1><?php echo $this->Html->link('Periódico ' .
			'Extra, Extra!', array('controller'=>'pages','action'=>'display', 'home'));?></h1>
		</div>
		<div class="right">
		</div>
		<div class="cls"></div>
		<nav>
			<ul>
				<li><?php echo $this->Html->link('Noticias', array('controller'=>'contenidos', 'action'=>'noticias') );?></li>
				<li><?php echo $this->Html->link('Aviso Clasificado', array('controller'=>'contenidos', 'action'=>'clasificados') );?> </li>
				<li><?php echo $this->Html->link('Opinión', array('controller'=>'contenidos', 'action'=>'opinion') );?></li>
				<li><?php echo $this->Html->link('El Lector Comenta', array('controller'=>'contenidos', 'action'=>'comentarios') );?></li>
			</ul>
		</nav>
	</header>
	<div class="cls"></div>
	<div class="wrapper">
		<div role="main" class="main-content">
			<?php echo $this->Session->flash(); ?>
			<?php echo $this->fetch('content'); ?>
		</div>
	<footer>
	</footer>
	</div>
</body>
</html>
