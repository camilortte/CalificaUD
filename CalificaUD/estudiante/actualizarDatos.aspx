<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="actualizarDatos.aspx.vb" Inherits="CalificaUD.actualizarDatos" %>

<!doctype html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Estudiante CalificaUD</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Ya  puedes calificar a todos los profesores de la universidad Distrital. Informate , califica , colabora...">
	<meta name="author" content="Camilo Antonio Ram&iacute;rez Morales">

	<link href="../css/bootstrap.css" rel="stylesheet">
	<style type="text/css">
		body { padding-top: 60px; padding-bottom: 40px; }
	</style>
	<link href="../css/bootstrap-responsive.css" rel="stylesheet">
	<link href="../css/styles.css" rel="stylesheet">
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
				<a class="brand" href="estudiante.html">Estudiante Califica a los profesores de la UD</a>
				<div class="nav-collapse">
					<ul class="nav">
						<!--<li class="active"><a href="#">Home</a></li>-->						
						<li><a href="#contact">¿Tienes sugerencias?</a></li>
						<li><a href="#about">Acerca de</a></li>
					</ul>
		              <div class="btn-group navbar-text pull-right">
						  <a class="btn" href="#"><i class="icon-user"></i> Nombre usuario</a>
						  <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#"><span class="caret"></span></a>
						  <ul class="dropdown-menu">
						    <li><a href="#"><i class="icon-pencil"></i> Actualizar Datos</a></li>
						    <li><a href="#"><i class="icon-eye-open"></i> Ver mis comentarios</a></li>
						    <li class="divider"></li>
						    <li><a href="#"><i class="icon-off"></i> Cerrar sesi&oacute;n</a></li>
						  </ul>
						</div>
				</div><!--/.nav-collapse -->
			</div>
		</div>
	</div>	


     <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
             <li><a  class="btn " href="estudiante.html"><i class="icon-home"></i>Home</a></li>
			  <li class="nav-header"><i class="icon-book"></i> Informate</li>
              <li><a  class="btn " href="todos_los_profesores.html">Todos los profesores</a></li>
              <li class="nav-header"><i class="icon-globe"></i> Cuantifica</li>
              <li ><a class="btn space_link" href="#">Estadisticas por Facultad <span class="label">¡Muy Pronto!</span></a></li>
              <li><a class="btn space_link" href="estadisticas_carrera.html">Estadisticas por carrera <span class="label label-important">¡Nuevo!</span></a></li>
              <li><a class="btn active space_link" href="estadisticas_materia.html">Estadisticas por Materia <span class="label label-important">¡Nuevo!</span></a></li>
              <li class="nav-header"><i class="icon-ok-sign"></i> Califica</li>
              <li><a class="btn  space_link" href="califica_carrera.html">Por carrera <span class="label label-important">¡Nuevo!</span></a></li>
              <li><a class="btn  space_link" href="califica_materia.html">Por materia <span class="label label-important">¡Nuevo!</span></a></li>          
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9 text-center">         
				<h2 class="form-signin-heading text-center">Registro</h2>
				<div class="form-horizontal">
					<span class="add-on">Apellido&nbsp;&nbsp;&nbsp;</span>
					<input type="text " class="input-xlarge control-group" placeholder="Apellido" required=true><br><br>
					<span class="add-on ">Nombre&nbsp;&nbsp;&nbsp;</span>
					<input type="text" class="input-xlarge control-group" placeholder="Nombre" required=true><br><br>
					<span class="add-on ">@&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<input type="email" class="input-xlarge control-group" placeholder="Direccion de correo" required=true id="correo"><br><br>
					<span class="add-on ">@&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<input type="email" class="input-xlarge control-group" placeholder="Repita direccion de correo" required=true id="correo2"><br><br>
					<span class="add-on ">FechaNac</span>
					<input type="date" class="input-xlarge control-group" placeholder="Ingrese fecha Nacimiento" required=true><br><br>
					<span class="add-on ">Facultad&nbsp;&nbsp;</span>
					<select class="input-xlarge control-group" required=true>
						<option>A</option>
						<option>C</option>
						<option>A</option>
						<option>E</option>
						<option>S</option>
					</select><br><br>
					<span class="add-on ">Carrera&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<select class="input-xlarge control-group" required=true>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select><br><br>
					<span class="add-on ">Localidad&nbsp;</span>
					<select class="input-xlarge control-group" required=true>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select><br><br>
					<span class="add-on ">Pass&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<input type="password" class="input-xlarge control-group" placeholder="Password" required=true id='password1'><br><br>
					<span class="add-on ">Pass&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<input type="password" class="input-xlarge control-group" placeholder="Repita Password" required=true id='password2'><br><br>
				</div>

				<div class="alert alert-error" id="error_registro">Error de registro</div>

				<div class="row-fluid">
					<div class="span12">
						<button class="btn btn-large btn-info span6" type="submit" id="volverToIniciarSesion">Volver</button>
						<button class="btn btn-large btn-info span6" type="submit" id="botonRegistrarse">Registrarse</button>							
					</div>
				</div>

        </div><!--/span-->
      </div><!--/row-->


  

	

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