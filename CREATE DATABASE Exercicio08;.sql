CREATE DATABASE Exercicio08;

USE Exercicio08;

USE DbDaphineSivieri;
GO

-----------------USUARIO-----------------

CREATE TABLE Novo_estudante0(
    Id_Novo_estudante0 INT PRIMARY KEY,
    Email VARCHAR(100) NOT NULL,
    Nome VARCHAR(200) NOT NULL,
    Turma VARCHAR(10),
    Matricula VARCHAR(200),
    Telefone VARCHAR(15) NOT NULL
);

SELECT * FROM Novo_estudante0;

-----------------ENDERECO-----------------

CREATE TABLE endereco00 (
    Id_endereco00 INT PRIMARY KEY,
    Bairro VARCHAR(100) NOT NULL,
    CEP VARCHAR(200),
    Cidade VARCHAR(100) NOT NULL,
    Numero VARCHAR(10) NOT NULL,
    Rua VARCHAR(200) NOT NULL
);

SELECT * FROM endereco00;

---------------INSERINDO DADOS----------------

INSERT INTO Novo_estudante0 (Id_Novo_estudante0, Email, Nome, Turma, Matricula, Telefone)
VALUES
(1, 'neymar@example.com', 'Neymar Jr.', '3A', '2026001', '11987654321'),
(2, 'anitta@example.com', 'Anitta', '3B', '2026002', '11987654322'),
(3, 'larissa@example.com', 'Larissa Manoela', '2A', '2026003', '11987654323'),
(4, 'virginia@example.com', 'Virginia Fonseca', '2B', '2026004', '11987654324'),
(5, 'bruna@example.com', 'Bruna Marquezine', '3A', '2026005', '11987654325'),
(6, 'whindersson@example.com', 'Whindersson Nunes', '1A', '2026006', '11987654326'),
(7, 'luisa@example.com', 'Luísa Sonza', '3B', '2026007', '11987654327'),
(8, 'maisa@example.com', 'Maisa Silva', '2A', '2026008', '11987654328'),
(9, 'rihanna@example.com', 'Rihanna', '1B', '2026009', '11987654329'),
(10, 'taylor@example.com', 'Taylor Swift', '3A', '2026010', '11987654330');

SELECT * FROM Novo_estudante0;

-----------------------------------------------------

INSERT INTO endereco00 (Id_endereco00, Bairro, CEP, Cidade, Numero, Rua)
VALUES
(1, 'Centro', '17200-000', 'Jau', '120', 'Rua Major Prado'),
(2, 'Jardim América', '17201-100', 'Jau', '245', 'Rua das Flores'),
(3, 'Vila Nova', '17202-200', 'Jau', '78', 'Rua São Paulo'),
(4, 'Jardim Bela Vista', '17203-300', 'Jau', '350', 'Rua Brasil'),
(5, 'Centro', '17010-000', 'Bauru', '90', 'Rua Primeiro de Agosto'),
(6, 'Vila Falcão', '17050-400', 'Bauru', '180', 'Rua Campos Salles'),
(7, 'Centro', '01001-000', 'São Paulo', '55', 'Praça da Sé'),
(8, 'Copacabana', '22020-001', 'Rio de Janeiro', '420', 'Avenida Atlântica'),
(9, 'Centro', '80010-000', 'Curitiba', '210', 'Rua XV de Novembro'),
(10, 'Boa Viagem', '51020-000', 'Recife', '600', 'Avenida Boa Viagem');

SELECT * FROM endereco00;