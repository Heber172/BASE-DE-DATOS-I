create database ejemplo
use ejemplo

create table datos(
nombre varchar(15),
apellido varchar(30),
CI integer PRIMARY KEY)

insert into datos(nombre, apellido, CI) values ('Heber', 'Mollericona', 13409189)
insert into datos(nombre, apellido, CI) values ('juan', 'Mamani', 13465987)
insert into datos(nombre, apellido, CI) values ('Carlos', 'Apaza', 467891)

select* 
from datos

drop table datos

drop database ejemplo