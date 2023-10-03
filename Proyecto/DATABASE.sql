DROP DATABASE IF EXISTS db;
Create DATABASE db;
USE db;


CREATE TABLE Jugadores (
ID INT NOT NULL,
Username VARCHAR(60),
Contraseña VARCHAR(60),
DNI VARCHAR(9),

PRIMARY KEY(ID)
)ENGINE = InnoDB;



CREATE TABLE Partidas (
id int NOT NULL,
Fecha varchar(60),
Hora varchar(60),
Duracion varchar(60),

PRIMARY KEY(id)
)ENGINE = InnoDB;


Create Table Historial(
idj INT NOT NULL,
idp INT NOT NULL,
FOREIGN KEY (idj) REFERENCES Jugadores(ID),
FOREIGN KEY (idp) REFERENCES Partidas(id)
)ENGINE = InnoDB;

INSERT INTO Jugadores VALUES(1,'Alberto','Alberto1','12345678B');
INSERT INTO Jugadores VALUES(2,'Martin','Martin1','22345678B');
INSERT INTO Jugadores VALUES(3,'Arnau','Arnau1','22245678B');

INSERT INTO Partidas VALUES(1,'15/02/2022','11:30','90 min');
INSERT INTO Partidas VALUES(2,'15/02/2023','12:30','100 min');
INSERT INTO Partidas VALUES(3,'15/02/2024','13:30','120 min');



SELECT Jugadores.Username FROM Jugadores,Partidas,Historial WHERE
	Partidas.id = 5 AND
	Partidas.id = Historial.idp AND
	Historial.idj= Jugadores.id and
        Jugadores.id= 1

