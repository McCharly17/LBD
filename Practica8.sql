use Hoteles

select * from Cliente
select * from Habitación
select * from Empleado


select * from Habitación inner join TipoHabitación on Habitación.id_habitacion = TipoHabitación.id_Tipo

select * from Cliente inner join Nacionalidad on Cliente.id_cliente = Nacionalidad.id_nacionalidad

select * from Empleado left join Nacionalidad on Empleado.id_trabajador = Nacionalidad.id_nacionalidad

select * from Empleado left join Habitación on Empleado.id_trabajador = Habitación.id_habitacion

select * from Alquiler right join Empleado on Alquiler.id_alquiler = Empleado.id_trabajador

select * from Empleado right join Cliente on  Empleado.id_trabajador = Cliente.id_cliente

select Cliente.id_cliente, Cliente.nombre, Alquiler.fkHabitación
from Cliente cross join Alquiler 

select Nacionalidad.id_nacionalidad, Nacionalidad.nacionalidad, Empleado.nombre_trabajador
from	Nacionalidad cross join Empleado

select * into empleado_new
from Empleado

select * from empleado_new

