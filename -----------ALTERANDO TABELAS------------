-----------ALTERANDO TABELAS------------
----------------------------------------
-----------ADICIONAR COLUNA-------------

CREATE TABLE Teste (
    Id_Teste INT PRIMARY KEY, --CHAVE PRIMARIA
    descricao VARCHAR(50)
);

-----------INSERINDO DADOS NAS TABELAS------------

INSERT INTO Teste(Id_Teste, descricao) 
VALUES (1, 'Primeiro reigistro');

SELECT * FROM Teste;

-----------CRIAR TABELA---------------------------
ALTER TABLE Teste 
ADD Observacao VARCHAR(100) NOT NULL;

DROP TABLE Teste;

INSERT INTO Teste  (Id_Teste, descricao, Observacao)
VALUES ('2','Regidtro criado depois', 'Primeira observação');

SELECT * FROM Teste;

INSERT INTO Teste  (Id_Teste, descricao, Observacao)
VALUES ('3','Regidtro criado depois', 'Terceira observação');


SELECT * FROM Teste;

---ALTERACAO DE DADOS E INSERCAO---
UPDATE Teste
SET Observacao = 'Registro revisado pelo professor'
WHERE Id_Teste=1;

---- DELETAR TABELAS:
DROP TABLE Teste;
GO

SELECT * FROM Teste;

SELECT name From sys.tables;
GO
