-- CREATE DATABASE peluMascotas;
-- USE 
CREATE TABLE IF NOT EXISTS dueno
(
DNI int not null ,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
Telefono varchar(16) not null, 
Direccion varchar(50) not null,
PRIMARY KEY (DNI)
);

CREATE TABLE  IF NOT EXISTS perro
(
ID_Perro int not null auto_increment,
Nombre varchar(50) not null,
Fecha_nac date not null,
sexo varchar(1) not null, 
DNI_dueno int not null,
PRIMARY KEY (ID_Perro),
CONSTRAINT dni_FK FOREIGN KEY (DNI_dueno) REFERENCES dueno(DNI)
);

CREATE TABLE  IF NOT EXISTS historial
(
ID_Historial int not null auto_increment,
Fecha date not null,
Descripcion varchar(100) not null, 
Monto float not null,
Perro int not null,
PRIMARY KEY (ID_Historial),
CONSTRAINT historial_FK FOREIGN KEY (Perro) REFERENCES perro(ID_Perro)
);
-- Inserciones de dueños de perros de pruebas
INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (28470361, 'Cesar', 'Ruscica', '1132924558', 'Mataco 1779, Libertad');
INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (38471522, 'Carlos', 'Lopez', '1125458746', '9 de Julio 1549, Castelar');
INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (42000145, 'Maria', 'Gomez', '1112459674', 'Almafuerte 179, San Justo');
INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (25489765, 'Carla', 'Gonzalez', '1136854519', 'Zufriategui 854, Ituzaingo');
INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (25149783, 'Enrique', 'Fernandez', '1184951675', 'Av. Rivadavia 11658, San Antonio de Padua');
-- Inserciones de perros de pruebas
INSERT INTO perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_dueno) VALUES (null, 'toto', '2021-12-24', 'm', 28470361);
INSERT INTO perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_dueno) VALUES (null, 'Oliver', '2021-05-20', 'm', 38471522);
INSERT INTO perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_dueno) VALUES (null, 'kiara', '2008-03-06', 'h', 42000145);
INSERT INTO perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_dueno) VALUES (null, 'boby', '2010-12-22', 'm', 25489765);
INSERT INTO perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_dueno) VALUES (null, 'Firulais', '2013-11-02', 'm', 25489765);
INSERT INTO perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_dueno) VALUES (null, 'manchita', '2010-02-15', 'h', 25149783);
INSERT INTO perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_dueno) VALUES (null, 'chiquita', '2009-04-01', 'h', 25149783);
-- Inserciones de historiales de pruebas
INSERT INTO historial (ID_Historial, Fecha, Descripcion, Monto, Perro) VALUES (null, '2022-08-01', 'Lavado y baño de crema con Aloe Vera', 850.5, 2);

SELECT * FROM historial;