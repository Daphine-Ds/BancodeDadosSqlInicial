CREATE DATABASE Exercicio10;

USE DbDaphineSivieri;
GO

-----------------ESTUDANTE-----------------

CREATE TABLE NewEstudantes (
    Id_NewEstudantes VARCHAR(100) PRIMARY KEY,
    Nome VARCHAR(200) NOT NULL,
    Turma VARCHAR(10),
    Matricula VARCHAR(200),
    Telefone VARCHAR (15),
    Data_Nascimento DATE
);

SELECT * FROM NewEstudantes;

----------------PALCO-----------------

CREATE TABLE NewPalco (
    Id_NewPalco INT PRIMARY KEY,
    Capacidade INT,
    Nome VARCHAR(200) NOT NULL
);

SELECT * FROM NewPalco;

----------------APRESENTACAO-----------------

CREATE TABLE NewApresentacao (
    Id_NewApresentacao INT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Duracao VARCHAR(10),
    Estilo VARCHAR(20) NOT NULL,
    Classificacao_Etaria VARCHAR(5),
);

SELECT * FROM NewApresentacao;

----------------RESPONSAVEIS-----------------

CREATE TABLE NewResponsaveis(
    Id_NewResponsaveis INT PRIMARY KEY
);

SELECT * FROM NewResponsaveis;


---------------INSERINDO DADOS----------------

INSERT INTO NewEstudantes(Id_NewEstudantes, Nome, Turma, Matricula, Telefone, Data_Nascimento)
VALUES
('11', 'Mariana Costa', '1A', '2026011', '11980000011', '2008-04-15'),
('12', 'Lucas Almeida', '1B', '2026012', '11980000012', '2007-09-22'),
('13', 'Beatriz Oliveira', '2A', '2026013', '11980000013', '2008-01-10'),
('14', 'Gabriel Santos', '2B', '2026014', '11980000014', '2007-06-18'),
('15', 'Isabela Ferreira', '3A', '2026015', '11980000015', '2006-11-25'),
('16', 'Matheus Rodrigues', '3B', '2026016', '11980000016', '2007-03-07'),
('17', 'Sophia Martins', '1A', '2026017', '11980000017', '2009-02-14'),
('18', 'Rafael Lima', '2A', '2026018', '11980000018', '2008-07-30'),
('19', 'Helena Souza', '3B', '2026019', '11980000019', '2006-12-05'),
('20', 'Pedro Henrique', '1B', '2026020', '11980000020', '2009-05-19');

SELECT * FROM NewEstudantes;

-------------------------------------------------------------

INSERT INTO NewPalco (Id_NewPalco, Capacidade, Nome)
VALUES
(1, 500, 'Palco Principal'),
(2, 200, 'Palco Secundário'),
(3, 150, 'Palco Acústico'),
(4, 300, 'Palco Cultural'),
(5, 100, 'Palco Jovem'),
(6, 250, 'Palco Rock'),
(7, 180, 'Palco Pop'),
(8, 400, 'Palco Festival'),
(9, 120, 'Palco Alternativo'),
(10, 350, 'Palco Central');

SELECT * FROM NewPalco;

-------------------------------------------------------------

INSERT INTO NewResponsaveis (Id_NewResponsaveis)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

SELECT * FROM NewResponsaveis;