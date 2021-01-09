use Hoteles

create procedure sp_Ticket (@id_alquiler int, @nombre varchar (20), @telefeno varchar(20), @DIAS int, @fkHabitación int, @costoTotal money)
as
begin

select * from Ticket where id_alquiler = @id_alquiler and telefono = @telefeno and DIAS = @DIAS and fkHabitación = @fkHabitación and costoTotal = @fkHabitación; 
print 'realizado correctamente'; 

end 

exec sp_Ticket '1', 'Carlos González', '8119548694', '2', '2', '8500.00' 

select * from RegistrosClientes

create procedure sp_RegistrosClientes (@id_cliente int, @nombre varchar(170), @nacionalidad varchar (50), @telefono varchar (20))
as
begin 

select * from RegistrosClientes where id_cliente = @id_cliente and nombre = @nombre and @nacionalidad = nacionalidad and telefono = @telefono;

end

create procedure sp_Menú (@id_habitación int, @nombre varchar (30), @descripcion text, @costo money) 
as 
begin

select * from Menú where id_habitacion = @id_habitación and nombre = @nombre and descripcion = @descripcion and costo = @costo;

end

create procedure sp_HabitacionesDisp (@Estado char (3), @Conteo int)
as
begin 

select * from HabitacionesDisp where Estado = @Estado and Conteo = @Conteo; 

end 

create procedure sp_EmpleadosyRecepcionistas (@id_recepcionista int, @Nombre varchar (20), @Sueldo int)
as 
begin 

select * from EmpleadosyRecepcionistas where id_recepcionista = @id_recepcionista and Nombre = @Nombre and sueldo = @Sueldo;

end

create function Total(@costoTotal int ) returns int 
as 

begin 

declare @DIAS int 

select @DIAS = (500 + @costoTotal) from Ticket where costoTotal = @costoTotal 
return @DIAS 

end

create function Mayus(@Nombre varchar(170)) returns varchar(170)
as 
begin 

return (select UPPER(@Nombre))

end


create trigger BorradoEmp 
on Empleado  
instead of delete 
as
begin 
	delete Empleado
	from Empleado
	join deleted
	on Empleado.id_trabajador = deleted.id_trabajador

end

create trigger EmpleadoUpdate
on Empleado 
for Update
as
begin 
	 select * from deleted 
	 select * from inserted
end 

update Empleado set nombre_trabajador = 'María de la Rosa', dirección = 'Av. Constituyentes', teléfono = '8106546323', sueldo = '8000' 
where id_trabajador = 13

