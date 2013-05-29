Public Class redirige
    Inherits System.Web.UI.Page

    Dim mensaje As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        mensaje = "EL usuario No existe"
    End Sub

    Public Property mesaje_() As String
        Get
            Return mensaje
        End Get
        Set(value As String)
            mensaje = value
        End Set
    End Property

End Class