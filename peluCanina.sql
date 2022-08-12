-- CREATE DATABASE peluMascotas;
-- USE 
CREATE TABLE IF NOT EXISTS dueno
(
DNI int not null ,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
Telefono varchar(16) not null, 
Direccion varchar(30) not null,
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

-- date type, asi se ingresa 'YYYY-MM-DD'
INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (28470361, 'Cesar', 'Ruscica', '1132924558', 'Mataco 1779, Libertad');
INSERT INTO perro (ID_Perro, Nombre, Fecha_nac, sexo, DNI_dueno) VALUES (0, 'toto', '2021-12-24', 'm', 28470361);

SELECT * FROM perro;
