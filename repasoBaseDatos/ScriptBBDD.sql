CREATE table empleado(
id int (3),
DNI varchar(9) unique not null,
nombre varchar(30) not null,
direccion varchar(50),
fechaNacimiento date,
constraint pk_empleado primary key (id)
);

CREATE TABLE jornada(
idEmpleado int(3),
fecha date,
horaEntrada date,
horaSalida date,
observaciones varchar(50),
constraint pk_fecha primary key (fecha),
constraint FK_idEmpleado foreign key (idEmpleado) references empleado(id)
);

create table proyecto(
id varchar (10),
nombre varchar(30) not null,
direccion varchar(50),
tipo varchar(10),
constraint pk_proyecto primary key(id)
);

create table proyecto_asignado(
id_proyecto varchar(10),
id_empleado int(3),
CONSTRAINT PK_PROYECTO_ASIGNADO PRIMARY KEY(id_proyecto, id_empleado)
);

create table almacen(
codigoArticulo varchar(10),
cantidad int(4) not null,
descripcion varchar(50),
nombre varchar(30),
proyectoAsociado varchar(10),
constraint PK_Almacen primary key (codigoArticulo),
constraint FK1_proyectoAsociado foreign key (proyectoAsociado) references proyecto(id)
);

create table distribuidor(
cif varchar(8),
nombre varchar(30),
direccion varchar(50),
constraint PK_distribuidor primary key (cif)
);

create table pedido(
codigoArt varchar(10),
distribuidorCIF varchar(8),
cantidad int(4) not null,
descripcion varchar(50),
constraint PK_pedido primary key (codigoArt),
constraint FK_distribuidor foreign key (distribuidorCIF) references distribuidor(cif)
);

