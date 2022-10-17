create database universidad_H3
use universidad_H3
create table materias(
id_mat integer identity primary key not null,
nombre_mat varchar(100)not null,
cod_mat varchar(100)not null)
 
create table estudiante(
id_est_cedula integer identity primary key not null,
nombre varchar(100) not null,
apellido varchar(100) not null,
sexo varchar(100) not null,
direccion varchar(200) not null,
telefono integer not null,
email varchar(50) not null,
edad integer not null,
id_esc integer not null,
foreign key (id_esc) references escuela (id_esc))


create table periodo(
id_per integer identity primary key not null,
ano_gestion integer not null,
semestre varchar(50) not null)

create table kardex(
id_kar integer identity primary key not null,
nota_num integer not null,
nota_alfabe varchar(100) not null,
estado varchar(10) not null,
id_mat integer not null,
id_est_cedula integer not null,
id_per integer not null, 
foreign key (id_mat) references materias(id_mat),
foreign key(id_est_cedula) references estudiante(id_est_cedula),
foreign key(id_per) references periodo(id_per))

create table escuela(
id_esc integer identity primary key not null,
nombre varchar(100) not null,
direccion varchar(100) not null)

select*
from escuela
INSERT INTO escuela (nombre, direccion) VALUES ('San Felipe Asturias II', 'Zona Illampu Av.
Prol. San Lorenzo');

INSERT INTO estudiante ( nombre, apellido, sexo, direccion, telefono, email,
edad, id_esc) VALUES
( 'Ximena', 'Arias Ballesteros', 'femenino', 'Av. 6 de Agosto', 79617575,
'xime@gmail.com', 25, 1);
INSERT INTO estudiante ( nombre, apellido, sexo, direccion, telefono, email,
edad, id_esc) VALUES
( 'Saul', 'Montes Valenzuela', 'masculino', 'Av. 6 de Agosto', 79617576,
'saul@gmail.com', 24, 1);
INSERT INTO estudiante ( nombre, apellido, sexo, direccion, telefono, email,
edad, id_esc) VALUES( 'Carla', 'Mavir Uria', 'femenino', 'Av. 6 de Agosto', 79617577, 'carla@gmail.com',
28, 1);
INSERT INTO estudiante ( nombre, apellido, sexo, direccion, telefono, email,
edad, id_esc) VALUES
( 'Joel', 'Castillo Fuentes', 'masculino', 'Av. 6 de Agosto', 79617578,
'joel@gmail.com', 21, 1);
INSERT INTO estudiante ( nombre, apellido, sexo, direccion, telefono, email,
edad, id_esc) VALUES
( 'Augusto', 'Copar Copar', 'femenino', 'Av. 6 de Agosto', 79617579,
'augusto@gmail.com', 20, 1);

INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Introduccion a la Arquitectura','ARQ-101');
INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Urbanismo y Diseno','ARQ-102');
INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Dibujo y Pintura Arquitectonico','ARQ-103');
INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Matematica discreta','ARQ-104');
INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Fisica Basica','ARQ-105');

INSERT INTO periodo (ano_gestion, semestre) VALUES (2016, 'Semestre 1');
INSERT INTO periodo (ano_gestion, semestre) VALUES (2016, 'Semestre 2');
INSERT INTO periodo (ano_gestion, semestre) VALUES (2017, 'Semestre 1');
INSERT INTO periodo (ano_gestion, semestre) VALUES (2017, 'Semestre 2');
INSERT INTO periodo (ano_gestion, semestre) VALUES (2018, 'Semestre 1');

insert into kardex(nota_num, nota_alfabe, estado, id_mat, id_est_cedula, id_per) values(51, 'cincuenta y uno', 'APROBADO',1,1,1)
insert into kardex(nota_num, nota_alfabe, estado, id_mat, id_est_cedula, id_per) values(31, 'treinta y uno', 'REPROBADO',2,2,2)
insert into kardex(nota_num, nota_alfabe, estado, id_mat, id_est_cedula, id_per) values(61, 'sesenta y uno', 'APROBADO',1,3,1)
insert into kardex(nota_num, nota_alfabe, estado, id_mat, id_est_cedula, id_per) values(41, 'cuarenta y uno', 'REPROBADO',2,4,2)
insert into kardex(nota_num, nota_alfabe, estado, id_mat, id_est_cedula, id_per) values(81, 'ochenta y uno', 'APROBADO',4,4,4)

select*
from kardex

select*
from escuela

select*
from estudiante

select*
from materias

select*
from periodo



select*
from estudiante
where sexo='masculino' and  edad >= 18

--2do
SELECT est.nombre, est.apellido
FROM kardex AS kar, estudiante AS est
WHERE kar.id_est_cedula = est.id_est_cedula AND
kar.nota_num >= 51;

--1ro
select est.nombre, est.apellido, kar.nota_num
from estudiante AS est
inner join kardex as kar on kar.id_est_cedula = est.id_est_cedula
where kar.nota_num>51

select est.nombre, est.apellido, kar.nota_num, est.edad
from estudiante AS est
inner join kardex as kar on kar.id_est_cedula = est.id_est_cedula
where kar.nota_num<51 and est.sexo = 'masculino'





select*
from estudiante
where edad>=18

