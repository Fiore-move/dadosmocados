drop database FioreMove;

CREATE DATABASE FioreMove;

USE FioreMove;

CREATE TABLE empresa (
idEmpresa INT PRIMARY KEY auto_increment,
nomeFant VARCHAR (45),
nomeEmpresa VARCHAR (45),
email VARCHAR (45),	
senha varchar(45),
CPNJ VARCHAR (45),
CEP VARCHAR (45),
nomeRepresent VARCHAR(45),
CPFRepresent CHAR (11)
) auto_increment = 1;

INSERT INTO empresa VALUES
	(null, 'Rita e Jaq', 'Rita e Jaqueline Flores Delivery Ltda','ritaejaq@gmail.com','11111', '57.555.243/0001-03', '02256-060', 'Jaqueline Ferreira','39218420003'),
    (null, 'Sophies', 'Sophia e Felipe Eletrônica Ltda','sophies@gmail.com','22222','75.227.231/0001-31', '04039-010','Joseph Cabral','43674504065'),
    (null, 'Caio Flores', 'Caio e Raul Corretores Associados ME','caioflores@gmail.com','33333','68.798.955/0001-70', '14808-631', 'Carlo Bianchi', '68745048274'),
    (null, 'Rosalia Floricultura', 'Flávia e Samuel Floricultura Ltda','rosaliafloricultura@gmail.com','44444','20.883.549/0001-89', '17204-562', 'Giusepi Pierro', '91688866086'),
    (null, 'Fab', 'Fábio e Caio Flores Ltda','fab@gmail.com','55555', '89.563.658/0001-15', '13902-094', 'Sofia Giacommo', '85410261089'),
    (null, 'Regina flores', 'Regina e Antonella Limpeza Ltda','reginaflores@gmail.com','66666', '97.618.603/0001-93', '13179-384', 'Lou Mendes', '76462919000'),
    (null, 'Nicole', 'Nicole e Nathan Florinda ME','nicole@gmail.com','77777', '42.391.363/0001-45', '09332-030', 'Diana Deroma', '55135078037'),
    (null, 'Dona Florinda', 'Yago e Mariana Flores ME','donaflorinda@gmail.com','88888', '47.984.280/0001-83', '09812-610', 'Dominique Lincon', '82885230053'),
    (null, 'Hadassa Festas', 'Hadassa e Larissa Marketing Ltda','hadassafestas@gmail.com','99999', '40.675.601/0001-19', '13432-572', 'Alexandre Centeio', '27868704020'),
    (null, 'Flores Floridas', 'Adriana Florista Ltda','floresfloridas@gmail.com','00000', '69.219.716/0001-80', '13058-166', 'Lilian Nara', '61774281007');




CREATE TABLE sensor (
idSensor INT PRIMARY KEY auto_increment,
tipoSensor VARCHAR (45),
fkEmpresa INT, CONSTRAINT fkEmpresa foreign key (fkEmpresa) REFERENCES Empresa(idEmpresa),
umidade char(3),
temperatura char(3),
dtHora datetime
)auto_increment = 1;

INSERT INTO sensor VALUES
	(null,'DHT11',1,1, 71,'2023-02-01 09:00:00'),
    (null,'DHT11',2,2, 73, '2023-02-02 10:00:00'),
    (null,'DHT11',3,-3, 79, '2023-02-03 11:00:00'),
	(null,'DHT11',4,-2, 80, '2023-02-04 12:00:00'),
    (null,'DHT11',5,1, 75, '2023-02-05 13:00:00'),
    (null,'DHT11',6,-3, 75, '2023-02-06 14:00:00'),
    (null,'DHT11',7,3, 73, '2023-02-07 15:00:00'),
    (null,'DHT11',8,2, 71, '2023-02-08 16:00:00'),
    (null,'DHT11',9,8, 70, '2023-02-09 17:00:00'),
    (null,'DHT11',10,5, 75, '2023-01-01 12:00:00'),
    (null,'DHT11',10,29, 82, '2023-01-01 13:00:00'),
    (null,'DHT11',10,28, 80, '2023-01-01 14:00:00'),
    (null,'DHT11',10,25, 85, '2023-01-01 15:00:00'),
    (null,'DHT11',10,22, 80, '2023-01-01 16:00:00');


SELECT * FROM empresa;

SELECT * FROM sensor;

select * from empresa join sensor on
idEmpresa = fkEmpresa;


