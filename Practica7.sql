use Hoteles

select top (2) [id_trabajador]
	,[nombre_trabajador]
	from [dbo].[Empleado]

select top (1) [id_alquiler]
	,[fkCliente]
	,[costoTotal]
	from [dbo].[Alquiler]

select top (5) [id_cliente]
	,[nombre]	
	,[fkNacionalidad]
	from [dbo].[Cliente]

select top (2) [id_recepcionista]
	,[id_trabajador]
	,[Nombre]
	from [dbo].[Recepcionista]

select top (5) [nombre]
	,[descripcion]
	from [dbo].[TipoHabitación]

select * from Empleado where sueldo in ('10000');
select * from Habitación where Estado in ('Off');
select * from Cliente where fkNacionalidad in (1);
select * from Alquiler where fkRecepcionista in (2);
select * from Recepcionista where Estado in ('On');

select fkNacionalidad, count(*) from Cliente
group by fkNacionalidad

select Sueldo, count(*) from Empleado
group by Sueldo

select Estado, count(*) from Habitación
group by Estado

select fkRecepcionista, count(*) from Alquiler
group by fkRecepcionista

select Estado, count(*) from Recepcionista
group by Estado

select fkNacionalidad, COUNT(fkNacionalidad) as Cantidad
from Cliente 
group by fkNacionalidad 
having count(*)>1 

select Estado, count(Estado) as Cantidad
from Recepcionista
group by Estado
having count(*)>1

select fkRecepcionista, count(fkRecepcionista) as Cantidad
from Alquiler
group by fkRecepcionista
having count(*)>1

select Estado, count(Estado) as Cantidad 
from Habitación
group by Estado
having count (*)>2

select Sueldo, count(Sueldo) as Cantidad 
from Empleado
group by Sueldo
having count(*)>3

select nombre, UPPER(nombre) as Mayus
from Cliente 

select fechaHoraEntrada, fechaHoraSalida, DATEDIFF(DAY, fechaHoraEntrada, fechaHoraSalida) as DIAS
from Alquiler