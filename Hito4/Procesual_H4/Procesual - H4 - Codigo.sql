use unifranzitos

select*
from jugadores

--Mostrar que jugadores que formen parte del equipo equ-333
select jug.*
from jugadores as jug
inner join equipo as eq on jug.id_equipo =eq.id_equipo
where eq.id_equipo = 'equ-333'

--Crear una función que permita saber cuántos jugadores están inscritos
create function F1_CantidadJugadores()
returns integer as
begin
	declare @resultado integer = 0
	select @resultado = count(jug.id_jugador)
	from jugadores as jug

	return @resultado
end

select dbo.F1_CantidadJugadores() as 'Jugadores inscritos'


-- Crear una función que permita saber cuántos jugadores están inscritos y que sean de la categoría varones o mujerescreate function  F2_CantidadJugadoresParam(@categoria varchar(20))returns integer asbegin	declare @resultado integer = 0	select @resultado = count(jug.id_jugador)	from jugadores as jug	inner join equipo as eq on eq.id_equipo = jug.id_equipo	where eq.categoria = @categoria	return @resultadoendselect dbo.F2_CantidadJugadoresParam('Mujeres') as 'Registrados'--Crear una función que obtenga el promedio de las edades mayores a una cierta edadcreate function F3_PromedioEdades(@categoria varchar(20), @edad integer)returns  integer asbegin	declare @resultado integer = 0	select @resultado = avg(jug.edad)	from jugadores as jug	inner join equipo as eq on jug.id_equipo =eq.id_equipo	where eq.categoria = @categoria and jug.edad > @edad	return @resultadoendselect dbo.F3_PromedioEdades('mujeres', 21) as 'Promedio de edad'--Crear una función que permita concatenar 3 parámetros.alter function  F4_ConcatItems(@categoria varchar(20), @id_equipo varchar(20), @id_camp varchar(20))returns varchar(60) asbegin	declare @resultado varchar(100)	select  @resultado=CONCAT(jug.nombres,' es del quipo ', eq.nombre_equipo, ' , juega en la sede ', cam.sede)	from jugadores as jug	inner join equipo as eq on eq.id_equipo = jug.id_equipo	inner join campeonato as cam on eq.id_campeonato = cam.id_campeonato	where jug.id_equipo = @id_equipo and cam.id_campeonato = @id_camp and eq.categoria = @categoria 	return @resultadoendselect dbo.F4_ConcatItems('Varones', 'equ-222', 'camp-111') as 'Resultado'--Generar Serie Fibonaccialter FUNCTION F4_Fibonacci(@Cantidad integer)
	RETURNS @numbers TABLE(NUMBER int)
	AS
	BEGIN
	DECLARE @n1 integer = 0,@n2 integer =1,@i integer=0,@temp integer
		Insert Into @numbers Values(@n1),(@n2)
	WHILE (@i<=@Cantidad-2)
	BEGIN 
		Insert Into @numbers 
		Values(@n2+@n1)

		set @temp = @n2
		Set @n2 = @n2 + @n1
		Set @n1 = @temp
		Set @i += 1
	END	
RETURN 
END;select* from dbo.F4_Fibonacci(5)select*from jugadoresselect*
from equiposelect*from campeonato