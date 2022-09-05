create database COMPRA
use COMPRA


create table DetallesDelVehiculo(
Modelo_vehiculo integer not null,
Marca_vehiculo varchar(20)not null,
precio varchar (20)not null,
num_placa varchar (10) not null,
num_serie_vehiculo varchar (20) primary key not null
)

create table DatosCliente
(
CI_cliente integer primary key not null,
nom_cliente varchar (50) not null,
num_Celular integer not null,
email varchar (30) not null,
Domicilio varchar (50) not null
)
USE COMPRA
create table DetallesCompra(
COD_COMPRA integer primary key not null,
num_serie_vehiculo varchar (20) not null,
CI_cliente integer not null , 
precio varchar(20) not null,
foreign key (CI_cliente) references DatosCliente(CI_cliente),
 foreign key (num_serie_vehiculo) references DetallesDelVehiculo(num_serie_vehiculo),
)
SELECT*
FROM DetallesCompra


insert into DetallesDelVehiculo(Modelo_vehiculo, Marca_vehiculo, precio, num_placa, num_serie_vehiculo) values (2018,'Toyota', '15000 $', '4512GHY', '2FGKJ48TOYO954369')
insert into DetallesDelVehiculo(Modelo_vehiculo, Marca_vehiculo, precio, num_placa, num_serie_vehiculo) values (2015,'Nissan','10000$','3096IKJ','6YRHU57EFSD482651')
insert into DetallesDelVehiculo(Modelo_vehiculo, Marca_vehiculo, precio, num_placa, num_serie_vehiculo) values (2014,'Nissan','13000$','2586IJK','6TGRF58UYTC963258')


insert into DatosCliente(CI_cliente,nom_cliente,num_Celular,email,Domicilio) values (56843698,'Jhon Rambo',75869214,'hombremetralleta@gmail.com','Z.Natividad, Calle 7')
insert into DatosCliente(CI_cliente,nom_cliente,num_Celular,email,Domicilio) values (45896216,'Arnold Schwarzenegger',74523615,'hastalavistababy@gmail.com','Z.Mururata, C. Santiago')
insert into DatosCliente(CI_cliente,nom_cliente,num_Celular,email,Domicilio) values (4985712,'Jose Maria',79856124,'conflictodegenero@gmail.com','Z.Jesus, C. Espiritu Santo')

insert into DetallesCompra(COD_COMPRA,num_serie_vehiculo,CI_cliente,precio) values (545478977,'2FGKJ48TOYO954369',56843698,'15000 $')
insert into DetallesCompra(COD_COMPRA,num_serie_vehiculo,CI_cliente,precio) values (58692100,'6YRHU57EFSD482651',45896216,'10000$')
insert into DetallesCompra(COD_COMPRA,num_serie_vehiculo,CI_cliente,precio) values (8756984,'6TGRF58UYTC963258',4985712,'13000$')

