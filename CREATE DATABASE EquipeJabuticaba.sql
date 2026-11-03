CREATE DATABASE EquipeJabuticaba
use DbEqupeJabuticaba;

CREATE TABLE Fornecedores (
    Cod_fornecedor INT IDENTITY (1,1) PRIMARY KEY,
    CNPJ VARCHAR(30) NOT NULL UNIQUE,
    Razao_Social VARCHAR(200) NOT NULL,
    Email VARCHAR(100),
    Telefone VARCHAR(20)
);

INSERT INTO Fornecedores (Cod_fornecedor, CNPJ, Razao_social, Email, Telefone)
VALUES
(1, '12.345.678/0001-90', 'Frutas do Campo Ltda', 'contato@frutascampo.com.br', '(11) 3456-7890'),
(2, '23.456.789/0001-01', 'Distribuidora Boa Safra', 'contato@boasafra.com.br', '(11) 2345-6789'),
(3, '34.567.890/0001-12', 'Comercial Pomar Verde', 'vendas@pomarverde.com.br', '(14) 3212-4567'),
(4, '45.678.901/0001-23', 'Hortifruti Primavera Ltda', 'contato@primavera.com.br', '(14) 3344-5566'),
(5, '56.789.012/0001-34', 'Alimentos Sabor Natural', 'vendas@sabornatural.com.br', '(16) 3222-3344'),
(6, '67.890.123/0001-45', 'Frutaria Tropical Ltda', 'contato@frutariatropical.com.br', '(17) 3111-2233'),
(7, '78.901.234/0001-56', 'Distribuidora Vale das Frutas', 'vendas@valedasfrutas.com.br', '(18) 3555-6677'),
(8, '89.012.345/0001-67', 'Comercial Monte Belo', 'contato@montebelo.com.br', '(19) 3666-7788'),
(9, '90.123.456/0001-78', 'Pomar das Delícias Ltda', 'vendas@pomardelicias.com.br', '(21) 3777-8899'),
(10, '10.234.567/0001-89', 'Mercado Frutas Frescas', 'contato@frutasfrescas.com.br', '(22) 3888-9900'),
(11, '11.234.567/0001-90', 'Comercial Nova Colheita', 'vendas@novacolheita.com.br', '(13) 3999-1122'),
(12, '22.345.678/0001-01', 'Hortifruti Bela Vista', 'contato@belavista.com.br', '(15) 3112-2233'),
(13, '33.456.789/0001-12', 'Distribuidora Campo Alegre', 'vendas@campoalegre.com.br', '(16) 3223-3344'),
(14, '44.567.890/0001-23', 'Frutas do Sol Ltda', 'contato@frutasdosol.com.br', '(17) 3334-4455'),
(15, '55.678.901/0001-34', 'Comercial Jardim das Frutas', 'vendas@jardimfrutas.com.br', '(18) 3445-5566'),
(16, '66.789.012/0001-45', 'Alimentos Terra Boa', 'contato@terraboa.com.br', '(19) 3556-6677'),
(17, '77.890.123/0001-56', 'Pomar Imperial Ltda', 'vendas@pomarimperial.com.br', '(12) 3667-7788'),
(18, '88.901.234/0001-67', 'Distribuidora Fruta Nobre', 'contato@frutanobre.com.br', '(14) 3778-8899'),
(19, '99.012.345/0001-78', 'Comercial Raízes do Campo', 'vendas@raizesdocampo.com.br', '(15) 3889-9900'),
(20, '10.345.678/0001-90', 'Hortifruti Recanto Verde', 'contato@recantoverde.com.br', '(11) 3990-1122');

select * from Fornecedores;


CREATE TABLE MateriaPrima(
    Cod_Mp INT IDENTITY(1,1) PRIMARY KEY,
    Nome VARCHAR(80) NOT NULL,
    Unid_Medida VARCHAR(100) NOT NULL,
    Estoque_minimo DECIMAL(10,2) NOT NULL
);

INSERT INTO MateriaPrima (Cod_Mp, nome, Unidade_medida, Estoque_minimo)
VALUES
(1, 'Farinha de Trigo', 'Kg', 20),
(2, 'Açúcar Refinado', 'Kg', 15),
(3, 'Sal Refinado', 'Kg', 5),
(4, 'Óleo de Soja', 'Litro', 10),
(5, 'Leite Integral', 'Litro', 20),
(6, 'Ovos', 'Dúzia', 10),
(7, 'Manteiga', 'Kg', 8),
(8, 'Fermento Biológico', 'Kg', 3),
(9, 'Chocolate em Pó', 'Kg', 10),
(10, 'Leite Condensado', 'Unidade', 15),
(11, 'Creme de Leite', 'Unidade', 12),
(12, 'Amido de Milho', 'Kg', 5),
(13, 'Queijo Mussarela', 'Kg', 10),
(14, 'Presunto', 'Kg', 8),
(15, 'Molho de Tomate', 'Unidade', 15),
(16, 'Arroz', 'Kg', 25),
(17, 'Feijão', 'Kg', 20),
(18, 'Macarrão', 'Kg', 15),
(19, 'Café em Pó', 'Kg', 10),
(20, 'Azeite de Oliva', 'Litro', 5);

select * from MateriaPrima;




CREATE TABLE OfertasFornecedor(
    Cod_fornecedor INT NOT NULL,
    Cod_Mp INT NOT NULL,
    Preco_Compra DECIMAL (10,2) NOT NULL,
    Prazo_Entrega_Dias INT NOT NULL,
    Oferta VARCHAR(20) DEFAULT 'Ativa',
    PRIMARY KEY (Cod_Fornecedor, Cod_MateriaPrima),
    FOREIGN KEY (Cod_Fornecedor) REFERENCES Fornecedores(Cod_Fornecedor),
    FOREIGN KEY (Cod_MateriaPrima) REFERENCES Materias_Primas(Cod_MateriaPrima),
    CONSTRAINT CHK_PrecoPositivo CHECK (Preco_Compra >= 0)
); 

INSERT INTO OfertasFornecedor
(Cod_fornecedor, Cod_Mp, Preco_Compra, Prazo_Entrega_Dias, Oferta)
VALUES
(1, 1, 4.50, 3, 'Farinha de trigo com desconto'),
(2, 2, 3.80, 2, 'Açúcar refinado em promoção'),
(3, 3, 2.20, 4, 'Sal refinado com preço especial'),
(4, 4, 6.90, 3, 'Óleo de soja promocional'),
(5, 5, 5.50, 2, 'Leite integral com desconto'),
(6, 6, 9.00, 1, 'Ovos com oferta por dúzia'),
(7, 7, 18.50, 4, 'Manteiga com preço reduzido'),
(8, 8, 12.00, 3, 'Fermento biológico em promoção'),
(9, 9, 14.90, 2, 'Chocolate em pó com desconto'),
(10, 10, 5.80, 3, 'Leite condensado promocional'),
(11, 11, 4.20, 2, 'Creme de leite com desconto'),
(12, 12, 7.50, 4, 'Amido de milho em oferta'),
(13, 13, 32.90, 3, 'Queijo mussarela promocional'),
(14, 14, 24.50, 2, 'Presunto com preço especial'),
(15, 15, 3.90, 1, 'Molho de tomate em promoção'),
(16, 16, 5.20, 3, 'Arroz com desconto por quilo'),
(17, 17, 7.80, 4, 'Feijão com preço reduzido'),
(18, 18, 4.60, 2, 'Macarrão em oferta'),
(19, 19, 16.90, 3, 'Café em pó com desconto'),
(20, 20, 35.00, 5, 'Azeite de oliva promocional');

select * from Fornecedores;




create table ExemplosCoerentes(
Id_ExmplosCoerentes VARCHAR(100) PRIMARY KEY,
fornecedor VARCHAR(100),
MateriaPrima varchar(100),
OfertasFornecedores VARCHAR(100),
);

INSERT into ExemplosCoerentes(Id_ExemplosCoerentes, fornecedor, MateriaPrima, OfertasFornecedores)
VALUES
(1, 'Abacate Esverdiado', 'Maçã', 'R$19,50'),
(2, 'Banana Madura', 'Laranja', 'R$8,90'),
(3, 'Morango Fresquinho', 'Uva', 'R$15,75'),
(4, 'Manga Palmer', 'Abacaxi', 'R$12,50'),
(5, 'Melancia Doce', 'Melão', 'R$10,00'),
(6, 'Pera Argentina', 'Maçã Verde', 'R$14,90'),
(7, 'Mamão Formosa', 'Banana Prata', 'R$7,50'),
(8, 'Uva Roxa', 'Morango', 'R$18,00'),
(9, 'Abacaxi Pérola', 'Manga', 'R$9,99'),
(10, 'Laranja Lima', 'Limão Siciliano', 'R$6,50'),
(11, 'Kiwi Importado', 'Pêssego', 'R$22,90'),
(12, 'Coco Verde', 'Melancia', 'R$5,00'),
(13, 'Maçã Fuji', 'Pera', 'R$11,75'),
(14, 'Ameixa Vermelha', 'Uva Verde', 'R$16,90'),
(15, 'Goiaba Madura', 'Mamão', 'R$8,50'),
(16, 'Maracujá Azedo', 'Limão', 'R$13,00'),
(17, 'Caqui Doce', 'Figo', 'R$17,50'),
(18, 'Pitaya Rosa', 'Kiwi', 'R$25,90'),
(19, 'Tangerina Ponkan', 'Laranja', 'R$7,99'),
(20, 'Jabuticaba Fresca', 'Amora', 'R$14,50');

select * from ExemplosCoerentes;
