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
fkEmpresa INT, CONSTRAINT fkEmpresa foreign key (fkEmpresa) REFERENCES Empresa(idEmpresa),
umidade double,
temperatura double
)auto_increment = 1;

INSERT INTO sensor VALUES
	(null,1,1231215271123.12, 2326532171823.32),
    (null,2,3327642422332.12, 1374532323321.13),
    (null,3,3382324528531.32, 2911335864323.23),
	(null,4,2246272918122.43, 2324357380822.42),
    (null,5,3132516478223.43, 3721343525773.32),
    (null,6,1233328937232.32, 2733557385432.21),
    (null,7,3738295032521.44, 7312324576314.32),
    (null,8,2131875324561.31, 7131832737281.32),
    (null,9,8622468953222.12, 1572107332131.12),
    (null,10,5123324566421.13, 3243632475312.12),
    (null,10,2952344632621.34, 8268132424631.32),
    (null,10,2893928248221.13, 8082729283913.12),
    (null,10,2532324567541.34, 2852383822322.23),
    (null,10,2233182739283.32, 8012839292223.23);


SELECT * FROM empresa;

SELECT * FROM sensor;

select * from empresa join sensor on
idEmpresa = fkEmpresa;


