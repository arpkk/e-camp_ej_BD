create table directorio_telefonico(
nombre VARCHAR(25), --jorge
apellido VARCHAR(25), -- carmona
numero_telefonico VARCHAR(8), --7474747
direccion VARCHAR(30), --hgsdhdshds
edad NUMBER, -- 67
PRIMARY KEY(numero_telefonico)
);

create table agenda(
nick VARCHAR(25), -- papi
numero_telefonico VARCHAR(8),
FOREIGN KEY (numero_telefonico) REFERENCES directorio_telefonico(numero_telefonico)
);

--INSERT
insert into directorio_telefonico(nombre,apellido,numero_telefonico,direccion,edad)
values ('Pedro','Perez','98746374','las carmelitas 12',45);

insert into agenda (nick,numero_telefonico)values('tio pepe','98746374');
insert into agenda (nick,numero_telefonico)values('tio juancho','1111111');