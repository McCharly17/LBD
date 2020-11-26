use Hoteles

alter table Empleado alter column id_trabajador int not null;
alter table TipoHabitaci�n alter column id_tipo int not null;
alter table Habitaci�n alter column id_habitacion int not null;
alter table Habitaci�n alter column fkTipo int not null;

alter table Empleado 
add constraint PK_IDTRABAJADOR primary key (id_trabajador);

alter table TipoHabitaci�n
add constraint PK_IDTIPO primary key (id_tipo);

alter table Habitaci�n
add constraint PK_IDHABITACION primary key (id_habitacion);

alter table Habitaci�n
add constraint FK_TIPO foreign key (fkTipo) 
references TipoHabitaci�n (id_tipo);

alter table Empleado 
add constraint UC_Trabajador_Telefono unique (tel�fono); 

alter table Habitaci�n 
add constraint CH_Estado CHECK (Estado='On' OR Estado='Off') 