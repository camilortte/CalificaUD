<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="CalificaUD.WebForm1" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Estu_nombre" DataValueField="Estu_nombre">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\camilortte\Documents\GitHub\CalificaUD\DataBase\CalificaUDDataBase.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Estudiante]"></asp:SqlDataSource>
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
            <LocalReport ReportEmbeddedResource="CalificaUD.Report2.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="CalificaUD.CalificaUDDataBaseDataSetCOCOTableAdapters.AsignaturaTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_Asig_codigo" Type="Int32" />
                <asp:Parameter Name="Original_Asig_Doce_id" Type="Int32" />
                <asp:Parameter Name="Original_Asig_Carr_codigo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Asig_codigo" Type="Int32" />
                <asp:Parameter Name="Asig_nombre" Type="String" />
                <asp:Parameter Name="Asig_Doce_id" Type="Int32" />
                <asp:Parameter Name="Asig_Carr_codigo" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Asig_nombre" Type="String" />
                <asp:Parameter Name="Original_Asig_codigo" Type="Int32" />
                <asp:Parameter Name="Original_Asig_Doce_id" Type="Int32" />
                <asp:Parameter Name="Original_Asig_Carr_codigo" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
