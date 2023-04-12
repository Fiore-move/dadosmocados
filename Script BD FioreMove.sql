CREATE DATABASE FioreMove;

USE FioreMove;

CREATE TABLE Empresas (
idEmpresa INT PRIMARY KEY auto_increment,
nomeFant VARCHAR (45),
nomeEmpresa VARCHAR (45),
CPNJ VARCHAR (45),
CEP VARCHAR (45)
) auto_increment = 1;

CREATE TABLE Representante (
idRepresentante INT PRIMARY KEY auto_increment,
nomeRepresentSoc VARCHAR(45),
nomeRepresent VARCHAR (45),
CPFRepresent VARCHAR (45),
email VARCHAR (45),
telefone VARCHAR (45),
fkEmpresas INT,
CONSTRAINT fkEmpresas foreign key (fkEmpresas) REFERENCES Empresas(idEmpresa)
)auto_increment = 10000;

CREATE TABLE Caminhão (
idCaminhao INT PRIMARY KEY auto_increment,
placa VARCHAR (45),
modelo VARCHAR (45),
fkEmpresa INT,
CONSTRAINT fkEmpresa foreign key (fkEmpresa) REFERENCES Empresas(idEmpresa)
) auto_increment = 10;

CREATE TABLE sensor (
idSensor INT PRIMARY KEY auto_increment,
marcar VARCHAR (45),
tipoSensor VARCHAR (45),
fkCaminhao INT,
CONSTRAINT fkCaminhao foreign key (fkCaminhao) REFERENCES Caminhão(idCaminhao)
)auto_increment = 1000;

CREATE TABLE statusSENSORS (
idStatus INT PRIMARY KEY auto_increment,
statusSensor VARCHAR (45),
temperatura VARCHAR (45),
umidade VARCHAR (45),
fkSensor INT,
CONSTRAINT fkSensor foreign key (fkSensor) REFERENCES sensor(idSensor)
) auto_increment = 100;

INSERT INTO Empresas VALUES
	(null, 'Rita e Jaq', 'Rita e Jaqueline Flores Delivery Ltda', '57.555.243/0001-03', '02256-060'),
    (null, 'Sophies', 'Sophia e Felipe Eletrônica Ltda','75.227.231/0001-31', '04039-010'),
    (null, 'Caio Flores', 'Caio e Raul Corretores Associados ME','68.798.955/0001-70', '14808-631'),
    (null, 'Rosalia Floricultura', 'Flávia e Samuel Floricultura Ltda','20.883.549/0001-89', '17204-562'),
    (null, 'Fab', 'Fábio e Caio Flores Ltda', '89.563.658/0001-15', '13902-094'),
    (null, 'Regina flores', 'Regina e Antonella Limpeza Ltda', '97.618.603/0001-93', '13179-384'),
    (null, 'Nicole', 'Nicole e Nathan Florinda ME', '42.391.363/0001-45', '09332-030'),
    (null, 'Dona Florinda', 'Yago e Mariana Flores ME', '47.984.280/0001-83', '09812-610'),
    (null, 'Hadassa Festas', 'Hadassa e Larissa Marketing Ltda', '40.675.601/0001-19', '13432-572'),
    (null, 'Flores Floridas', 'Adriana Florista Ltda', '69.219.716/0001-80', '13058-166');

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
    
INSERT INTO statusSENSORS VALUES
    (null, 'Adequado', '5°C','94%', 1011),
    (null, 'Inadequado', '6°C','60%', 1012),
    (null, 'Adequado', '1°C','94%', 1013),
    (null, 'Inadequado', '10°C','94%', 1014),
    (null, 'Inadequado', '9°C','30%', 1015),
    (null, 'Adequado', '2°C','95%', 1016),
    (null, 'Adequado', '6°C','99%', 1017),
    (null, 'Inadequado', '11°C','94%', 1018),
    (null, 'Adequado', '4°C','94%', 1019),
    (null, 'Adequado', '3°C','95%', 1020);
    
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

-- e nesse temos apenas o nome das empresas e o nome dos representantes que usam nome social
SELECT Empresas.nomeFant AS Empresa, 
	Representante.nomeRepresentSoc AS Representante
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