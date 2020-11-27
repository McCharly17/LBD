create database Hoteles
use Hoteles
create table Empleado
(
id_trabajador int,  
nombre_trabajador varchar (20),
dirección varchar (40),
teléfono varchar (20),
sueldo int, 
)

create table TipoHabitación
(
 id_Tipo int,
 nombre varchar(30),
 descripcion text,
)

create table Habitación
(
id_habitacion int,
Número int,
Estado char (3),
Costo money,
fkTipo int,
)

create table Recepcionista
(
id_recepcionista int primary key,
id_trabajador int,
foreign key (id_trabajador) references Empleado(id_trabajador),
Nombre varchar (20),
Estado char (3),
Teléfono varchar (20),
)


create table Nacionalidad
(
 id_nacionalidad int primary key,
 pais varchar(30),
 nacionalidad varchar(50)
)

create table Cliente
(
 id_cliente int primary key,
 nombre varchar(170),
 direccion varchar(170),
 telefono varchar(20),
 fkNacionalidad int,
 foreign key(fkNacionalidad) references Nacionalidad(id_nacionalidad) 
)

create table Alquiler
(
id_alquiler int primary key,
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

insert into Empleado values('1','Stan Lee', 'Av Pedro de alba', '8146879332','8000');
insert into Empleado values('2','José Ochoa', 'Av Pedro de alba', '8189874335','8000');
insert into Empleado values('3','Peter Parker', 'Av Pedro de alba', '8167677766','10000');
insert into Empleado values('4','Elizabeth Olsen', 'Av Pedro de alba', '8176664354','10000');
insert into Empleado values('5','Cristopher Robin', 'Av Pedro de alba', '8187321654','8000');
insert into Empleado values('6','Diego Armando', 'Av Pedro de alba', '8155546543','8000');
insert into Empleado values('7','Cristiano Ronaldo', 'Av Pedro de alba', '8174731354','8000');
insert into Empleado values('8','Roberto Gomez', 'Av Pedro de alba', '8165487687','8000');
insert into Empleado values('9','David Sierra', 'Av Pedro de alba', '8165434689','8000');
insert into Empleado values('10','Andrés Manuel','Antaris #1685','8130687354','8000');
insert into Empleado values('11','Marcos Navaja','Artemisa #6766','8156594865','8500');
insert into Empleado values('12','Paul García','Roberto Espinoza #5876','8136875463','10000');
insert into Empleado values('13','Jeff Hardy','Librado Rivera #1567','8179645656','8000');
insert into Empleado values('14','John Cena','La pastora #1667','8198643435','10000');
insert into Empleado values('15','Michael Aristegui','Diego Díaz #5576','8168765468','8000');
insert into Empleado values('16','Pedro Garza','Poseidón #1252','8168765846','8000');
insert into Empleado values('18','Joaquín Martínez','Anahuác #3545','8134246856','9000');
insert into Empleado values('19','Jesus Reyes','Barragán #15687','8168765465','9000');
insert into Empleado values('20','Martín Dominguez','Valle Oriente #5876','8187564654','10000');
insert into Empleado values('21','Carlos Ramírez','Monterrey #57637','8163768798','8500');


update Empleado set nombre_trabajador= 'Esperanza González', dirección='San Gabriel #404', teléfono='8176163868',
sueldo='8000' where id_trabajador=6

update Empleado set dirección='Bernardo Reyes #5435' where id_trabajador=2
update Empleado set dirección='Ocampo #365' where id_trabajador=3
update Empleado set dirección='Fundadores #454' where id_trabajador= 4
update Empleado set dirección='Nueva Rosita #67' where id_trabajador=5


delete from Empleado where id_trabajador=13
delete from Empleado where id_trabajador=8
delete from Empleado where id_trabajador=9
delete from Empleado where id_trabajador=10
delete from Empleado where id_trabajador=7


insert into TipoHabitación values('1','Sencilla', 'Habitación de una sola cama con baño y regadera');
insert into TipoHabitación values('2','Doble sencilla', 'Habitación con una cama individual sencilla y una cama pequeña');
insert into TipoHabitación values('3','Doble', 'Habitación con camas para dos personas con baño y regadera');
insert into TipoHabitación values('4','Triple', 'Habitación con camas para tres personas con baño y regadera');
insert into TipoHabitación values('5','Cuádruple', 'Habitación amplia con camas para cuatro personas con baño y regadera');
insert into TipoHabitación values('6','Juiner Suite', 'Habitación doble baño y salón');
insert into TipoHabitación values('7','Habitación supletoria', 'Habitación con dos camas y una especial con cuna para bebé');
insert into TipoHabitación values('8','Matrimonio', 'Habitación amplias para parejas o matrimonios con baño y regadera');
insert into TipoHabitación values('9','Suite', 'Habitación amplia incluye salón, sofacama, camas para 2 personas con baño y regadera');
insert into TipoHabitación values('10','Gran Suite', 'Habitación con salón, comedor, oficina, baño y regadera todo un lujo');



insert into Habitación values('1','10', 'On', '6000',1);
insert into Habitación values('2','11', 'On', '10800',4);
insert into Habitación values('3','12', 'Off', '16000',6);
insert into Habitación values('4','13', 'On', '11500',5);
insert into Habitación values('5','14', 'On', '9000',3);
insert into Habitación values('6','15', 'Off', '25000',9);
insert into Habitación values('7','16', 'On', '22000',8);
insert into Habitación values('8','17', 'Off', '30000',10);
insert into Habitación values('9','18', 'On', '19000',7);
insert into Habitación values('10','19', 'On', '7500',2);



insert into Recepcionista values('1',3, 'Peter Parker', 'On','8167677766');
insert into Recepcionista values('2',4, 'Elizabeth Olsen', 'On','8176664354');
insert into Recepcionista values('3',11, 'Marcos Navaja', 'On','8156594865');
insert into Recepcionista values('4',12, 'Paul García', 'On','8136875463');
insert into Recepcionista values('5',14, 'John Cena', 'On','8198643435');
insert into Recepcionista values('6',18, 'Joaquín Martínez', 'On','8134246856');
insert into Recepcionista values('7',19, 'Jesus Reyes', 'On','8168765465');
insert into Recepcionista values('8',20, 'Martín Dominguez', 'On','8187564654');
insert into Recepcionista values('9',21, 'Carlos Ramírez', 'On','8163768798');
insert into Recepcionista values ('10',15, 'Michael Aristegui', 'On', '8168765468');


insert into Nacionalidad values('1','Mexico','Mexicana');
insert into Nacionalidad values('2','Argentina','Argentina');
insert into Nacionalidad values('3','Estados Unidos','Americana');
insert into Nacionalidad values('4','Perú','Peruana');
insert into Nacionalidad values('5','Alemania','Alemana');
insert into Nacionalidad values('6','España','Española');
insert into Nacionalidad values('7','Colombia','Colombiana');
insert into Nacionalidad values('8','Chile','Chilena');
insert into Nacionalidad values('9','Rusia','Rusa');
insert into Nacionalidad values('10','Canadá','Canadiense');

insert into Cliente values('1','Carlos González', 'Av Universidad #2453','8119548694',1);
insert into Cliente values('2','Scarlett Judith', 'Av Las Torres #205','811966898',3);
insert into Cliente values('3','Esmeralda Martínez', 'Av Santo domingo #1416','8186767689',1);
insert into Cliente values('4','Ezra Miller', 'San Lorenzo #5676','81657687',3);
insert into Cliente values('5','Sandra González', 'Antiguo camino al mezquital #1676','8164654975',8);
insert into Cliente values('6','Lionel Messi', 'Citadel #1676','8169876545',2);
insert into Cliente values('7','James Logan Maslow', 'Broadway Avenue #1857','8168645878',10);
insert into Cliente values('8','Alexis Sanchez', 'Cuauhtémoc #7525','8164654975',8);
insert into Cliente values('9','Fernando Torres', 'Cataluña #206','8119735686',6);
insert into Cliente values('10','Radamel Falcao', 'El Dorado #1687','8119689687',7);

--500 la noche --
insert into Alquiler values('1','2020/08/19','2020/08/21','8500',2,1,2);
insert into Alquiler values('2','2020/05/28','2020/05/30','7000',4,2,1);
insert into Alquiler values('3','2020/09/1','2020/09/3','31000',5,3,10);
insert into Alquiler values('4','2020/04/17','2020/04/18','10000',8,4,3);
insert into Alquiler values('5','2020/02/21','2020/02/22','22500',1,5,8);
insert into Alquiler values('6','2020/11/16','2020/11/18','11800',10,6,4);
insert into Alquiler values('7','2020/10/5','2020/10/8','28500',6,7,9);
insert into Alquiler values('8','2020/07/25','2020/07/28','13000',9,8,5);
insert into Alquiler values('9','2020/03/8','2020/03/10','17000',7,9,6);
insert into Alquiler values('10','2020/06/14','2020/06/15','19500',3,10,7);


select * from Empleado

execute sp_helpindex 'Empleado' 

create index IDXNOMBRE
on Empleado(nombre_trabajador)

select * from Cliente

execute sp_helpindex 'Cliente'

create index IndexNombre
on Cliente(nombre)