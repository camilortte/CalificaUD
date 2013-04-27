<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="WebUserControl1.ascx.vb" Inherits="CalificaUD.WebUserControl1" %>


<% 
    Dim a As Integer = 0
    For i = 0 To 10
        Response.Write("The querystring is " + i + "<br>")
    Next
    
        
    
%>