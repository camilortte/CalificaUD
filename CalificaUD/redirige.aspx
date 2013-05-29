<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="redirige.aspx.vb" Inherits="CalificaUD.redirige" %>

<%@ Import Namespace="CalificaUD" %>

<%
    'Se hace la consulta para comprobar si el usuario existe y saber que ti po de usuario es =D
    Dim usuario As String = Request.Params("email_login")
    Dim pass As String = Request.Params("password_login")
    
    Dim consulta As New ConexionDB
    
    
    If Not IsNothing(usuario) Then
        If (consulta.consultarExistencia(usuario, pass)) Then
            Session("codigo") = usuario
            Session("activate") = True
            Response.Redirect("estudiante/estudiante.aspx")
        Else
            Response.Write("<script language=javascript>" +
                   "alert('Error el usuario NO existe');" +
                   "window.location.replace('login.aspx');" +
                   "</script>")
        End If
    End If
    
    
    
    'FALTA COMPROBAR ADMINISTRADOR
       
                        
%>
   
