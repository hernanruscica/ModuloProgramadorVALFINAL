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
-- Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.
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
-- Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.
INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (28470361, 'Cesar', 'Ruscica', '1132924558', 'Mataco 1779, Libertad');
INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (38471522, 'Carlos', 'Lopez', '1125458746', '9 de Julio 1549, Castelar');
INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (42000145, 'Maria', 'Gomez', '1112459674', 'Almafuerte 179, San Justo');
INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (25489765, 'Carla', 'Gonzalez', '1136854519', 'Zufriategui 854, Ituzaingo');
INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (25149783, 'Enrique', 'Fernandez', '1184951675', 'Av. Rivadavia 11658, San Antonio de Padua');
INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (20159753, 'Pedro', 'Aguilar', '1115487586', 'Av. Calle Real 950, Merlo');
INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (42875159, 'Pedro', 'Lavaque', '1136584796', 'Pasaje las flores, El Palomar');
-- Inserciones de perros de pruebas
INSERT INTO perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_dueno) VALUES (null, 'toto', '2021-12-24', 'm', 28470361);
INSERT INTO perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_dueno) VALUES (null, 'Oliver', '2021-05-20', 'm', 38471522);
INSERT INTO perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_dueno) VALUES (null, 'kiara', '2008-03-06', 'h', 42000145);
INSERT INTO perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_dueno) VALUES (null, 'boby', '2010-12-22', 'm', 25489765);
INSERT INTO perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_dueno) VALUES (null, 'Firulais', '2013-11-02', 'm', 25489765);
INSERT INTO perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_dueno) VALUES (null, 'manchita', '2010-02-15', 'h', 25149783);
INSERT INTO perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_dueno) VALUES (null, 'chiquita', '2009-04-01', 'h', 25149783);
INSERT INTO perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_dueno) VALUES (null, 'Rocco', '2013-04-15', 'm', 20159753);
INSERT INTO perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_dueno) VALUES (null, 'Lucy', '2016-06-20', 'h', 42875159);
-- Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10.
INSERT INTO perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_dueno) VALUES (null, 'Cacho', '2010-01-23', 'h', 38471522);

-- Inserciones de historiales de pruebas
INSERT INTO historial (ID_Historial, Fecha, Descripcion, Monto, Perro) VALUES (null, '2022-08-12', 'Lavado y baño de crema con Aloe Vera', 1050.5, 2);
INSERT INTO historial (ID_Historial, Fecha, Descripcion, Monto, Perro) VALUES (null, '2020-01-23', 'Claritos', 500, 6);
INSERT INTO historial (ID_Historial, Fecha, Descripcion, Monto, Perro) VALUES (null, '2021-02-21', 'Lavado y secado con toalla y secador de pelo', 650, 5);
INSERT INTO historial (ID_Historial, Fecha, Descripcion, Monto, Perro) VALUES (null, '2022-03-11', 'Lavado y Brushing', 950.8, 1);
INSERT INTO historial (ID_Historial, Fecha, Descripcion, Monto, Perro) VALUES (null, '2021-07-19', 'Corte escolar', 1200.2, 5);
INSERT INTO historial (ID_Historial, Fecha, Descripcion, Monto, Perro) VALUES (null, '2020-04-22', 'Lavado y corte de pelo pato carre', 950.7, 5);
INSERT INTO historial (ID_Historial, Fecha, Descripcion, Monto, Perro) VALUES (null, '2019-11-08', 'Le hicimos las rastas', 1700.7, 3);
INSERT INTO historial (ID_Historial, Fecha, Descripcion, Monto, Perro) VALUES (null, '2020-12-15', 'Corte punk rock y desmechado para Firulais', 1070.9, 4);
INSERT INTO historial (ID_Historial, Fecha, Descripcion, Monto, Perro) VALUES (null, '2022-01-13', 'Le hicmos la permanente al Oliver', 680.2, 1);
INSERT INTO historial (ID_Historial, Fecha, Descripcion, Monto, Perro) VALUES (null, '2022-07-01', 'Corte de uñas', 510, 8);
INSERT INTO historial (ID_Historial, Fecha, Descripcion, Monto, Perro) VALUES (null, '2022-07-15', 'Baño y corte de pelo', 990, 9);
INSERT INTO historial (ID_Historial, Fecha, Descripcion, Monto, Perro) VALUES (null, '2022-07-31', 'Masajes', 815.2, 2);

-- 3. Borre un animal que ya no va a ser atendido. consulteen el historial,animal que ya no sea atendido desde hace mucho tiempo.
-- 

-- 4. Actualice la fecha de nacimiento de algún animal (perro) que usted considere.
UPDATE perro SET Fecha_nac = '2021-06-26' WHERE ID_Perro = 2;
SELECT Nombre, Fecha_nac FROM perro WHERE ID_Perro = 2;

-- 5. Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro
SELECT p.Nombre FROM perro p JOIN dueno d ON (d.DNI = p.DNI_dueno) WHERE d.Nombre = 'Pedro';

-- 6. Obtener todos los perros que asistieron a la peluquería en 2022
SELECT p.nombre, h.Fecha, p.sexo FROM perro p JOIN historial h ON (p.ID_Perro = h.Perro) WHERE Fecha > '2022-01-01';

-- 7. Obtener los ingresos percibidos en Julio del 2022
SELECT SUM(Monto) FROM historial WHERE Fecha >= '2022-07-01' AND Fecha < '2022-08-01'; 


