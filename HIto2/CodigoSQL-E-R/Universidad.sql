create database universidad

use universidad

create table estudiantes1(
nombre varchar (15) not null,
apellido varchar (30) not null,
genero varchar (15) not null,
edad integer not null,
semestre integer not null,
carrera varchar (25) not null,
Cod_estudiante varchar (20)PRIMARY KEY not null)

insert into estudiantes1 (nombre, apellido, genero, edad, semestre, carrera, Cod_estudiante) values ('Brayan', 'Apaza', 'masculino', 21, 2, 'Ingenieria de Sistemas', 'SIS14895189')

CREATE table trabajadores1(
rol_trabajo varchar (20) not null,
nombre varchar(20) not null,
apellido varchar(30) not null,
cod_trabajo varchar(20) PRIMARY KEY not null,
edad integer not null,
genero varchar(10) not null
)

insert into trabajadores1(rol_trabajo, nombre, apellido, cod_trabajo, edad, genero ) values ('Contador', 'Maria', 'Miranda', 'CON468951', 30, 'Femenino')

create table detalles(
nombre varchar (15),
apellido varchar(30),
ci integer primary key not null,
codigo_estudiante varchar(20),
codigo_trabajador varchar(20) ,
ocupacion varchar(15) not null

foreign key (codigo_estudiante) references estudiantes1 (Cod_estudiante),
foreign key (codigo_trabajador) references trabajadores1(cod_trabajo)
)

insert into detalles(nombre, apellido, ci, codigo_trabajador, ocupacion) values ('Juan', 'Maldini', 564891, 'DOC564891', 'Trabajador')

select* 
from estudiantes1

drop table trabajadores1