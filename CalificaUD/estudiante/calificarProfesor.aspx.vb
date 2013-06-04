Public Class calificarProfesor
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        alerta_parrafo.Style.Add("display", "none")
    End Sub




    Private Sub ListBox_profesor_DataBinding(sender As Object, e As EventArgs) Handles ListBox_profesor.DataBinding

    End Sub

    


    Protected Sub ListBox_materia_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListBox_materia.SelectedIndexChanged

    End Sub

    
    Protected Sub Enviar_Click(sender As Object, e As EventArgs) Handles Enviar.Click

    End Sub
End Class