drop database FioreMove;

CREATE DATABASE FioreMove;

USE FioreMove;

CREATE TABLE empresa (
idEmpresa INT PRIMARY KEY auto_increment,
nomeFant VARCHAR (45),
nome VARCHAR (45),
email VARCHAR (45),	
senha varchar(45),
cnpj VARCHAR (45),
cep VARCHAR (45),
represent VARCHAR(45),
cpf CHAR (23)
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
fkEmpresa INT, CONSTRAINT fkEmpresa foreign key (fkEmpresa) REFERENCES empresa(idEmpresa),
umidade double,
temperatura double,
dtHora datetime
)auto_increment = 1;

INSERT INTO sensor VALUES
	(null,1,12, 23, now()),
    (null,2,33, 13,now()),
    (null,3,33, 29,now()),
	(null,4,22, 23,now()),
    (null,5,31, 37,now()),
    (null,6,12, 27,now()),
    (null,7,37, 73,now()),
    (null,8,21, 71,now()),
    (null,9,26, 15,now()),
    (null,10,11, 32,now());
    

SELECT * FROM empresa;

SELECT * FROM sensor;

select  temperatura, umidade, dtHora from sensor where fkEmpresa = 10 order by idSensor desc limit 7;

desc sensor;

insert into sensor(fkEmpresa, umidade, temperatura, dtHora) VALUES (10, 66, 28.5, '2023-05-25 22:50:30');

select * from empresa join sensor on
idEmpresa = fkEmpresa;

select 
temperatura, 
umidade,
dtHora, 
fkEmpresa 
from sensor where fkEmpresa = 10
order by idSensor desc limit 1;

