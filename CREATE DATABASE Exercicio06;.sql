CREATE DATABASE Exercicio06;

USE Exercicio06;

USE DbDaphineSivieri;
GO

-----------------NEW_ESTUDANTE-----------------

CREATE TABLE New_Estudante (
    Id_Estudante INT PRIMARY KEY,
    Nome VARCHAR(200) NOT NULL,
    Matricula VARCHAR(100),
    Turma VARCHAR(10)
);

SELECT * FROM New_Estudante;

----------------LIVRO----------------

CREATE TABLE Livro (
    Id_Livro INT PRIMARY KEY,
    Nome VARCHAR(200) NOT NULL,
    Editora VARCHAR(100),
    IBNS VARCHAR(100),
    Titulo VARCHAR(200),
    Ano VARCHAR(4)
);

SELECT * FROM Livro;

-----------------EXEMPLAR-----------------

CREATE TABLE Livro_Exemplar(
    Id_Exemplar INT PRIMARY KEY,
    Copia_Fisica VARCHAR(100),
    Numero_Trombo VARCHAR(20),
    Estado_Conservacao VARCHAR(50)
);

SELECT * FROM Livro_Exemplar;

---------------INSERINDO DADOS----------------

INSERT INTO New_Estudante(Id_Estudante, Nome, Matricula, Turma)
VALUES 
(1, 'Pamela Fernandes', '1298765', '9A'),
(2, 'Poliana Drumond', '120987', '9C'),
(3, 'Paulo Silva', '098675', '9B'),
(4, 'Paloma Frieira', '982678', '9A'),
(5, 'Pietra Assis', '90278345', '9B'),
(6, 'Pietro Assis', '092785', '9C'),
(7, 'Alice Esteves', '90267657', '9A'),
(8, 'Ana Banana', '897245', 'CA'),
(9, 'Arthur Vieira', '290826', '9A'),
(10, 'Fatima Bernades', '896786', '9B');

SELECT * FROM New_Estudante;

-------------------------------------------------

INSERT INTO Livro(Id_Livro, Nome, Editora, IBNS, Titulo, Ano)
VALUES 
(1, 'Machado de Assis', 'Principis', '9786550970121', 'Dom Casmurro', 1899),
(2, 'J.K. Rowling', 'Rocco', '9788532530783', 'Harry Potter e a Pedra Filosofal', 1997),
(3, 'George Orwell', 'Companhia das Letras', '9788535914849', '1984', 1949),
(4, 'J.R.R. Tolkien', 'HarperCollins', '9788595084759', 'O Senhor dos Aneis', 1954),
(5, 'Clarice Lispector', 'Rocco', '9788532508126', 'A Hora da Estrela', 1977),
(6, 'Antoine de Saint-Exupery', 'Agir', '9788522005237', 'O Pequeno Principe', 1943),
(7, 'Paulo Coelho', 'Paralela', '9788584390678', 'O Alquimista', 1988),
(8, 'Suzanne Collins', 'Rocco', '9788579800245', 'Jogos Vorazes', 2008),
(9, 'Jane Austen', 'Martin Claret', '9788572329981', 'Orgulho e Preconceito', 1813),
(10, 'Stephen King', 'Suma', '9788581050393', 'It: A Coisa', 1986);

SELECT * FROM Livro;

-------------------------------------------------

INSERT INTO Livro_Exemplar(Id_Exemplar, Copia_Fisica, Numero_Trombo, Estado_Conservacao)
VALUES
(1, 'Sim', 'TOM001', 'Excelente'),
(2, 'Sim', 'TOM002', 'Bom'),
(3, 'Sim', 'TOM003', 'Regular'),
(4, 'Sim', 'TOM004', 'Excelente'),
(5, 'Sim', 'TOM005', 'Bom'),
(6, 'Sim', 'TOM006', 'Ruim'),
(7, 'Sim', 'TOM007', 'Bom'),
(8, 'Sim', 'TOM008', 'Regular'),
(9, 'Sim', 'TOM009', 'Excelente'),
(10, 'Sim', 'TOM010', 'Bom');

SELECT * FROM Livro_Exemplar;