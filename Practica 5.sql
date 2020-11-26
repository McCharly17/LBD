use Hoteles

alter table Empleado alter column id_trabajador int not null;
alter table TipoHabitación alter column id_tipo int not null;
alter table Habitación alter column id_habitacion int not null;
alter table Habitación alter column fkTipo int not null;

alter table Empleado 
add constraint PK_IDTRABAJADOR primary key (id_trabajador);

alter table TipoHabitación
add constraint PK_IDTIPO primary key (id_tipo);

alter table Habitación
add constraint PK_IDHABITACION primary key (id_habitacion);

alter table Habitación
add constraint FK_TIPO foreign key (fkTipo) 
references TipoHabitación (id_tipo);

alter table Empleado 
add constraint UC_Trabajador_Telefono unique (teléfono); 

alter table Habitación 
add constraint CH_Estado CHECK (Estado='On' OR Estado='Off') 