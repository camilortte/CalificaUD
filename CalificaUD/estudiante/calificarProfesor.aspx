<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="calificarProfesor.aspx.vb" Inherits="CalificaUD.calificarProfesor" %>

<%@ Import Namespace="CalificaUD" %>

<%@ outputcache Location="None" %> 
<%
    If Session("activate") Then
%>


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
	<form id="form1" runat="server">
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
              <li><a class="btn space_link" href="estadisticas_materia.html">Estadisticas por Materia <span class="label label-important">¡Nuevo!</span></a></li>
              <li class="nav-header"><i class="icon-ok-sign"></i> Califica</li>
              <li><a class="btn  space_link" href="califica_carrera.html">Por carrera <span class="label label-important">¡Nuevo!</span></a></li>
              <li><a class="btn active space_link" href="califica_materia.html">Por materia <span class="label label-important">¡Nuevo!</span></a></li>          
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9 text-center">
        	<h1>¡Calificacion de Profesores!</h1>
        	<hr>
        	<p>Seleccione la carrera:</p>
            <asp:ListBox ID="ListBox_carrera" runat="server" CssClass="input-xxlarge" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Carr_nombre" DataValueField="Carr_codigo" Rows="1"></asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\camilortte\Documents\GitHub\CalificaUD\DataBase\CalificaUDDataBase.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Carrera]"></asp:SqlDataSource>
            <br>
            <p>Seleccione la Materia:</p>
            <asp:ListBox ID="ListBox_materia" runat="server" CssClass="input-xxlarge" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Asig_nombre" DataValueField="Asig_codigo" Rows="1"></asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\camilortte\Documents\GitHub\CalificaUD\DataBase\CalificaUDDataBase.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Asignatura]"></asp:SqlDataSource>
            <br>
             <p>Seleccione el profesor:</p>
            <asp:ListBox ID="ListBox_profesor"  runat ="server" CssClass="input-xxlarge" AutoPostBack="True" DataSourceID="SqlDataSource3"  DataTextField="Doce_nombre" DataValueField="Doce_id" Rows="1"  ></asp:ListBox>            
            
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\camilortte\Documents\GitHub\CalificaUD\DataBase\CalificaUDDataBase.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" 
                SelectCommand="select * from Carrera , Carrera_Docente , Docente , Asignatura  WHERE Doce_id = CaDo_Doce_id  and CaDo_Carr_codigo = Carr_codigo and Asig_Doce_id = Doce_id and Asig_codigo = @Asig_codigo and CaDo_Carr_codigo = @Asig_carrera">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ListBox_materia" Name="Asig_codigo" PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="ListBox_carrera" Name="Asig_carrera" PropertyName="SelectedValue" Type="Int32" />                    
                </SelectParameters>
            </asp:SqlDataSource>
            <br>
            
            

            <table class="table table-bordered" id="tabla_res">
				<tbody><tr><th>Criterio</th><th>Calificacion</th> </tr> 				
                <%
                
                Dim conexion As New conexionDB
                Dim canena() As String = conexion.consultaCriteriosEval()
                Dim auzi As String
                For i As Integer = 0 To canena.Count - 1
                    auzi = "<tr class='warning'><td>" + canena(i) + "</td><td><select id='seleccion_"+i.ToString +"' name='seleccion_"+i.ToString +"' ><option>1</option><option>2</option><option>3</option><option>4</option><option>5</option></select></td></tr>"
                    Response.Write(auzi)
                Next
                
                %>
            </tbody></table>

            <p runat="server"  id="alerta_parrafo" class="alert alert-error">Debe seleccionar un profesor.</p>

            <asp:Button Text="Calificar" CssClass="btn btn-primary btn-large " runat="server" ID="Enviar" PostBackUrl="~/estudiante/insertar_calificacion.aspx"  />
             </div>
      </div><!--/row-->
         
      <hr>

    </div><!--/.fluid-container-->

</form>
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
</body>
</html>

<% Else
        Response.Redirect("../index.aspx")
        %>

<h1>ACCESO DENEGADO</h1>





<%
    End If
%>

