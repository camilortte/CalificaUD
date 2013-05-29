Imports System.Data
Imports System.Data.SqlClient


Public Class conexionDB
    Inherits System.Web.UI.Page

    Dim conexion As String = "Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\camilortte\Desktop\CalificaUD-releaseVisualStudio2\CalificaUD-releaseVisualStudio\DataBase\CalificaUDDataBase.mdf;Integrated Security=True;Connect Timeout=30"

    Public Function consultar(ByVal consulta As String) As String()
        Dim seleccion As String = consulta '"SELECT * FROM Ciudad"
        Dim adaptadordedatos As SqlDataAdapter
        Dim tabladedatos As New DataTable
        Dim a() As String
        Try
            adaptadordedatos = New SqlDataAdapter(seleccion, conexion)
            adaptadordedatos.Fill(tabladedatos)

            Dim total As Integer

            'Count the number of rows
            total = tabladedatos.Rows.Count - 1

            ReDim a(0 To total)
            For i = 0 To total
                a(i) = tabladedatos.Rows(i)(1)
            Next
        Catch ex As Exception
            MsgBox("Error en la conexión: " & ex.Message)
        End Try
        Return a
    End Function

    Public Function consultarExistencia(ByVal codigo As String) As Boolean
        
        Dim seleccion As String = "SELECT * FROM Estudiante Where Estu_codigo='" + codigo + "'"
        Dim adaptadordedatos As SqlDataAdapter
        Dim tabladedatos As New DataTable
        Try
            adaptadordedatos = New SqlDataAdapter(seleccion, conexion)
            adaptadordedatos.Fill(tabladedatos)
            If tabladedatos.Rows.Count > 0 Then
                Return True
            Else
                Return False
            End If
           
        Catch ex As Exception
            MsgBox("Error en la conexión: " & ex.Message)
            Return False
        End Try

    End Function

    Public Function consultarExistencia(ByVal codigo As String, ByVal pas As String) As Boolean
        
        Dim seleccion As String = "SELECT * FROM Estudiante Where Estu_codigo='" + codigo + "' AND  Estu_clave='" + pas + "'"
        Dim adaptadordedatos As SqlDataAdapter
        Dim tabladedatos As New DataTable
        Try
            adaptadordedatos = New SqlDataAdapter(seleccion, conexion)
            adaptadordedatos.Fill(tabladedatos)
            If tabladedatos.Rows.Count > 0 Then
                Return True
            Else
                Return False
            End If

        Catch ex As Exception
            MsgBox("Error en la conexión: " & ex.Message)
            Return False
        End Try

    End Function


    Public Function insertar_estudiante(ByVal atributos() As String) As Boolean
        
        If consultarExistencia(atributos(2)) Then
            Return False
        Else
            Dim insercion As String = "insert into Estudiante (Estu_nombre ,Estu_apellido ,Estu_codigo ,Estu_correo ,Estu_ciud_id ,Estu_Loca_id ,Estu_Carr_codigo ,Estu_clave ) values("
            For i As Integer = 0 To atributos.Count - 1
                If i >= atributos.Count - 1 Then
                    insercion = insercion + "'" + atributos(i) + "'"
                Else
                    insercion = insercion + "'" + atributos(i) + "'" + ","
                End If
            Next

            insercion = insercion + ")"
            'MsgBox(insercion)
            Dim con As New SqlConnection(conexion)
            Dim cmd As New SqlCommand(insercion, con)
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Return True
        End If
    End Function

End Class
