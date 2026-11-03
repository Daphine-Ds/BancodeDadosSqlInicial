CREATE DATABASE NEWExercicio01;

USE DbDaphineSivieri;
GO

------------JOGADORES-------------

CREATE TABLE Jogadores(
    Id_Jogadores INT PRIMARY KEY,
    Nome_Completo VARCHAR(100) NOT NULL,
    Apelido VARCHAR(200) NOT NULL,
    Email VARCHAR(200) NOT NULL,
    Turma VARCHAR(100) NOT NULL,
    Telefone VARCHAR(100) NOT NULL,
    Data_Nascimento DATE
);

----------------ISERINDO DADOS----------------

INSERT INTO Jogadores (Id_Jogadores, Nome_Completo, Apelido, Email, Turma, Telefone, Data_Nascimento)
VALUES
(1, 'Neymar Junior', 'Ney', 'ney@example.com', '3A', '11980000001', '1992-02-05'),
(2, 'Lionel Messi', 'Leo', 'leo@example.com', '3B', '11980000002', '1987-06-24'),
(3, 'Cristiano Ronaldo', 'CR7', 'cr7@example.com', '2A', '11980000003', '1985-02-05'),
(4, 'Kylian Mbappe', 'Kiki', 'kiki@example.com', '2B', '11980000004', '1998-12-20'),
(5, 'Vinicius Junior', 'Vini', 'vini@example.com', '3A', '11980000005', '2000-07-12'),
(6, 'Marta Vieira', 'Marta', 'marta@example.com', '1A', '11980000006', '1986-02-19'),
(7, 'Ronaldinho Gaucho', 'Dinho', 'dinho@example.com', '3B', '11980000007', '1980-03-21'),
(8, 'Endrick Felipe', 'Endrick', 'endrick@example.com', '1B', '11980000008', '2006-07-21'),
(9, 'Formiga', 'Formiga', 'formiga@example.com', '2A', '11980000009', '1978-03-03'),
(10, 'Richarlison Andrade', 'Pombo', 'pombo@example.com', '2B', '11980000010', '1997-05-10');

SELECT * FROM Jogadores;