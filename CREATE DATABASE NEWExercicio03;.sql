CREATE DATABASE NEWExercicio03;

USE DbDaphineSivieri;
GO

------------FILMES-------------

CREATE TABLE Filme (
    Id_Filme INT PRIMARY KEY,
    Titulo VARCHAR(100) NOT NULL,
    Sinopse VARCHAR(500) NOT NULL,
    Ano_Lancamento INT NOT NULL,
    Classificacao_Indicativa VARCHAR(10) NOT NULL,
    Duracao INT NOT NULL
);

CREATE TABLE Categoria (
    Id_Categoria INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL
);

----------------ISERINDO DADOS----------------

INSERT INTO Filme (Id_Filme, Titulo, Sinopse, Ano_Lancamento, Classificacao_Indicativa, Duracao)
VALUES
(1, 'A Origem', 'Um ladrão invade sonhos para roubar informações.', 2010, '14 anos', 148),
(2, 'Titanic', 'Um romance acontece durante uma viagem de navio.', 1997, '12 anos', 195),
(3, 'Toy Story', 'Brinquedos ganham vida quando ninguém está olhando.', 1995, 'Livre', 81),
(4, 'Jurassic Park', 'Cientistas criam um parque com dinossauros.', 1993, '12 anos', 127),
(5, 'Avatar', 'Um ex-fuzileiro participa de uma missão em outro planeta.', 2009, '12 anos', 162),
(6, 'Procurando Nemo', 'Um peixe atravessa o oceano para encontrar seu filho.', 2003, 'Livre', 100),
(7, 'Frozen', 'Duas irmãs enfrentam desafios em um reino congelado.', 2013, 'Livre', 102),
(8, 'Homem-Aranha', 'Um jovem ganha poderes especiais e combate o crime.', 2002, '10 anos', 121),
(9, 'O Rei Leão', 'Um jovem leão aprende a assumir seu lugar no reino.', 1994, 'Livre', 88),
(10, 'Interestelar', 'Astronautas viajam pelo espaço em busca de um novo lar.', 2014, '10 anos', 169);

SELECT * FROM Filme;


INSERT INTO Categoria(Id_Categoria, Nome)
VALUES
(1, 'Ação'),
(2, 'Comédia'),
(3, 'Aventura'),
(4, 'Romance'),
(5, 'Drama'),
(6, 'Terror'),
(7, 'Suspense'),
(8, 'Comédia Româtica'),
(10, 'Ficção Científica');

SELECT * FROM Categoria;
