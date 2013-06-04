--Conultar todo lo referente a calificaciones
select Cali_puntaje ,Doce_nombre, Doce_apellido , Crit_pregunta ,  Estu_codigo ,Estu_nombre, Estu_apellido   from Calificacion , Docente , Calificacion_criterio , Criterio ,Estudiante 
where
Docente .Doce_id = Calificacion .Cali_Doce_id  and 
Calificacion .Cali_id = Calificacion_criterio .CaCr_Cali_id and 
Criterio .Crit_id  = Calificacion_criterio .CaCr_Crit_id   and
Cali_Estu_codigo = Calificacion .Cali_Estu_codigo 

--Version 2
select Cali_puntaje ,Doce_nombre, Doce_apellido , Estu_codigo   from Calificacion , Docente  , Estudiante 
where
Docente .Doce_id = Calificacion .Cali_Doce_id and
Estudiante .Estu_codigo = Calificacion .Cali_Estu_codigo 


--Vamos a calificar al profesor NOVOA
insert into Calificacion (Cali_id ,Cali_puntaje ,Cali_Doce_id ,Cali_Estu_codigo )
values ('6','10','1','09')

insert into Calificacion_criterio (CaCr_Cali_id ,CaCr_Crit_id )
values('6','1')


--Vamos a buscar el docente que esta en la carrera 78 que dicta la metria 1
select * from Carrera , Carrera_Docente , Docente , Asignatura 
where
Doce_id = CaDo_Doce_id  and CaDo_Carr_codigo = Carr_codigo and Asig_Doce_id = Doce_id and Asig_codigo = 1 and CaDo_Carr_codigo = 78


--Para la conexion
[Asig_nombre] = @Asig_nombre
ListBox_profesor.SelectedValue


<tr><td>Camilo</td><td><asp:RadioButton ID="RadioButton11" GroupName="caca" runat="server" /></td><td><asp:RadioButton GroupName="caca" ID="RadioButton12" runat="server" /></td><td><asp:RadioButton ID="RadioButton13" runat="server" GroupName="caca" /></td><td><asp:RadioButton ID="RadioButton14" GroupName="caca" runat="server" /></td><td><asp:RadioButton GroupName="caca" ID="RadioButton15" runat="server" /></td></tr>
insert into Calificacion (Cali_id,Cali_puntaje,Cali_doce_id,Cali_Estu_codigo ) values('6','1','3')


---OJO ESTO SON PARA EL RANKIN DE PROFESORAS

select distinct Doce_id   from Docente ,Calificacion where Cali_Doce_id =Doce_id 

select Doce_nombre,Doce_apellido,Doce_correo  , sum(Cali_puntaje) from Docente, Calificacion  where Doce_id=Cali_doce_id and DOce_id = 2 group by Doce_nombre,Doce_apellido ,Doce_correo 

--Numero Calificaciones recibidas 
select count(Doce_id) as 'COUNT' from Docente, Calificacion  
where 
Doce_id=Cali_doce_id and
Doce_id=1
