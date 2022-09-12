create database Defensa_Hito2

use Defensa_Hito2

create table celular(
modelo varchar(15)not null,
marca varchar(15) NOT NULL,
imei integer primary key not null,
precio varchar(10) not null,
Color varchar(10) not null,

)

insert into celular(modelo, marca, imei, precio, Color) values ('A12', 'SAMSUNG', 56412368, '1500 Bs', 'Negro')

select*
from celular


create table FACTURA(
NIT integer NOT NULL,
NOMBRE_COMERICIAL VARCHAR(10) NOT NULL,
Nro_Comprobante integer PRIMARY KEY NOT NULL,
Nombre VARCHAR (20)NOT NULL,
CI INTEGER NOT NULL,
DOMICILIO VARCHAR(20) NOT NULL,
IMPORTE_A_PAGAR VARCHAR(10)NOT NULL)

INSERT INTO FACTURA(NIT, NOMBRE_COMERICIAL, Nro_Comprobante, Nombre, CI, DOMICILIO, IMPORTE_A_PAGAR) VALUES (4563200, 'Amazon', 125403200, 'Juan', 456328, 'Zona Murillo', '300 bs')

SELECT*
FROM FACTURA

CREATE TABLE APLICACION(
id_app integer primary key NOT NULL,
nombre_app varchar (15) NOT NULL,
anho_de_publicación integer NOT NULL,
soporte varchar (20) NOT NULL)

insert into  APLICACION (id_app,nombre_app,anho_de_publicación,soporte) values (5487652,'Spotify',2000,'ios-android') 
insert into  APLICACION (id_app,nombre_app,anho_de_publicación,soporte) values (6845648,'WhatsApp',2012,'ios-android') 
insert into  APLICACION (id_app,nombre_app,anho_de_publicación,soporte) values (7797213,'Goowii',2020,'ios') 
insert into  APLICACION (id_app,nombre_app,anho_de_publicación,soporte) values (8496389,'Miavi',2021,'android') 

select *
from APLICACION
insert into  APLICACION (id_app,nombre_app,anho_de_publicación,soporte) values (58698147,'Messenger',2005,'ios-android') 
drop table APLICACION

create table Cliente(
ci_cliente integer primary key not null,
Nombre varchar(20) not null,
Apellido varchar (30) not null,
Edad integer  not null,
num_cel integer not null,
Domicilio varchar (40) not null);

create table pedido(
cod_compra Varchar (15) primary key not null,
nom_producto varchar (20) not null,
precio varchar (10) not null,
fecha varchar (10) not null);

create table Detalles_de_pedido (
id_pedido integer primary key not null,
nombre_cliente varchar (20) not null,

ci_cliente integer not null,
cod_compra varchar(15) not null,


foreign key (ci_cliente) references Cliente (ci_cliente),
foreign key (cod_compra) references pedido (cod_compra))

insert into Cliente(ci_cliente,Nombre,Apellido,Edad,num_cel,Domicilio) values (4659587,'Juan','Quipe Quispe',25,76985436,'Z. Sur') 
insert into Cliente(ci_cliente,Nombre,Apellido,Edad,num_cel,Domicilio) values (9865348,'Miguel','Quipe Apaza',35,78659134,'Z. Norte') 
insert into Cliente(ci_cliente,Nombre,Apellido,Edad,num_cel,Domicilio) values (8755641,'Adrian','Quipe Tola',16,79854362,'Z. Oeste') 
insert into Cliente(ci_cliente,Nombre,Apellido,Edad,num_cel,Domicilio) values (98445687,'Crhistian','Tola Tola',17,78542635,'Z. Este') 
insert into pedido(cod_compra,nom_producto,precio,fecha) values ('799f67b67','Libro','25 Bs.','20/09/2021') 
insert into pedido(cod_compra,nom_producto,precio,fecha) values ('98h9845h8p','Ropa','50 Bs.','18/06/2020') 
insert into pedido(cod_compra,nom_producto,precio,fecha) values ('887f587r658y','Libro','20 Bs.','18/06/2020')
insert into pedido(cod_compra,nom_producto,precio,fecha) values ('658t8877g563jh','Ropa','60 Bs.','18/06/2020')
insert into Detalles_de_pedido(id_pedido,nombre_cliente,ci_cliente,cod_compra) values (89452476,'Juan Quispe',4659587,'799f67b67') 
insert into Detalles_de_pedido(id_pedido,nombre_cliente,ci_cliente,cod_compra) values (65763258,'Miguel Quispe',9865348,'98h9845h8p') 
insert into Detalles_de_pedido(id_pedido,nombre_cliente,ci_cliente,cod_compra) values (79854687,'Adrian TQuispe',8755641,'887f587r658y') 
insert into Detalles_de_pedido(id_pedido,nombre_cliente,ci_cliente,cod_compra) values (97987558,'Crhistian Tola',98445687,'658t8877g563jh') 

select*
from Cliente
where Edad >18

select*
from pedido


select pe
from Detalles_de_pedido


drop table Cliente