use unifranzitos


select*
from jugadores as j
right join equipo as q on j.id_equipo = q.id_equipo;



select*
from jugadores as j
left join equipo as q on j.id_equipo = q.id_equipo;


create table Colegio(
nombre_col varchar(25) not null,
id_cole varchar(20) primary key not null);

insert into Colegio(nombre_col, id_cole) values('San Vicente De Paul', '23GF56SA2')

create table Persona(
nombre varchar(20) not null,
apellido varchar(30) not null,
ci integer,
cod_est varchar(20) primary key not null,
id_cole varchar(20) not null,

foreign key (id_cole)references Colegio(id_cole));


insert into Persona(nombre, apellido, cod_est, ci, id_cole) values('Heber', 'Miranda', 'EST134565',13409878,'23GF56SA2'), ('Juan', 'Mamani', 'EST456598',13546584,'23GF56SA2'), ('Daniel', 'Chura', 'EST1202003',46563202,'23GF56SA2');

create table notas(
id_notas varchar(20) primary key not null, 
PrimerBimestre integer not null,
SegundoBimestre integer not null,
TercerBimestre integer not null,
cod_est varchar(20) not null,
foreign key (cod_est) references Persona(cod_est));

insert into notas(id_notas,PrimerBimestre,SegundoBimestre,TercerBimestre,cod_est) values('P1232456',56,75,89,'EST134565'), ('S4512326',86,54,30,'EST456598'),('D45123100',49,51,63,'EST1202003');

select col.nombre_col,per.nombre,not1.PrimerBimestre
from Persona as per
inner join notas as not1 on per.cod_est = not1.cod_est
inner join Colegio as col on col.id_cole = per.id_cole
where not1.PrimerBimestre > 51

--Mostrar los jugadores que son del equipo equ-222 
select jug.nombres
from jugadores as jug
inner join equipo as eq on jug.id_equipo = eq.id_equipo
where eq.id_equipo = 'equ-222'



--Mostrar que jugadores (nombres, apellidos) que juegan en la sede de El Alto
select jug.nombres, jug.apellidos, cam.sede
from equipo as eq
inner join campeonato as cam on eq.id_campeonato = cam.id_campeonato
inner join jugadores as jug on jug.id_equipo = eq.id_equipo
where cam.sede = 'El Alto'



--Mostrar aquellos jugadores mayores o igual a 21 años que sean de la categoría VARONES.
select jug.nombres, jug.edad, eq.categoria
from jugadores as jug
inner join equipo as eq on jug.id_equipo = eq.id_equipo
where jug.edad >= 21 and eq.categoria = 'VARONES'



--Mostrar a todos los jugadores en donde su apellido empiece con la letra S. 
select jug.apellidos
from jugadores as jug
inner join equipo as eq on jug.id_equipo = eq.id_equipo
where jug.apellidos like 'S%'




--Mostrar que equipos forman parte del campeonato camp-111 y además sean de la categoría MUJERES
select eq.nombre_equipo, eq.categoria
from equipo as eq
inner join campeonato as cam on eq.id_campeonato = cam.id_campeonato
where cam.id_campeonato = 'camp-111' and eq.categoria = 'Mujeres'



--Mostrar el nombre del equipo del jugador con id_jugador igual a jug-333 
select eq.nombre_equipo, jug.id_jugador
from jugadores as jug
inner join equipo as eq on jug.id_equipo = eq.id_equipo
where jug.id_jugador = 'jug-333'




--Mostrar el nombre del campeonato del jugador con id_jugador igual a jug-333 
select cam.id_campeonato, jug.id_jugador
from jugadores as jug
inner join equipo as eq on jug.id_equipo = eq.id_equipo
inner join campeonato as cam on eq.id_campeonato = cam.id_campeonato
where jug.id_jugador = 'jug-333'




--Crear una consulta SQL que maneje las 3 tablas de la base de datos
select cam.sede, jug.nombres, jug.edad, eq.nombre_equipo
from jugadores as jug
inner join equipo as eq on eq.id_equipo = jug.id_equipo
inner join campeonato as cam on cam.id_campeonato = eq.id_campeonato
where eq.nombre_equipo = '484 Not found' and jug.edad >= 20 and cam.sede = 'El Alto'



--¿Qué estrategia utilizaría para determinar cuántos equipos inscritos hay?
select count(eq.nombre_equipo)
from equipo as eq
inner join campeonato as cam on  eq.id_campeonato = cam.id_campeonato



--¿Qué estrategia utilizaría para determinar cuántos jugadores pertenecen a la categoría VARONES o Categoría MUJERES. 
select count(jug.nombres)
from jugadores as jug
inner join equipo as eq on eq.id_equipo = jug.id_equipo
where eq.categoria = 'VARONES'



select *
from campeonato
select *
from jugadores
select*
from equipo

