create table Ciudad(
	Ciud_id int not null,
	Ciud_nombre varchar(25),
	primary key(Ciud_id)
);

create table Localidad(
	Loca_id int not null,
	Loca_nombre varchar(45),
	Loca_Ciud_id int not null references Ciudad(Ciud_id),
	primary key(Loca_id),
);


create table Carrera(
	Carr_codigo int not null,
	Carr_nombre varchar(45),
	primary key(Carr_codigo)
);

create table Docente(
	Doce_id int not null,
	Doce_nombre varchar(20),
	Doce_apellido varchar(25),
	Doce_correo varchar(45),
	primary key(Doce_id)
);

create table Asignatura(
	Asig_codigo int not null,
	Asig_nombre varchar(45),
	Asig_Doce_id int not null references Docente(Doce_id),
	Asig_Carr_codigo int not null references Carrera(Carr_codigo),
	primary key(Asig_codigo,Asig_Doce_id,Asig_Carr_codigo)
);


create table Estudiante(
	Estu_codigo varchar(11) not null,
	Estu_nombre varchar(20),
	Estu_apellido varchar(25),
	Estu_correo varchar(45) not null,
	Estu_ciud_id int not null references Ciudad(Ciud_id),
	Estu_Loca_id int not null references Localidad(Loca_id),
	Estu_clave varchar(45),
	Estu_Carr_codigo int not null references Carrera(Carr_codigo),
	primary key(Estu_codigo)
);


create table Comentario(
	Come_id int not null,
	Come_contenido  text,
	Come_fecha_escritura date,
	Come_Doce_id int not null references Docente(Doce_id),
	Come_Estu_codigo varchar(11) not null references Estudiante(Estu_codigo),
	primary key(Come_id),
);


create table Calificacion(
	Cali_id int not null,
	Cali_puntaje int,
	primary key(Cali_id)
);

create table Criterio(
	Crit_id int not null,
	Crit_pregunta varchar(50),
	primary key(Crit_id)
);

create table Calificacion_criterio(
	CaCr_Cali_id int not null references Calificacion(Cali_id),
	CaCr_Crit_id int not null references Criterio(Crit_id),
	primary key(CaCr_Cali_id,CaCr_Crit_id)
);

create table Observacion(
	Obse_id int not null,
	Obse_contenido text,
	Obse_Doce_id int not null references Docente(Doce_id),
	primary key(Obse_id)
);

create table Ranking(
	Rank_id int not null,
	Rank_puesto int not null,
	Rank_fecha date,
	Rank_razon text,
	primary key(Rank_id)
);

create table Ranking_Docente(
	RaDo_Rank_id int not null references Ranking(Rank_id),
	RaDo_Doce_id int not  null references Docente(Doce_id),
	primary key(RaDo_Rank_id,RaDo_Doce_id)
);

create table Hoja_Vida(
	HoVi_id int not null,
	HoVi_link varchar(50),
	HoVi_Doce_id int not null references Docente(Doce_id)
);


