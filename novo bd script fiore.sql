CREATE DATABASE FioreMove;


USE FioreMove;

CREATE TABLE Empresas (
idEmpresa INT PRIMARY KEY auto_increment,
nomeFant VARCHAR (45),
nomeEmpresa VARCHAR (45),
email VARCHAR (45),	
senha varchar(45),
CPNJ VARCHAR (45),
CEP VARCHAR (45)
) auto_increment = 1;

INSERT INTO Empresas VALUES
	(null, 'Rita e Jaq', 'Rita e Jaqueline Flores Delivery Ltda','ritaejaq@gmail.com','11111', '57.555.243/0001-03', '02256-060'),
    (null, 'Sophies', 'Sophia e Felipe Eletrônica Ltda','sophies@gmail.com','22222','75.227.231/0001-31', '04039-010'),
    (null, 'Caio Flores', 'Caio e Raul Corretores Associados ME','caioflores@gmail.com','33333','68.798.955/0001-70', '14808-631'),
    (null, 'Rosalia Floricultura', 'Flávia e Samuel Floricultura Ltda','rosaliafloricultura@gmail.com','44444','20.883.549/0001-89', '17204-562'),
    (null, 'Fab', 'Fábio e Caio Flores Ltda','fab@gmail.com','55555', '89.563.658/0001-15', '13902-094'),
    (null, 'Regina flores', 'Regina e Antonella Limpeza Ltda','reginaflores@gmail.com','66666', '97.618.603/0001-93', '13179-384'),
    (null, 'Nicole', 'Nicole e Nathan Florinda ME','nicole@gmail.com','77777', '42.391.363/0001-45', '09332-030'),
    (null, 'Dona Florinda', 'Yago e Mariana Flores ME','donaflorinda@gmail.com','88888', '47.984.280/0001-83', '09812-610'),
    (null, 'Hadassa Festas', 'Hadassa e Larissa Marketing Ltda','hadassafestas@gmail.com','99999', '40.675.601/0001-19', '13432-572'),
    (null, 'Flores Floridas', 'Adriana Florista Ltda','floresfloridas@gmail.com','00000', '69.219.716/0001-80', '13058-166');

CREATE TABLE Representante (
idRepresentante INT auto_increment,
nomeRepresentSoc VARCHAR(45),
nomeRepresent VARCHAR (45),
CPFRepresent VARCHAR (45),
email VARCHAR (45),
telefone VARCHAR (45),
fkEmpresas INT,
CONSTRAINT fkEmpresas foreign key (fkEmpresas) REFERENCES Empresas(idEmpresa),
constraint pkcomposta primary key (idRepresentante, fkEmpresas)
)auto_increment = 10000;

INSERT INTO Representante VALUES
		(null, null, 'Jaqueline Ferreira', '392.184.200-03','jaquelinef@ritaejaqmail.com', '(67) 3974-0562', 1),
        (null, 'Leila Cabral', 'Joseph Cabral', '436.745.040-65', 'leila.cabral@sophiesmail.com', '(95) 99804-0741', 2),
        (null, null, 'Carlo Bianchi', '687.450.482-74', 'cbianchi@floresmail.com', '(95) 2893-9814', 3),
        (null, null, 'Giusepi Pierro', '916.888.660-86', 'pierro.giusepi@gmail.com','(67) 3974-0562',4),
        (null, 'Guilherme Giacommo', 'Sofia Giacommo', '854.102.610-89', 'guilhermegiac@outlook.com', '(86) 3666-7887', 5),
        (null, null, 'Lou Mendes', '764.629.190-00', 'mendes.lou@floresmail.com', '(55) 99370-2797', 6),
        (null, null, 'Diana Deroma', '551.350.780-37', 'diana_demora@florindmail.com', '(82) 2865-2324', 7),
        (null, null, 'Dominique Lincon', '828.852.300-53', 'domick12@gmail.com', '(82) 2865-2324', 8),
        (null, 'Alexsandro Centeio', 'Alexandre Centeio', '278.687.040-20', 'centeio_clementine@outlook.com', '(86) 99871-0666', 9),
        (null, null, 'Lilian Nara', '617.742.810-07', 'liliann@floridasmail.com', '(86) 3666-7887', 10);

CREATE TABLE Caminhão (
idCaminhao INT PRIMARY KEY auto_increment,
placa VARCHAR (45),
modelo VARCHAR (45),
fkEmpresa INT,
CONSTRAINT fkEmpresa foreign key (fkEmpresa) REFERENCES Empresas(idEmpresa)
) auto_increment = 10;

INSERT INTO Caminhão VALUES
	(null, 'AAA-1111', 'Volvo', 1),
    (null, 'BBB-2222', 'Mercedes', 2),
    (null, 'CCC-3333', 'Volvo', 3),
    (null, 'DDD-4444', 'Mercedes', 4),
    (null, 'EEE-5555', 'Volvo', 5),
    (null, 'FFF-6666', 'Mercedes', 6),
    (null, 'GGG-7777', 'Volvo', 7),
    (null, 'HHH-8888', 'Mercedes', 8),
    (null, 'III-9999', 'Volvo', 9),
    (null, 'JJJ-1010', 'Mercedes', 10);


CREATE TABLE sensor (
idSensor INT PRIMARY KEY auto_increment,
marcar VARCHAR (45),
tipoSensor VARCHAR (45),
fkCaminhao INT,
CONSTRAINT fkCaminhao foreign key (fkCaminhao) REFERENCES Caminhão(idCaminhao)
)auto_increment = 1000;

INSERT INTO Sensor VALUES
	(null, 'Saravati','DHT11',10),
    (null, 'Saravati','DHT11',11),
    (null, 'Saravati','DHT11',12),
	(null, 'Saravati','DHT11',13),
    (null, 'Saravati','DHT11',14),
    (null, 'Saravati','DHT11',15),
    (null, 'Saravati','DHT11',16),
    (null, 'Saravati','DHT11',17),
    (null, 'Saravati','DHT11',18),
    (null, 'Saravati','DHT11',19);


CREATE TABLE statusSENSORS (
fkSensor int, constraint fkSensorStatus foreign key (fkSensor) references sensor(idSensor),
 constraint pkcomposta primary key (dtHoraStatus,fkSensor),
dtHoraStatus datetime,
statusSensor varchar (45),
temperatura varchar (45),
umidade varchar (45)
);

INSERT INTO statusSENSORS VALUES
    (1000, '2023-02-01 09:00:00','adequado', '1°C', '71%'), 
    (1000, '2023-02-01 10:00:00','adequado', '2°C', '73%'), 
    (1001, '2023-02-02 10:00:00','inadequado', '-3°C', '79%'), 
    (1001, '2023-02-02 11:00:00','inadequado', '-2°C', '80%'), 
    (1002, '2023-02-03 11:00:00','adequado', '1°C', '75%'), 
    (1002, '2023-02-03 12:00:00','inadequado', '-3°C', '75%'), 
    (1003, '2023-02-04 12:00:00','adequado', '3°C', '73%'), 
    (1003, '2023-02-04 13:00:00','adequado', '2°C', '71%'), 
    (1004, '2023-02-05 13:00:00','adequado', '4°C', '73%'), 
    (1004, '2023-02-05 14:00:00','inadequado', '10°C', '73%'), 
    (1005, '2023-02-06 14:00:00','inadequado', '10°C', '72%'), 
    (1005, '2023-02-06 15:00:00','adequado', '4°C', '71%'), 
    (1006, '2023-02-07 15:00:00','inadequado', '15°C', '80%'), 
    (1006, '2023-02-07 16:00:00','adequado', '3°C', '71%'), 
    (1007, '2023-02-08 16:00:00','inadequado', '8°C', '70%'), 
    (1007, '2023-02-08 17:00:00','adequado', '4°C', '70%'), 
    (1008, '2023-02-09 17:00:00','adequado', '5°C', '75%'), 
    (1008, '2023-02-09 18:00:00','adequado', '5°C', '73%'), 
    (1009, '2023-02-10 19:00:00','adequado', '2°C', '71%'), 
    (1009, '2023-02-10 20:00:00','inadequado', '-3°C', '60%'); 


SELECT * FROM Empresas;

SELECT * FROM Representante;

SELECT * FROM Caminhão;

SELECT * FROM sensor;

SELECT * FROM statusSENSORS;

SELECT * FROM Empresas JOIN Representante
	ON idEmpresa = fkEmpresas;
    
-- Para saber quais os representantes usam nome social
-- neste exemplo temos o id das empresas seguido o id dos representantes.    
SELECT Empresas.idEmpresa AS identificador,
Empresas.nomeFant AS Empresa,
Representante.nomeRepresentSoc AS Representante,
Representante.idRepresentante AS identificador
	FROM Empresas JOIN Representante
    ON Representante.fkEmpresas = Empresas.idEmpresa;

SELECT Empresas.idEmpresa AS identificador,
Empresas.nomeFant AS Empresa,
Representante.nomeRepresentSoc AS 'Nome Social',
Representante.nomeRepresent AS Representante,
Representante.idRepresentante AS identificador
	FROM Empresas JOIN Representante
    ON Representante.fkEmpresas = Empresas.idEmpresa;

-- e nesse temos apenas o nome das empresas e o nome dos representantes que usam nome social
SELECT Empresas.nomeFant AS Empresa, 
	Representante.nomeRepresentSoc AS Representante
    FROM Empresas JOIN Representante
    ON Representante.fkEmpresas = Empresas.idEmpresa;
    
    SELECT Empresas.nomeFant AS Empresa, 
	Representante.nomeRepresent AS Representante
    FROM Empresas JOIN Representante
    ON Representante.fkEmpresas = Empresas.idEmpresa;

-- Para saber quais caminhões estão com o ambiente adequado para o transporte de rosas e
SELECT Caminhão.idCaminhao AS id,
	Caminhão.placa AS Placa,
	sensor.idSensor AS Sensor,
    statusSENSORS.statusSensor AS Condição,
    statusSENSORS.temperatura AS TempEmCelsius,
    statusSENSORS.umidade AS UmidadEmPorcentagem
    FROM Caminhão INNER JOIN sensor
    ON sensor.fkCaminhao = Caminhão.idCaminhao
		INNER JOIN statusSENSORS ON statusSENSORS.fkSensor = Sensor.idSensor;
   
-- Para saber quais sensores estão instalados em um determinado caminhão.
SELECT Sensor.idSensor AS identificador,
	Caminhão.idCaminhao AS idCaminhão,
    Caminhão.placa AS Caminhão
    FROM Sensor JOIN Caminhão
		ON sensor.fkCaminhao = Caminhão.idCaminhao;
        
-- Mudamos uma nomenclatura dentro da tabela.
ALTER TABLE Representante RENAME COLUMN nomeRepresent TO nomeRepresentRegistro;
