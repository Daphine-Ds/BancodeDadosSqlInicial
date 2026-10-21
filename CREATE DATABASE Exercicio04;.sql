CREATE DATABASE Exercicio04;

USE Exercicio_4;

USE DbDaphineSivieri;
GO

CREATE TABLE Estudantes_new(
    Id_Estudantes VARCHAR (50) PRIMARY KEY, 
    Nome VARCHAR(100),
    Turma VARCHAR(30)
);

CREATE TABLE Musica(
    Id_Musica VARCHAR(100) PRIMARY KEY, 
    Nome VARCHAR(50),
    Titulo VARCHAR(50),
    Duracao VARCHAR(6),
    Artista VARCHAR(50),
    Album VARCHAR(20)
);

SELECT * FROM Estudantes_new;

SELECT * FROM Musica;