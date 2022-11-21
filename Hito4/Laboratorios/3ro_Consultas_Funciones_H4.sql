use hito4_Funciones


--VERSION 1
alter function Op(@num1 integer, @num2 integer, @action varchar(20))
returns integer as
begin
	declare @response integer  = 0;
	if(@action = 'suma')
	begin
		set @response = @num1+@num2;

	end
	if(@action = 'resta')
	begin
		set @response = @num1-@num2;

	end
	if(@action = 'multiplicacion')
	begin
		set @response = @num1*@num2;

	end
	if(@action = 'division')
	begin
		set @response = @num1/@num2;

	end 
	return @response;
end


select dbo.Op(54, 12, 'suma') as SUMA 

select dbo.Op(54, 12, 'resta') as RESTA 

select dbo.Op(54, 12, 'multiplicacion') as MULTIPLICACION 

select dbo.Op(12, 5, 'division') as DIVISION 




--VERSION 2 MEJOR
CREATE function Op2(@num1 integer, @num2 integer, @action varchar(20))
returns integer as
begin
	if(@action = 'suma')
		return  @num1+@num2;

	if(@action = 'resta')
		return   @num1-@num2;
	
	if(@action = 'multiplicacion')
		return @num1*@num2;

	if(@action = 'division')
		return @num1/@num2;
	 
	RETURN  1;
end

select dbo.Op2(54, 12, '') as SUMA 


--VERSION 3 CASE
CREATE function Op3(@num1 integer, @num2 integer, @action varchar(20))
returns integer as
begin
	if(@action = 'suma')
		return  @num1+@num2;

	if(@action = 'resta')
		return   @num1-@num2;
	
	if(@action = 'multiplicacion')
		return @num1*@num2;

	if(@action = 'division')
		return @num1/@num2;
	 
	RETURN  1;
end




--FUNCIONES DE AGREGACION Y FUNCION PROPIOS
SELECT COUNT(EST.id_est)
FROM Estudiantes AS EST
WHERE EST.edad > 25

--CREAR UNA FUNCION QUE PERMITA SABER LA CANTIDAD DE ESTUDIANTES MAYORES A 25
CREATE FUNCTION EJEMPLO1(@edad integer)
RETURNS INTEGER AS
BEGIN
	
	DECLARE @RESPONSE INTEGER = 0
	
		SELECT @RESPONSE = COUNT(EST.id_est)
		FROM Estudiantes AS EST
		WHERE EST.edad > @edad;


	return @RESPONSE

END;

SELECT dbo.EJEMPLO1(25)



--MAYOR A CIERTA EDAD FEMENINO QUE FORMA PARTE DE LA ESCUELA
CREATE FUNCTION EJEMPLO2(@edad integer,@genero varchar(25))
RETURNS INTEGER AS
BEGIN
	
	DECLARE @RESPONSE INTEGER = 0
	
		SELECT @RESPONSE = COUNT(EST.id_est)
		FROM Estudiantes AS EST
		inner join Escuela as esc on esc.id_esc = est.id_esc
		WHERE EST.edad > @edad and esc.nombre = 'Andres Bello' and est.genero = @genero;


	return @RESPONSE

END;
 select dbo.EJEMPLO2(20, 'Femenino')



 
 --ultimo de la lista
 CREATE FUNCTION EJEMPLO3()
RETURNS INTEGER AS
BEGIN
	
	DECLARE @RESPONSE INTEGER = 0
	
	
	SELECT @RESPONSE = MAX(EST.id_est)
	FROM Estudiantes AS est
	

	return @RESPONSE

END;

SELECT EST.*
FROM Estudiantes AS EST
WHERE EST.id_est = dbo.EJEMPLO3();

--FIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIINNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN