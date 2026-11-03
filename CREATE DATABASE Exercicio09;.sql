CREATE DATABASE Exercicio09;

USE Exercicio09;

USE DbDaphineSivieri;
GO

-----------------ALUNO-----------------

CREATE TABLE NovoAluno(
    Id_NovoAluno VARCHAR(100) PRIMARY KEY,
    Nome VARCHAR(200) NOT NULL,
    Turma VARCHAR(10),
    Matricula VARCHAR(200)
);

SELECT * FROM NovoAluno;

----------------SALA-----------------

CREATE TABLE NewSala (
    Id_NewSala INT PRIMARY KEY,
    Capacidade INT,
    Bloco INT,
    Numero VARCHAR(100),
    Diciplina VARCHAR(100) NOT NULL
);

SELECT * FROM NewSala;

----------------DICIPLINA-----------------

CREATE TABLE NewDiciplina (
    Id_NewDiciplina INT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Carga_Horaria VARCHAR(50)
);

SELECT * FROM NewDiciplina;

---------------INSERINDO DADOS----------------

INSERT INTO NovoAluno (Id_NovoAluno, Nome, Turma, Matricula)
VALUES
('1', 'Neymar Jr.', '3A', '2026001'),
('2', 'Anitta', '3B', '2026002'),
('3', 'Larissa Manoela', '2A', '2026003'),
('4', 'Virginia Fonseca', '2B', '2026004'),
('5', 'Bruna Marquezine', '3A', '2026005'),
('6', 'Whindersson Nunes', '1A', '2026006'),
('7', 'Luisa Sonza', '3B', '2026007'),
('8', 'Maisa Silva', '2A', '2026008'),
('9', 'Rihanna', '1B', '2026009'),
('10', 'Taylor Swift', '3A', '2026010');

SELECT * FROM NovoAluno;

--------------------------------------------------------

INSERT INTO NewSala (Id_NewSala, Capacidade, Bloco, Numero, Diciplina)
VALUES
('1', 30, 1, '101', 'Matemática'),
('2', 35, 1, '102', 'Português'),
('3', 40, 1, '103', 'História'),
('4', 30, 1, '104', 'Geografia'),
('5', 35, 2, '201', 'Biologia'),
('6', 40, 2, '202', 'Química'),
('7', 30, 2, '203', 'Física'),
('8', 35, 2, '204', 'Inglês'),
('9', 25, 3, '301', 'Programação'),
('10', 40, 3, '302', 'Educação Física');

SELECT * FROM NewSala;

--------------------------------------------------------

INSERT INTO NewDiciplina (Id_NewDiciplina, Nome, Carga_Horaria)
VALUES
('1', 'Matemática', '80 horas'),
('2', 'Português', '80 horas'),
('3', 'História', '60 horas'),
('4', 'Geografia', '60 horas'),
('5', 'Biologia', '60 horas'),
('6', 'Química', '60 horas'),
('7', 'Física', '60 horas'),
('8', 'Inglês', '40 horas'),
('9', 'Programação', '100 horas'),
('10', 'Educação Física', '40 horas');

SELECT * FROM NewDiciplina;