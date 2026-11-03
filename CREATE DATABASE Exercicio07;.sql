CREATE DATABASE Exercicio07;



USE DbDaphineSivieri;
GO

-----------------USUARIO-----------------

CREATE TABLE Usuario00 (
    Id_Usuario00 INT PRIMARY KEY,
    Email VARCHAR(100),
    Nome VARCHAR(200) NOT NULL,
    Data_Nascimento DATE,
    Identificador VARCHAR(100),
    Apelido VARCHAR(100) NOT NULL 
);

SELECT * FROM Usuario00;

-----------------POST-----------------

CREATE TABLE POSTT (
    Id_POSTT INT PRIMARY KEY,
    Texto VARCHAR(1000) NOT NULL,
    Hora VARCHAR(200),
    Data_Nascimento DATE,
);

SELECT * FROM POSTT;

---------------INSERINDO DADOS----------------

INSERT INTO Usuario00(Id_Usuario00, Email, Nome, Data_Nascimento,  Identificador, Apelido)
VALUES 
(1, 'ana@gmail.com', 'Ana Oliveira', '2008-05-12', 'USR001', 'Aninha'),
(2, 'pedro@gmail.com', 'Pedro Santos', '2007-09-23', 'USR002', 'Pedrinho'),
(3, 'maria@gmail.com', 'Maria Souza', '2009-02-15', 'USR003', 'Mari'),
(4, 'joao@gmail.com', 'Joao Ferreira', '2006-11-08', 'USR004', 'Jota'),
(5, 'lara@gmail.com', 'Lara Mendes', '2008-07-19', 'USR005', 'Lari'),
(6, 'gabriel@gmail.com', 'Gabriel Costa', '2007-04-03', 'USR006', 'Gabs'),
(7, 'sofia@gmail.com', 'Sofia Almeida', '2009-12-27', 'USR007', 'Soso'),
(8, 'lucas@gmail.com', 'Lucas Martins', '2006-08-14', 'USR008', 'Luquinhas'),
(9, 'beatriz@gmail.com', 'Beatriz Lima', '2008-01-30', 'USR009', 'Bia'),
(10, 'rafael@gmail.com', 'Rafael Rodrigues', '2007-06-21', 'USR010', 'Rafa');

SELECT * FROM Usuario00;

--------------------------------------------------

INSERT INTO POSTT (Id_POSTT, Texto, Hora, Data_Nascimento)
VALUES
(1, 'Meu primeiro post!', '08:30:00', '2026-10-15'),
(2, 'Que dia incrível!', '09:15:00', '2026-10-15'),
(3, 'Adorei esse lugar!', '10:00:00', '2026-10-16'),
(4, 'Estudando SQL hoje.', '11:45:00', '2026-10-16'),
(5, 'Final de semana chegando!', '13:20:00', '2026-10-17'),
(6, 'Hora de aprender algo novo.', '14:10:00', '2026-10-17'),
(7, 'Minha música favorita!', '15:30:00', '2026-10-18'),
(8, 'Dia produtivo.', '16:05:00', '2026-10-18'),
(9, 'Livros são incríveis.', '18:40:00', '2026-10-19'),
(10, 'Boa noite, pessoal!', '20:15:00', '2026-10-19');

SELECT * FROM POSTT;
