use Hoteles

select * from 
select * from Nacionalidad

create view Ticket 
as
select id_alquiler, nombre, telefono,DATEDIFF(DAY, fechaHoraEntrada, fechaHoraSalida) as DIAS, fkHabitación, costoTotal
from Alquiler
join Cliente
on Alquiler.fkCliente = Cliente.id_cliente

select * from Ticket

create view EmpleadosyRecepcionistas
as 
select id_recepcionista, Nombre, sueldo  
from Empleado
join Recepcionista
on Empleado.id_trabajador = Recepcionista.id_trabajador

create view Menú 
as 
select id_habitacion, nombre, descripcion, costo
from Habitación
join TipoHabitación
on Habitación.fkTipo = TipoHabitación.id_Tipo

select * from Menú 

create view RegistrosClientes
as
select id_cliente, nombre, nacionalidad, telefono
from Cliente
join Nacionalidad
on Cliente.fkNacionalidad = Nacionalidad.id_nacionalidad

select * from RegistrosClientes

create view HabitacionesDisp
as 
select Estado, count(*) as Conteo from Habitación
group by Estado

select * from HabitacionesDisp