use Hoteles

select * from Cliente
select * from Habitaci�n
select * from Empleado


select * from Habitaci�n inner join TipoHabitaci�n on Habitaci�n.id_habitacion = TipoHabitaci�n.id_Tipo

select * from Cliente inner join Nacionalidad on Cliente.id_cliente = Nacionalidad.id_nacionalidad

select * from Empleado left join Nacionalidad on Empleado.id_trabajador = Nacionalidad.id_nacionalidad

select * from Empleado left join Habitaci�n on Empleado.id_trabajador = Habitaci�n.id_habitacion

select * from Alquiler right join Empleado on Alquiler.id_alquiler = Empleado.id_trabajador

select * from Empleado right join Cliente on  Empleado.id_trabajador = Cliente.id_cliente

select Cliente.id_cliente, Cliente.nombre, Alquiler.fkHabitaci�n
from Cliente cross join Alquiler 

select Nacionalidad.id_nacionalidad, Nacionalidad.nacionalidad, Empleado.nombre_trabajador
from	Nacionalidad cross join Empleado

select * into empleado_new
from Empleado

select * from empleado_new

