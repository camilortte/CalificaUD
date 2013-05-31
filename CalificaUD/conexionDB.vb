Imports System.Data
Imports System.Data.SqlClient


Public Class conexionDB
    Inherits System.Web.UI.Page

    Dim conexion As String = "Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\camilortte\Documents\GitHub\CalificaUD\DataBase\CalificaUDDataBase.mdf;Integrated Security=True;Connect Timeout=30"

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

    Public Function obtenerMaximoIndice(ByVal tabla As String, ByVal columna As String) As Integer
        Dim miConexion As SqlConnection
        Dim lector As SqlDataReader
        Dim comando As SqlCommand
        Dim maximo As Integer
        'INICIALIZAMOS LA CONEXION Y EL OBJETO COMMAND
        miConexion = New SqlConnection
        comando = New SqlCommand
        'ABRIMOS LA CONEXION
        miConexion.ConnectionString = conexion
        miConexion.Open()
        'ASIGNAMOS LA CONEXION Y LA SENTENCIA AL OBJETO COMMAND
        comando.Connection = miConexion
        comando.CommandText = "select MAX(" + columna + ") as 'MAXIMO' from " + tabla
        'EJECUTAMOS EN LECTOR
        lector = comando.ExecuteReader
        'SI EL LECTOR DEVUELVE TRUE AL LEER ES QUE TIENE REGISTROS
        If lector.Read() Then
            Try
                maximo = lector.Item("MAXIMO")
            Catch ex As Exception
                maximo = 0
            End Try

        End If
        lector.Close()
        comando = Nothing
        Return maximo
    End Function


    Public Function consultaCriteriosEval() As String()

        Dim seleccion As String = "SELECT * FROM Criterio "
        Dim adaptadordedatos As SqlDataAdapter
        Dim tabladedatos As New DataTable
        Try
            adaptadordedatos = New SqlDataAdapter(seleccion, conexion)
            adaptadordedatos.Fill(tabladedatos)
            Dim salida(tabladedatos.Rows.Count - 1) As String
            For i As Integer = 0 To tabladedatos.Rows.Count - 1
                'MsgBox(tabladedatos.Rows(i)("Crit_pregunta").ToString)
                salida(i) = tabladedatos.Rows(i)("Crit_pregunta").ToString
            Next

            Return salida

        Catch ex As Exception
            MsgBox("Error en la conexión: " & ex.Message)
            Return Nothing
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

    Private Function comprobarNoredundanciaCalificacion(ByVal coidogEstud As String, ByVal iDocente As String) As Boolean

        Dim seleccion As String = "select * from Calificacion where Cali_Estu_codigo = '" + coidogEstud + "' And      Cali_Doce_id = '" + iDocente + "'"
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

    Public Function insertar_Calificacion(ByVal calificaciones() As String, ByVal docente As String, ByVal estudiante As String) As Boolean

        If Not comprobarNoredundanciaCalificacion(estudiante, docente) Then
            Dim Cali_id As Integer = obtenerMaximoIndice("Calificacion", "Cali_id") + 1
            Dim Calid_id_stati As Integer = Cali_id
            Dim con As New SqlConnection(conexion)
            Dim cmd As SqlCommand
            con.Open()
            Dim insercion As String = "insert into Calificacion (Cali_id ,Cali_puntaje ,Cali_Doce_id ,Cali_Estu_codigo ) values("
            For i As Integer = 0 To calificaciones.Count - 1
                insercion = "insert into Calificacion (Cali_id ,Cali_puntaje ,Cali_Doce_id ,Cali_Estu_codigo ) values("
                insercion = insercion + "'" + Cali_id.ToString + "','" + calificaciones(i) + "','" + docente + "','" + estudiante + "')"
                'MsgBox(insercion)
                cmd = New SqlCommand(insercion, con)
                cmd.ExecuteNonQuery()
                Cali_id += 1
                insercion = ""
            Next

            insercion = "insert into Calificacion_criterio (CaCr_Cali_id ,CaCr_Crit_id )"
            For i As Integer = 1 To calificaciones.Count
                insercion = "insert into Calificacion_criterio (CaCr_Cali_id ,CaCr_Crit_id ) values("
                insercion = insercion + "'" + Calid_id_stati.ToString + "','" + i.ToString + "')"
                cmd = New SqlCommand(insercion, con)
                cmd.ExecuteNonQuery()
                Calid_id_stati += 1
                insercion = ""
            Next
            'insert into Calificacion_criterio (CaCr_Cali_id ,CaCr_Crit_id )values('6','1')
            con.Close()
            Return True

        Else
            Return False

        End If

    End Function


    Public Function estadisticasProfesores() As String(,)
        Dim seleccion As String = "select distinct Doce_id   from Docente ,Calificacion where Cali_Doce_id =Doce_id "
        Dim adaptadordedatos As SqlDataAdapter
        Dim tabladedatos As New DataTable
        Dim tabladedatos2 As New DataTable
        Dim salida() As String
        Dim calificacionesTotales() As String
        Try
            adaptadordedatos = New SqlDataAdapter(seleccion, conexion)
            adaptadordedatos.Fill(tabladedatos)
            salida = New String(tabladedatos.Rows.Count - 1) {}
            calificacionesTotales = New String(tabladedatos.Rows.Count - 1) {}

            For i As Integer = 0 To tabladedatos.Rows.Count - 1
                'MsgBox(tabladedatos.Rows(i)("Crit_pregunta").ToString)
                salida(i) = tabladedatos.Rows(i)("Doce_id").ToString
                seleccion = "select count(Doce_id) as 'COUNT'  from Docente, Calificacion  where   Doce_id = Cali_doce_id And Doce_id = '" + salida(i) + "'"
                adaptadordedatos = New SqlDataAdapter(seleccion, conexion)
                adaptadordedatos.Fill(tabladedatos2)
                calificacionesTotales(i) = tabladedatos2.Rows(i)("COUNT").ToString
            Next


            Dim ressultado(salida.Count - 1, 3) As String
            For i As Integer = 0 To salida.Count - 1
                seleccion = "select Doce_nombre,Doce_apellido,Doce_correo  , sum(Cali_puntaje) as 'PROMEDIO' from Docente, Calificacion  where Doce_id=Cali_doce_id and DOce_id = '" + salida(i) + "' group by Doce_nombre,Doce_apellido ,Doce_correo "
                adaptadordedatos = New SqlDataAdapter(seleccion, conexion)
                adaptadordedatos.Fill(tabladedatos)
                ressultado(i, 0) = tabladedatos.Rows(i)("Doce_nombre").ToString
                ressultado(i, 1) = tabladedatos.Rows(i)("Doce_apellido").ToString
                ressultado(i, 2) = tabladedatos.Rows(i)("Doce_correo").ToString
                MsgBox("BIEN")
                Dim num1 As Double = Double.Parse(tabladedatos.Rows(i)("PROMEDIO").ToString)
                MsgBox(tabladedatos.Rows(i)("PROMEDIO").ToString)
                Dim num2 As Double = Double.Parse(calificacionesTotales(i))
                MsgBox(calificacionesTotales(i).ToString)
                Dim num4 As Double = num1 / num2
                ressultado(i, 3) = num4.ToString
                MsgBox("BIENA 8")
            Next

            Return ressultado
        Catch ex As Exception
            MsgBox("Error en la conexión: " & ex.Message)
        End Try
        Return Nothing
    End Function


End Class
