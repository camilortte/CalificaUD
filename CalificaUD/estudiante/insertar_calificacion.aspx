<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="insertar_calificacion.aspx.vb" Inherits="CalificaUD.insertar_calificacion" %>

<%@ Import Namespace="CalificaUD" %>

<%
    
    Dim cadenas(9) As String
    For i As Integer =0 to 9
        Dim auxi As String = "seleccion_" + i.ToString
        cadenas(i) = Request.Form(auxi).ToString()
    Next
    
    Dim profesor As String = Request.Form("ListBox_profesor").ToString
    Dim estudiante As String = Session("codigo").ToString
    'MsgBox(Session("codigo").ToString)
    Dim conexion As New conexionDB
    If conexion.insertar_Calificacion(cadenas, profesor, estudiante) Then
        Response.Write("<script language=javascript>" +
                   "alert('Bien se agrego su calificacion');" +
                   "window.location.replace('calificaProfesor.aspx');" +
                   "</script>")
    Else
        Response.Write("<script language=javascript>" +
                 "alert('Ud ya califico a este profeosr');" +
                 "window.location.replace('calificaProfesor.aspx');" +
                 "</script>")
    End If
    
%>