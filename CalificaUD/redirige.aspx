<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="redirige.aspx.vb" Inherits="CalificaUD.redirige" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Bienvenido</h1>
        <%
            Response.Write(Request.Params("email_login"))
                        
        %>
    </div>
    </form>
</body>
</html>
