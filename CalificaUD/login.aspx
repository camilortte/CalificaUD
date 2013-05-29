<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="CalificaUD.WebForm2" %>
<%@ PreviousPageType VirtualPath ="~/redirige.aspx" %>
<%@ Import Namespace="CalificaUD" %>

	<!DOCTYPE html>
	<html lang="es">
	<head>
		<meta charset="utf-8">
		<title>CalificaUD</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="Ya  puedes calificar a todos los profesores de la universidad Distrital. Informate , califica , colabora...">
		<meta name="author" content="Camilo Antonio Ram&iacute;rez Morales">
		<link href="css/styles.css" rel="stylesheet">
		<link href="css/bootstrap.css" rel="stylesheet">
		<style type="text/css">
		body { padding-top: 60px; padding-bottom: 40px; }
		</style>
		<link href="css/bootstrap-responsive.css" rel="stylesheet">
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

			<form id="form_login" class="form-signin" action ="redirige.aspx">
				<h2 class="form-signin-heading text-center">LOGIN</h2>

				<input type="text" class="input-block-level" placeholder="Ingrese su correo Institucional" required=true id="email_login" name="email_login">
				<input type="password" class="input-block-level" placeholder="Password" required=true id='password_login' name="password_login">
				<label class="checkbox">
					<input type="checkbox" value="remember-me"> Recuerdame
				</label>
				<div class="row-fluid">
					<div class="span12">
						<button class="btn btn-large btn-primary span6" type="submit" id="iniciarSesion_login">Iniciar sesion</button>                                                
						<button class="btn btn-large btn-info span6" type="button"  id="registrar">Registrarme</button>					    
					</div>
				</div>      
			</form>

		</div> <!-- /container -->


		
		<div class="container-fluid " id="register">
			<form class="form-signin" id="form_register" runat ="server"  action="~/registra.aspx"  >
				<h2 class="form-signin-heading text-center">Registro</h2>
				<div class="input-prepend">
					<span class="add-on ">Apellido&nbsp;&nbsp;&nbsp;</span>
					<input type="text" class="input-xlarge" placeholder="Apellido" required=true autocomplete=false name="register_apellido"><br><br>
					<span class="add-on ">Nombre&nbsp;&nbsp;&nbsp;</span>
					<input type="text" class="input-xlarge" placeholder="Nombre" required=true autocomplete=false name="register_nombre"><br><br>
					<span class="add-on ">@&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<input type="email" class="input-xlarge" placeholder="Direccion de correo" required=true id="correo" autocomplete='off' name="register_correo"><br><br>
					<span class="add-on ">@&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<input type="email" class="input-xlarge" placeholder="Repita direccion de correo" required=true id="correo2"><br><br>
					
                    <span class="add-on ">Codigo&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<input type="text" class="input-xlarge" placeholder="E.J 20111078094" required=true autocomplete='off' name="register_codigo" value="" ><br><br>

                    <span class="add-on ">Carrera&nbsp;&nbsp;&nbsp;&nbsp;</span>					
                    <asp:ListBox ID="register_carrera" runat="server" CssClass ="input-xlarge" DataSourceID="SqlDataSource2"  DataTextField="Carr_nombre" DataValueField="Carr_codigo" Rows="1" ></asp:ListBox>
					<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\camilortte\Desktop\CalificaUD-releaseVisualStudio2\CalificaUD-releaseVisualStudio\DataBase\CalificaUDDataBase.mdf;Integrated Security=True;Connect Timeout=30" SelectCommand="SELECT * FROM [Carrera]"></asp:SqlDataSource>
                    <br><br>
					<span class="add-on ">Localidad&nbsp;</span>
                    <asp:ListBox ID="register_localidad" runat="server" CssClass ="input-xlarge" DataSourceID="SqlDataSource3" DataTextField="Loca_nombre" DataValueField="Loca_id" Rows="1" ></asp:ListBox>
					<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\camilortte\Desktop\CalificaUD-releaseVisualStudio2\CalificaUD-releaseVisualStudio\DataBase\CalificaUDDataBase.mdf;Integrated Security=True;Connect Timeout=30" SelectCommand="SELECT * FROM [Localidad]"></asp:SqlDataSource>
                    <br><br>
                    
                    <span class="add-on ">Ciudad&nbsp;&nbsp;</span>
                    <asp:ListBox ID="register_ciudad" runat="server" CssClass ="input-xlarge" DataSourceID="SqlDataSource1" DataTextField="Ciud_nombre" DataValueField="Ciud_id" Rows="1"></asp:ListBox>
					<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\camilortte\Desktop\CalificaUD-releaseVisualStudio2\CalificaUD-releaseVisualStudio\DataBase\CalificaUDDataBase.mdf;Integrated Security=True;Connect Timeout=30" SelectCommand="SELECT * FROM [Ciudad]"></asp:SqlDataSource>
                    <br /><br />

                    <span class="add-on ">Pass&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<input type="password" class="input-xlarge" placeholder="Password" required=true id='password1' autocomplete='off' name="register_pass" value=""><br><br>
					<span class="add-on ">Pass&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<input type="password" class="input-xlarge" placeholder="Repita Password" required=true autocomplete='off' id='password2' value=""><br><br>
				</div>

				<div class="alert alert-error" id="error_registro">Error de registro</div>

				<div class="row-fluid">
					<div class="span12">
						<button class="btn btn-large btn-info span6" type="button" id="volverToIniciarSesion">Volver</button>
                        <asp:Button ID="botonRegistrarse" CssClass ="btn btn-large btn-info span6" runat="server" Text="Registrarse" PostBackUrl="~/registra.aspx" />						
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

