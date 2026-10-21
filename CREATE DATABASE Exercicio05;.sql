CREATE DATABASE Exercicio05;

USE DbDaphineSivieri;
GO


-----------------ALUNO----------------

CREATE TABLE Aluninho(
    Id_ALuno INT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Matricula INT NOT NULL,
    Turma VARCHAR(10) NOT NULL
);

SELECT * FROM Aluninho;

-----------------PEDIDO-----------------

CREATE TABLE New_PedidoO(
    Id_Pedido INT PRIMARY KEY,
    Data_Pedido DATE,
    Valor_Total DECIMAL
);

SELECT * FROM New_PedidoO;


-----------------PRODUTO-----------------

CREATE TABLE PRODUTOO (
    Id_PRODUTO INT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Categoria VARCHAR(20),
    Preco DECIMAL
);

SELECT * FROM PRODUTOO;

---------------ISERINDO DADOS----------------

INSERT INTO Aluninho(Id_Aluno, Nome, Matricula, Turma)
VALUES
(1, 'Daphine Sivieri', '10934669', '2A'),
(2, 'Davi Pedroza', '98267134', '2A'),
(3, 'Guilherme Lima', '09267145', '2A'),
(4, 'Lívia Santos', '2679801', '2A'),
(5, 'João Gilo', '894576', '2A'),
(6, 'Bruno', '128796', '2A'),
(7, 'Paula Arara', '1782456', '3B'),
(8, 'Juliano Caetano', '783456', '2C'),
(9, 'Teresa Tesoura', '190276', '2B'),
(10, 'Fabiola Firmiani', '198038', '2C');

SELECT * FROM Aluninho;

--------------------------------------------------

INSERT INTO New_PedidoO(Id_Pedido, Data_Pedido, Valor_Total)
VALUES
(1, '2025-10-16', '16.1'),
(2, '2024-09-19', '19.9'),
(3, '2026-09-25', '25.9'),
(4, '2024-07-26', '29.3'),
(5, '2023-05-06', '02.2'),
(6, '2026-02-02', '26.1'),
(7, '2025-04-10', '14.1'),
(8, '2021/11/26', '09.5'),
(9, '2022/10/22', '22.1'),
(10, '2026/03/25', '01.1');

SELECT * FROM New_PedidoO;

--------------------------------------------------

INSERT INTO PRODUTOO(Id_PRODUTO, Nome, Categoria, Preco)
VALUES 
(1, 'Calça Jeans', 'Roupas', '20.9'),
(2, 'Sandália', 'Calçado', '199.9'),
(3, 'Liquidificador', 'Eletrodomésticos', '215.9'),
(4, 'Shampoo', 'Cosméticos', '31.4'),
(5, 'Arroz', 'Alimentos', '232.7'),
(6, 'Vestido', 'Roupas', '69,9'),
(7, 'Feijão', 'Alimentos', '15.6'),
(8, 'Mouse', 'Tecnologia', '89.9'),
(9, 'Sabonete', 'Higiene', '05.9'),
(10, 'Batedeira', 'Eletrodomésticos', '179.9');

SELECT * FROM PRODUTOO;
