create database Hoteles
use Hoteles
create table Empleado
(
id_trabajador int identity primary key,  
nombre_trabajador varchar (20),
dirección varchar (40),
teléfono varchar (20),
sueldo int, 
)

create table TipoHabitación
(
 id_Tipo int identity primary key,
 nombre varchar(30),
 descripcion text,
)

create table Habitación
(
id_habitacion int identity primary key,
Número int,
Estado char (3),
Costo money,
fkTipo int,
foreign key (fkTipo) references TipoHabitación(id_Tipo)
)

create table Recepcionista
(
id_recepcionista int identity primary key,
id_trabajador int,
foreign key (id_trabajador) references Empleado(id_trabajador),
Nombre varchar (20),
Estado char (3),
Teléfono varchar (20),
)


create table Nacionalidad
(
 id_nacionalidad int identity primary key,
 pais varchar(30),
 nacionalidad varchar(50)
)

create table Cliente
(
 id_cliente int identity primary key,
 nombre varchar(170),
 direccion varchar(170),
 telefono varchar(20),
 fkNacionalidad int,
 foreign key(fkNacionalidad) references Nacionalidad(id_nacionalidad) 
)

create table Alquiler
(
id_alquiler int identity primary key,
fechaHoraEntrada datetime not null,
fechaHoraSalida datetime not null,
costoTotal money,
fkRecepcionista int,
fkCliente int,
fkHabitación int,
foreign key (fkRecepcionista) references Recepcionista(id_recepcionista),
foreign key (fkCliente) references Cliente(id_cliente),
foreign key (fkHabitación) references Habitación(id_habitacion)
)

insert into Empleado values('Stan Lee', 'Av Pedro de alba', '8146879332','8000');
insert into Empleado values('José Ochoa', 'Av Pedro de alba', '8189874335','8000');
insert into Empleado values('Peter Parker', 'Av Pedro de alba', '8167677766','10000');
insert into Empleado values('Elizabeth Olsen', 'Av Pedro de alba', '8176664354','8000');
insert into Empleado values('Cristopher Robin', 'Av Pedro de alba', '8187321654','8000');


insert into TipoHabitación values('Sencilla', 'Habitación de una sola cama con baño y regadera');
insert into TipoHabitación values('Doble', 'Habitación con camas para dos personas con baño y regadera');
insert into TipoHabitación values('Suite', 'Habitación amplia incluye sofacama, comedor, oficina, camas para 2 personas con baño y regadera');


insert into Habitación values('41', 'On', '8000','1');
insert into Habitación values('52', 'On', '10000','2');
insert into Habitación values('23', 'On', '16000','3');
insert into Habitación values('13', 'Off', '10000','2');


insert into Recepcionista values(3, 'Peter Parker', 'On','8167677766');
insert into Recepcionista values(4, 'Elizabeth Olsen', 'On','8176664354');

insert into Nacionalidad values('Mexico','Mexicana');
insert into Nacionalidad values('Argentina','Argentino');
insert into Nacionalidad values('Estados Unidos','Americano');
insert into Nacionalidad values('Perú','Peruano');
insert into Nacionalidad values('Chile','Chilena');

insert into Cliente values('Carlos González', 'Av Universidad','8119548694',1);
insert into Cliente values('Scarlett Judith', 'Av Las Torres 205','811966898',3);
insert into Cliente values('Esmeralda Martínez', 'Av Santo domingo 1416','8186767689',2);

insert into Alquiler values('2020/08/19','2020/08/21','8000','3',1,2);
insert into Alquiler values('2020/05/28','2020/05/30','16000','4',2,3);
insert into Alquiler values('2020/05/28','2020/05/30','16000','4',2,3);

use Hoteles
select * from Empleado

execute sp_helpindex 'Empleado' 

create index IDXNOMBRE
on Empleado(nombre_trabajador)

select * from Cliente

execute sp_helpindex 'Cliente'

create index IndexNombre
on Cliente(nombre)