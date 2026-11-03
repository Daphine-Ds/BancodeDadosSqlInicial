CREATE DATABASE NEWExercicio04;

USE DbDaphineSivieri;
GO

-------------PLAYLIST------------

CREATE TABLE NewStudent0 (
    Id_NewStudent0 INT PRIMARY KEY,
    Matricula VARCHAR(20) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Turma VARCHAR(20) NOT NULL
);

CREATE TABLE Musicas0 (
    Id_Musicas0 INT PRIMARY KEY,
    Titulo VARCHAR(100) NOT NULL,
    Duracao INT NOT NULL,
    Artista VARCHAR(100) NOT NULL,
    Album VARCHAR(100) NOT NULL
);

----------------ISERINDO DADOS----------------

INSERT INTO NewStudent0 (Id_NewStudent0, Matricula, Nome, Turma)
VALUES
(1, '20261001', 'Yasmin Oliveira', '1A'),
(2, '20261002', 'Enzo Carvalho', '1B'),
(3, '20261003', 'Valentina Ribeiro', '2A'),
(4, '20261004', 'Heitor Nascimento', '2B'),
(5, '20261005', 'Melissa Cardoso', '3A'),
(6, '20261006', 'Breno Monteiro', '3B'),
(7, '20261007', 'Lavínia Barros', '1A'),
(8, '20261008', 'Cauã Fernandes', '2A'),
(9, '20261009', 'Eloá Teixeira', '2B'),
(10, '20261010', 'Nicolas Azevedo', '3A');

SELECT * FROM NewStudent0;



INSERT INTO Musicas0 (Id_Musicas0, Titulo, Duracao, Artista, Album)
VALUES
(1, 'Evidencias', 280, 'Chitaozinho e Xororo', 'Cowboy do Asfalto'),
(2, 'Amei Te Ver', 210, 'Tiago Iorc', 'Troco Likes'),
(3, 'Pais e Filhos', 300, 'Legiao Urbana', 'As Quatro Estacoes'),
(4, 'Velha Infancia', 250, 'Tribalistas', 'Tribalistas'),
(5, 'Trevo', 220, 'ANAVITORIA', 'ANAVITORIA'),
(6, 'Garota de Ipanema', 180, 'Tom Jobim', 'The Composer of Desafinado'),
(7, 'Ainda Bem', 240, 'Marisa Monte', 'O Que Voce Quer Saber de Verdade'),
(8, 'Tempo Perdido', 300, 'Legiao Urbana', 'Dois'),
(9, 'Meu Abrigo', 190, 'Melim', 'Melim'),
(10, 'Trem-Bala', 210, 'Ana Vilela', 'Ana Vilela');

SELECT * FROM Musicas0;