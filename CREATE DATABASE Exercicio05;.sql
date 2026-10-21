CREATE DATABASE Exercicio05;

USE Exercicio5;

USE DbDaphineSivieri;
GO


-----------------ALUNO----------------

CREATE TABLE Aluno(
    Id_Aluno VARCHAR(100) PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Matricula VARCHAR(100),
    Turma VARCHAR(10)
);

SELECT * FROM Aluno

-----------------PEDIDO-----------------

CREATE TABLE New_Pedido (
    Id_Pedido VARCHAR(100) PRIMARY KEY,
    Data_Pedido DATE,
    Valor_Total VARCHAR(10)
);

SELECT * FROM New_Pedido;


-----------------PRODUTO-----------------

CREATE TABLE Produto (
    Id_Produto VARCHAR(100) PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Categoria VARCHAR(20),
    Preco VARCHAR(100)
);

SELECT * FROM Produto;