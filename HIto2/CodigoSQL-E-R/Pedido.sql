create database Pollos_Copa
use Pollos_Copa
create table cliente(
id_cliente integer primary key,
Nombre varchar(30), 
Apellido varchar (30),
edad integer,
domicilio varchar (30)
)

create table pedido(
id_pedido integer primary key,
articulo varchar(20), 
costo integer,
fecha varchar(20))

create table realiza_pedido(
id_detalle_pedido varchar(30) primary key,
id_cliente integer,
id_pedido integer,

foreign key (id_cliente) references cliente(id_cliente),
foreign key(id_pedido) references pedido(id_pedido))


insert into cliente(id_cliente, Nombre, Apellido, edad, domicilio) values (6547890, 'Juan', 'Miranda', 18, 'Zona Murillo')

insert into pedido(id_pedido, articulo, costo, fecha) values (02365, 'Libro', 50, '10/09/2022')

insert into realiza_pedido(id_detalle_pedido, id_cliente, id_pedido) values ('DF489DFG', 6547890, 02365)



select*
from pedido
drop table pedido
