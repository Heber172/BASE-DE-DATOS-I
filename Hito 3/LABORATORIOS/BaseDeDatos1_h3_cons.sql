use universidad_H3

create table A(
letra varchar(1) primary key
)
create table B(
letra varchar(1) primary key
)

insert into A(letra) values('D')
insert into A(letra) values('E')
insert into A(letra) values('F')
insert into A(letra) values('G')
insert into A(letra) values('H')


insert into B(letra) values('A')

insert into B(letra) values('B')

insert into B(letra) values('E')

insert into B(letra) values('H')

SELECT ta. *
from B as ta

select tb, t
from A as t
inner join	B AS ta on t = ta.


create table numeros_A(
numero integer)

create table numeros_B(
numero integer)

insert into numeros_A(numero) values(1)

insert into numeros_A(numero) values(2)

insert into numeros_A(numero) values(3)

insert into numeros_A(numero) values(4)

insert into numeros_A(numero) values(5)

insert into numeros_A(numero) values(6)


insert into numeros_A(numero) values(7)




insert into numeros_B(numero) values(4)
insert into numeros_B(numero) values(5)

insert into numeros_B(numero) values(6)

insert into numeros_B	(numero) values(7)

insert into numeros_B(numero) values(8)
insert into numeros_A(numero) values(9)

select TA.numero, TB.numero
from numeros_B as TB
INNER JOIN numeros_A AS TA ON TA.numero = TB.numero

select*
from numeros_B

CREATE TABLE NOTA_P1(
NOTA1 INTEGER )

CREATE TABLE NOTA_P2(
NOTA2 INTEGER)

CREATE TABLE NOTA_P3(
NOTA3 INTEGER)

INSERT INTO NOTA_P1(NOTA1) VALUES(51), (40),(60),(75),(30)


INSERT INTO NOTA_P2(NOTA2)VALUES(60),(51),(100)

INSERT INTO NOTA_P3(NOTA3) values(20),(21),(23),(48),(51),(60)


SELECT NT1.NOTA1, NT2.NOTA2, NT3.NOTA3
FROM NOTA_P2 AS NT2
INNER JOIN NOTA_P1 AS NT1 ON NT1.NOTA1 = NT2.NOTA2
INNER JOIN NOTA_P3 AS NT3 ON NT1.NOTA1 = NT3.NOTA3 WHERE NOTA1 >50 AND NOTA2>50 AND NOTA3 >50



SELECT est.nombre, est.apellido, est.direccion
from estudiante as est
inner join escuela as esc on esc.id_esc = est.id_esc

where esc.nombre = 'San Felipe Asturias II'