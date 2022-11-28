use unifranzitos

select*
from jugadores

--Mostrar que jugadores que formen parte del equipo equ-333
select jug.*
from jugadores as jug
inner join equipo as eq on jug.id_equipo =eq.id_equipo
where eq.id_equipo = 'equ-333'

--Crear una funci�n que permita saber cu�ntos jugadores est�n inscritos
create function F1_CantidadJugadores()
returns integer as
begin
	declare @resultado integer = 0
	select @resultado = count(jug.id_jugador)
	from jugadores as jug

	return @resultado
end

select dbo.F1_CantidadJugadores() as 'Jugadores inscritos'


-- Crear una funci�n que permita saber cu�ntos jugadores est�n inscritos y que sean de la categor�a varones o mujeres
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
END;
from equipo