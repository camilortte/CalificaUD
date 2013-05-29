<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="registra.aspx.vb" Inherits="CalificaUD.registra" Debug ="true" %>

<%@ Import Namespace="CalificaUD" %>

<%
    'Dim nombre, apellido, correo, clave, clave2, codigo, idCiudad, idLocalidad, idCarrera As String
    ' (Estu_nombre ,Estu_apellido ,Estu_codigo ,Estu_correo ,Estu_ciud_id ,Estu_Loca_id ,Estu_Carr_codigo ,Estu_clave ) 
    'values('Camiki' ,'Antonio'     ,'20111078094','ca@ca.ca' ,   '1',         '1',           '72',              '1212')
    Dim arreglo(7) As String
    
    arreglo(0) = Request.Params("register_nombre")
    arreglo(1) = Request.Params("register_apellido")
    arreglo(2) = Request.Params("register_codigo")
    arreglo(3) = Request.Params("register_correo")
    arreglo(4) = Request.Params("register_ciudad")
    arreglo(5) = Request.Params("register_localidad")
    arreglo(6) = Request.Params("register_carrera")
    arreglo(7) = Request.Params("register_pass")
    
    Dim insetar As New conexionDB
    Try
        If insetar.insertar_estudiante(arreglo) Then
            Response.Write("<script language=javascript>" +
                    "alert('Usuario agregado correctamente =D');" +
                    "window.location.replace('login.aspx');" +
                    "</script>")
        
        Else
            Response.Write("<script language=javascript>" +
                     "alert('Error el usuario ya existe');" +
                     "window.location.replace('login.aspx');" +
                     "</script>")
            
        End If
    Catch ex As Exception
        MsgBox (ex.ToString )
        Response.Write("<script language=javascript>" +
                       "alert('Error debe ingresar datos validos Ud sera redirigido a la pantalla de inicio de sesion ');" +
                       "window.location.replace('login.aspx');" +
                       "</script>")
        'Response.Redirect("login.aspx")
        
        
    End Try
    
    
    
    
    'Solo queda hacer la insercion
    'Response.Write(nombre + "_" + apellido + "_" + correo + "_" + clave + "_" +  codigo + "_" + idCiudad + "_" + idCarrera + "_" + idLocalidad)
    
    
    
%>