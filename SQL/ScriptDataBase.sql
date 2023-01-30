create database RepasoPersonas

use RepasoPersonas

create table estados_civiles
(
id_estado_civil int identity (1,1),
estado_civil varchar (40)
constraint pk_estados_civiles primary key (id_estado_civil)
)

create table laboralidades
(
id_laboralidad int identity(1,1),
laboralidad varchar (50)
constraint pk_laboralidades primary key (id_laboralidad)
)

create table generos
(
id_genero int identity(1,1),
genero varchar (50)
constraint pk_generos primary key (id_genero)
)

create table personas
(
id_persona int identity(100,1),
nombre varchar (50),
apellido varchar (50),
dni int,
fecha_nac datetime,
id_estado_civil int,
telefono bigint,
[e-mail] varchar(100),
id_laboralidad int,
id_genero int,
direccion varchar(100)
constraint pk_personas primary key (id_persona),
constraint fk_personas_estados foreign key (id_estado_civil)
references estados_civiles (id_estado_civil),
constraint fk_personas_generos foreign key (id_genero)
references generos (id_genero),
constraint fk_personas_laboralidades foreign key (id_laboralidad)
references laboralidades(id_laboralidad)
)