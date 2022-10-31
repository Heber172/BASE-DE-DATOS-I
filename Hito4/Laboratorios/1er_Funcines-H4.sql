create database hito4_Funciones
use hito4_Funciones


--Manejo de funciones

--una funcion de agreagacion se ejecuta
--en la clausula SELECT
--ADEMAS siempre retorna un unico valor (una fila)
--es aplicado en un grupo de registro(a na columna de la tabla)

create table Estudiantes(
nombre varchar(25) not null,
id_est integer identity primary key not null,
apellido varchar(30) not null,
edad integer not null,
fono integer not null,
email varchar(100) not null,
direccion varchar(200) not null,
genero varchar(50) not null,
id_esc integer  ,
foreign key (id_esc) references escela(id_esc));

INSERT INTO estudiantes (nombre, apellido, edad, fono, email, direccion, genero, licencia_conducir, id_esc) values
   ('Miguel' ,'Gonzales Veliz', 20, 2832115, 'miguel@gmail.com', 'Av. 6 de Agosto', 'masculino', 0, 1),
   ('Sandra' ,'Mavir Uria', 25, 2832116, 'sandra@gmail.com', 'Av. 6 de Agosto', 'femenino', 0, 2),
   ('Joel' ,'Adubiri Mondar', 30, 2832117, 'joel@gmail.com', 'Av. 6 de Agosto', 'masculino', 1),
   ('Andrea' ,'Arias Ballesteros', 21, 2832118, 'andrea@gmail.com', 'Av. 6 de Agosto', 'femenino',2),
   ('Santos' ,'Montes Valenzuela', 24, 2832119, 'santos@gmail.com', 'Av. 6 de Agosto', 'masculino',1);

   --MIN el menor de todos
   --MAX mayor de tosods
  
  --Dterminar cuanto estudiantes registrados hay
  select est.*
  from Estudiantes as est;

  select COUNT(est.id_est)
  from Estudiantes as est;

  --determinar la minima edad de los estudiantes
  select min(est.edad) as min_edad
  from Estudiantes as est

  --determinar la cantidad de genero femenino
  select count(est.genero)
  from Estudiantes as est
  where est.genero = 'Femenino'

  --agregar una tabla
  alter table estudiantes add licencia_conducir bit

  INSERT INTO estudiantes (nombre, apellido, edad, fono, email, direccion, genero, licencia_conducir) values
   ('Ana' ,'Gonzales Veliz', 20, 2832115, 'ana@gmail.com', 'Av. 6 de Agosto', 'femenino', 1),
 ('Pepito' ,'Montes Valenzuela', 24, 2832119, 'pepito@gmail.com', 'Av. 6 de Agosto', 'masculino',0);
  
select count (est.id_est)
from Estudiantes as est


--Promedio de edades
    
select avg (est.edad)
from Estudiantes as est

--maxima edad
select max (est.edad)
from Estudiantes as est



--
select max (est.edad)
from Estudiantes as est
where est.genero = 'masculino' or est.genero = 'femenino'


--CONTENGA la palabra EL
select count (est.id_est)
from Estudiantes as est
where est.apellido like '%EL%' and est.genero = 'masculino' 

--Determinar cuántos estudiantes tienen una edad mayor  a 20 y menor a 30 de los estudiantes que tengan licencia de conducir.
select count (est.id_est)
from Estudiantes as est
where est.edad > 20 and est.edad < 30 and est.LICENCIA_CONDUCIR = 1 or est.LICENCIA_CONDUCIR = 0
--  ooooooooooooooooooooooooooo
select count (est.id_est)
from Estudiantes as est
where est.edad > 20 and est.edad < 30 and est.licencia_conducir between 0 and 1
--

select count (est.id_est)
from Estudiantes as est
where est.edad between 21 and 29 and est.licencia_conducir = 1 or est.LICENCIA_CONDUCIR = 0

--
create table escela(
id_esc integer identity primary key not null, 
nombre varchar(25) not null,
direccion varchar(100) not null,
turno varchar(20) not null);

insert into escela(nombre, direccion, turno) values('San Felipe Asturias II','Zona Illampu Av.Prol. San Lorenzo','Mañana'),('Felipe II','Av. 6 de Agosto','Tarde');

select* from escela
select* from Estudiantes