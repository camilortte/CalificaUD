<%@ Page Title="Home Page" Language="VB"  AutoEventWireup="true" CodeBehind="index.aspx.vb" Inherits="CalificaUD._Default" %>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<title>CalificaUD</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Ya  puedes calificar a todos los profesores de la universidad Distrital. Informate , califica , colabora...">
	<meta name="author" content="Camilo Antonio Ram&iacute;rez Morales">

	<link href="http://twitter.github.com/bootstrap/assets/css/bootstrap.css" rel="stylesheet">
	<style type="text/css">
		body { padding-top: 60px; padding-bottom: 40px; }
	</style>
	<link href="http://twitter.github.com/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet">
</head>

<body>
	<!--Barra de navegacion-->
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="index.aspx">Califica a los profesores de la UD</a>
				<div class="nav-collapse">
					<ul class="nav">
						<!--<li class="active"><a href="#">Home</a></li>-->						
						<li><a href="#contact">¿Tienes sugerencias?</a></li>
						<li><a href="#about">Acerca de</a></li>
						<li><a href="login.aspx">Login</a></li>
					</ul>
				</div><!--/.nav-collapse -->
			</div>
		</div>
	</div>

	<!--Resto del cuepro-->
	<div class="container-fluid">
		<!-- Main hero unit for a primary marketing message or call to action -->
		<div class="hero-unit">
			<h1>Califica, colabora, informate...</h1>
			<p>Es el momento. Desde este instante ya puedes conocer todo acerca de los profesores que te rodena, sus principales devilidades y fortalezas. Calificalos, clasificalos  y obten mejo resultados en tus aprendisajes. </p>		
			<a href="login.html" class="btn btn-primary btn-large"><< Login >></a>

		</div>
		<!-- Example row of columns -->
		<div class="row-fluid">
			<div class="span4">
				<h2>¿Cómo puedo calificar?</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
				<p><a class="btn" href="#">¡Dame mas!</a></p>
			</div>
			<div class="span4">
				<h2>¿Cómo obtengo informaci&oacute;n sobre lso profesores?</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
				<p><a class="btn" href="#">¡Dame mas!</a></p>
			</div>
			<div class="span4">
				<h2>¿Es necesario registrarme?</h2>
				<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
				<p><a class="btn" href="#">¡Dame mas!</a></p>
			</div>
		</div>
		<br>
		<br>
		
	</div> 

	<footer>
			<div id="foote" class="container text-center"
			    <p>&copy; Creado por Camilo Antonio Ramírez Morales <a href="https://twitter.com/camilortte">@Camilortte</a> on Twitter</p>
					<p>Gracias a <a href="http://twitter.github.io/bootstrap/">Boostrap</a></p>
			</div>
		</footer>

	<script src="http://code.jquery.com/jquery.min.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-transition.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-alert.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-modal.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-dropdown.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-scrollspy.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-tab.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-tooltip.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-popover.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-button.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-collapse.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-carousel.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-typeahead.js"></script>
</body>
</html>