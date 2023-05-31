create database sprint_5;
use sprint_5;
/*Se crea usuario con todos los privilegios*/
CREATE USER 'grupo5'@'localhost' IDENTIFIED BY 'password';
GRANT INSERT, UPDATE, DELETE, SELECT ON sprint_5.* TO 'grupo5'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

CREATE TABLE usuarios (
    ID_usuario INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Edad INT,
    CorreoElectronico VARCHAR(100),
    Numero_peticiones INT
);

CREATE TABLE operario (
    ID_operario INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Edad INT,
    CorreoElectronico VARCHAR(100),
    Numero_soporte INT
);
CREATE TABLE soporte (
    ID_soporte INT AUTO_INCREMENT PRIMARY KEY,
    ID_operario VARCHAR(50),
	ID_usuario VARCHAR(50),
    Fecha DATE,
    Evaluacion INT
);

/*Ingresar los valores de cada tabla*/
INSERT INTO usuarios (Nombre, Apellido, Edad, CorreoElectronico, Numero_peticiones) 
values 
('Gonzalo','Vergara',40,'gonzalo@Vergara.cl',2),
('Lalo','Landa',21,'lalo@landa.cl',0),
('Iñigo','Montoya',32,'iñigo@montoya.cl',4),
('Claudia','Lopez',29,'claudia@lopez.cl',6),
('Ivan','zamorano',23,'Ivan@zamorano.cl',14);

INSERT INTO operario (Nombre, Apellido, Edad, CorreoElectronico, Numero_soporte) 
values 
('Raul','Martinez',23,'raul@martinez.cl',14),
('sebastian','Gonzalez',19,'sebastian@gonzalez.cl',2),
('Alan','Brito',55,'Alan@brito.cl',32),
('Adolfo','Aedo',46,'Adolfo@aedo.cl',28),
('Pedro','Perez',27,'Pedro@perez.cl',17);
INSERT INTO soporte (ID_operario,ID_usuario,Fecha,Evaluacion)
values
(4,	5,'2023-01-02',5),
(4,	1,'2023-02-14',5),
(1,	5,'2023-03-18',5),
(2,	2,'2023-04-25',7),
(4,	4,'2023-05-11',9),
(3,	2,'2023-01-29',3),
(4,	4,'2023-02-12',6),
(3,	4,'2023-03-04',6),
(2,	2,'2023-04-10',4),
(5,	1,'2023-05-23',1);

/*Seleccione las 3 operaciones con mejor evaluación.*/
SELECT *
FROM (
  SELECT Evaluacion, DENSE_RANK() OVER(ORDER BY Evaluacion DESC) AS ranking          
  FROM soporte
) AS subconsulta
WHERE ranking <= 3;

/*Seleccione las 3 operaciones con menos evaluación.*/
SELECT *
FROM (
  SELECT Evaluacion, DENSE_RANK() OVER(ORDER BY Evaluacion ASC) AS ranking    
  FROM soporte
) AS subconsulta
WHERE ranking <= 3;
/*Seleccione al operario que más soportes ha realizado.*/

SELECT ID_operario, COUNT(ID_operario) AS repeticiones 
FROM soporte
GROUP BY ID_operario
ORDER BY repeticiones DESC
LIMIT 1;
/*Seleccione al cliente que menos veces ha utilizado la aplicación.*/
SELECT *
FROM usuarios
WHERE Numero_peticiones = (
  SELECT MIN(Numero_peticiones)
  FROM usuarios
);
/*Agregue 10 años a los tres primeros usuarios registrados.*/
UPDATE usuarios
SET Edad = Edad + '10' 
LIMIT 3;

/*Renombre todas las columnas ‘correo electrónico’. El nuevo nombre debe ser email.*/
ALTER TABLE operario
RENAME COLUMN CorreoElectronico to email;

ALTER TABLE usuarios
RENAME COLUMN CorreoElectronico to email;

/*Seleccione solo los operarios mayores de 20 años.*/
SELECT *
FROM operario
WHERE Edad>20;



