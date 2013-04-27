﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="CalificaUD.WebForm2" %>

	<!DOCTYPE html>
	<html lang="es">
	<head>
		<meta charset="utf-8">
		<title>CalificaUD</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="Ya  puedes calificar a todos los profesores de la universidad Distrital. Informate , califica , colabora...">
		<meta name="author" content="Camilo Antonio Ram&iacute;rez Morales">
		<link href="css/styles.css" rel="stylesheet">
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
						</ul>
					</div><!--/.nav-collapse -->
				</div>
			</div>
		</div>

		<div class="container-fluid" id="log">

			<form class="form-signin" action="redirige.aspx" id='form_login'>
				<h2 class="form-signin-heading text-center">LOGIN</h2>

				<input type="email" class="input-block-level" placeholder="Ingrese su correo Institucional" required=true id="email_login" name="email_login">
				<input type="password" class="input-block-level" placeholder="Password" required=true id='password_login'>
				<label class="checkbox">
					<input type="checkbox" value="remember-me"> Recuerdame
				</label>
				<div class="row-fluid">
					<div class="span12">
						<button class="btn btn-large btn-primary span6" type="submit" id="iniciarSesion_login">Iniciar sesion</button>
						<button class="btn btn-large btn-info span6" type="submit"  id="registrar">Registrarme</button>
					</div>
				</div>
			</form>

		</div> <!-- /container -->


		
		<div class="container-fluid " id="register">
			<form class="form-signin" id="form-register" action="#">
				<h2 class="form-signin-heading text-center">Registro</h2>
				<div class="input-prepend">
					<span class="add-on ">Apellido&nbsp;&nbsp;&nbsp;</span>
					<input type="text" class="input-xlarge" placeholder="Apellido" required=true><br><br>
					<span class="add-on ">Nombre&nbsp;&nbsp;&nbsp;</span>
					<input type="text" class="input-xlarge" placeholder="Nombre" required=true><br><br>
					<span class="add-on ">@&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<input type="email" class="input-xlarge" placeholder="Direccion de correo" required=true id="correo"><br><br>
					<span class="add-on ">@&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<input type="email" class="input-xlarge" placeholder="Repita direccion de correo" required=true id="correo2"><br><br>
					<span class="add-on ">FechaNac</span>
					<input type="date" class="input-xlarge" placeholder="Ingrese fecha Nacimiento" required=true><br><br>
					<span class="add-on ">Facultad&nbsp;&nbsp;</span>
					<select class="input-xlarge" required=true>
						<option>A</option>
						<option>C</option>
						<option>A</option>
						<option>E</option>
						<option>S</option>
					</select><br><br>
					<span class="add-on ">Carrera&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<select class="input-xlarge" required=true>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select><br><br>
					<span class="add-on ">Localidad&nbsp;</span>
					<select class="input-xlarge" required=true>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select><br><br>
					<span class="add-on ">Pass&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<input type="password" class="input-xlarge" placeholder="Password" required=true id='password1'><br><br>
					<span class="add-on ">Pass&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<input type="password" class="input-xlarge" placeholder="Repita Password" required=true id='password2'><br><br>
				</div>

				<div class="alert alert-error" id="error_registro">Error de registro</div>

				<div class="row-fluid">
					<div class="span12">
						<button class="btn btn-large btn-info span6" type="submit" id="volverToIniciarSesion">Volver</button>
						<button class="btn btn-large btn-info span6" type="submit" id="botonRegistrarse">Registrarse</button>							
					</div>
				</div>
			</form>
		</div>

		<div class="space"></div>

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
	<script src="js/aplicacion.js"></script>
	<script src="js/jquery.md5.js"></script>

</body>
</html>



