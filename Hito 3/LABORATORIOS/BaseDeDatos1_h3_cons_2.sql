use universidad_H3

create table nombre_dba1(
sis_est varchar(20) primary key not null,
nombre varchar(20) not null)

create table nombre_dba2(
sis_est varchar(20) primary key not null,
nombre varchar(20) not null)


insert into nombre_dba1(sis_est, nombre) values('SIS13467852', 'William'), ('SIS46512003', 'Victor'), ('SIS10236541', 'Mijail'), ('SIS4512306', 'Karen'), ('SIS45236120', 'Brayan'),('SIS4512030', 'Ariel')


insert into nombre_dba2(sis_est, nombre) values ('SIS145107852', 'Samuel'), ('SIS46512003', 'Victor'), ('SIS45236120', 'Brayan'),('SIS451203600', 'Ana')

 select Nb1.nombre, nb2.nombre
 from nombre_dba1 as Nb1
 inner join nombre_dba2 as nb2 on Nb1.sis_est = nb2.sis_est 

 --que estudiate()nombre, apellido y direccion)forman parte de ña escela ""san ......"
 --1er paso: identificar que campos tengo qe mostrar
 --nobre, apellido, direcion

 --2do paso: en que tablas estan estos campos
 --estudiantes
 --escuela

 --3er paso: estas tablas estan realacionados entre si?
 --inner join

SELECT est.nombre, est.apellido, est.direccion
from estudiante as est
inner join escuela as esc on esc.id_esc = est.id_esc
where esc.nombre = 'San Felipe Asturias II'



SELECT est.nombre, est.apellido, est.edad, est.sexo, esc.direccion
from estudiante as est
inner join escuela as esc on esc.id_esc = est.id_esc
where esc.nombre = 'San Felipe Asturias II' 
	and est.edad >21 
	and est.sexo = 'Masculino'
	


	
SELECT est.nombre, est.apellido
from estudiante as est
inner join kardex as kar on kar.id_est_cedula = est.id_est_cedula
inner join materias as mat on kar.id_mat = mat.id_mat
where kar.nota_num >= 51 and mat.nombre_mat = 'Fisica Basica'



select est.nombre, est.apellido
from estudiante AS est
inner join kardex as kar on kar.id_est_cedula = est.id_est_cedula
where kar.nota_num>=51 and est.edad >= 25

select per.semestre, per.ano_gestion
from estudiante as est
inner join kardex as kar on est.id_est_cedula = kar.id_est_cedula
inner join periodo as per on per.id_per = kar.id_per
where est.id_est_cedula = 1




SELECT est.nombre, est.apellido
from estudiante as est
inner join kardex as kar on kar.id_est_cedula = est.id_est_cedula
inner join materias as mat on kar.id_mat = mat.id_mat
where kar.nota_num >= 51 and 


select est.nombre, est.apellido, kar.nota_num, est.edad
from estudiante AS est
inner join kardex as kar on kar.id_est_cedula = est.id_est_cedula
where kar.nota_num<51 and est.edad >= 25

select mat.nombre_mat, est.nombre, est.apellido
from estudiante as est
inner join kardex as kar on est.id_est_cedula = kar.id_est_cedula
inner join periodo as per on per.id_per = kar.id_per
inner join materias as mat on mat.id_mat = kar.id_mat
where est.id_est_cedula = 1