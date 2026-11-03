CREATE DATABASE NEWExercicio02;

USE DbDaphineSivieri;
GO

------------STUDENT-------------

CREATE TABLE Student (
    Id_Student INT PRIMARY KEY,
    Matricula VARCHAR(20) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Apelido VARCHAR(50) NOT NULL,
    Turma VARCHAR(20) NOT NULL
);

CREATE TABLE Videoss (
    Id_Videoss INT PRIMARY KEY,
    Codigo VARCHAR(20) NOT NULL,
    Titulo VARCHAR(100) NOT NULL,
    Descricao VARCHAR(300) NOT NULL,
    Duracao INT NOT NULL,
    Data_Publicacao DATE NOT NULL
);

----------------ISERINDO DADOS----------------

INSERT INTO Student
(Id_Student, Matricula, Nome, Apelido, Turma)
VALUES
(1, '2026001', 'Lucas', 'Luquinhas', '1A'),
(2, '2026002', 'Mariana', 'Mari', '1B'),
(3, '2026003', 'Gabriel', 'Biel', '2A'),
(4, '2026004', 'Isabela', 'Isa', '2B'),
(5, '2026005', 'Rafael', 'Rafa', '3A'),
(6, '2026006', 'Beatriz', 'Bia', '3B'),
(7, '2026007', 'Matheus', 'Teus', '1A'),
(8, '2026008', 'Camila', 'Cami', '2A'),
(9, '2026009', 'Pedro', 'Pedrinho', '2B'),
(10, '2026010', 'Amanda', 'Mandy', '3A');

SELECT * FROM Student;


INSERT INTO Videoss (Id_Videoss, Codigo, Titulo, Descricao, Duracao, Data_Publicacao)
VALUES
(1, 'VID001', 'Aula de SQL', 'Introdução aos comandos SQL.', 600, '2026-10-01'),
(2, 'VID002', 'HTML Básico', 'Aprenda a criar páginas web.', 720, '2026-10-02'),
(3, 'VID003', 'CSS para Iniciantes', 'Conceitos básicos de estilização.', 540, '2026-10-03'),
(4, 'VID004', 'Lógica de Programação', 'Introdução aos algoritmos.', 900, '2026-10-04'),
(5, 'VID005', 'Banco de Dados', 'Aprenda a organizar informações.', 840, '2026-10-05'),
(6, 'VID006', 'Comando INSERT', 'Como adicionar registros em tabelas.', 480, '2026-10-06'),
(7, 'VID007', 'Comando SELECT', 'Como consultar dados no SQL.', 570, '2026-10-07'),
(8, 'VID008', 'Chave Primária', 'Entenda a identificação de registros.', 630, '2026-10-08'),
(9, 'VID009', 'Modelagem de Dados', 'Introdução às entidades e atributos.', 780, '2026-10-09'),
(10, 'VID010', 'Relacionamentos SQL', 'Como relacionar tabelas no banco.', 660, '2026-10-10');

SELECT * FROM Videoss;