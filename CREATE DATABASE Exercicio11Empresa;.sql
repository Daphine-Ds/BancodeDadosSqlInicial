CREATE DATABASE Exercicio11Empresa;

USE DbDaphineSivieri;
GO

---------------01:DEPARTAMENTOS-----------------

CREATE TABLE Departamento (
    Id_Departamento INT PRIMARY KEY,
    Nome VARCHAR(200) NOT NULL,
    Orcamento DECIMAL
);

CREATE TABLE Funcionario (
    Id_Funcionarios INT PRIMARY KEY,
    Matricula VARCHAR(50) NOT NULL,
    Nome VARCHAR(200) NOT NULL,
    Email VARCHAR(200) NOT NULL,
    CPF VARCHAR(14) NOT NULL,
    Cargo VARCHAR(100) NOT NULL,
    Data_de_admissao DATE
);

CREATE TABLE Telefone (
    Id_Telefone INT NOT NULL,
    Telefone VARCHAR(15) NOT NULL
);

---------------INSERINDO DADOS-----------------

INSERT INTO Departamento (Id_Departamento, Nome, Orcamento)
VALUES
(1, 'Desenvolvimento', 50000.00),
(2, 'Marketing', 30000.00),
(3, 'Vendas', 25000.00),
(4, 'Suporte', 20000.00),
(5, 'Logística', 35000.00),
(6, 'Recursos Humanos', 15000.00),
(7, 'Financeiro', 40000.00),
(8, 'Tecnologia da Informação', 60000.00),
(9, 'Jurídico', 18000.00),
(10, 'Produção', 45000.00);

SELECT * FROM Departamento;



INSERT INTO Funcionario (Id_Funcionarios, Matricula, Nome, Email, CPF, Cargo, Data_de_admissao)
VALUES
(1, 'MAT001', 'Ana Ram', 'ana@example.com', '111.111.111-11', 'Desenvolvedora', '2022-03-15'),
(2, 'MAT002', 'Pedro Santana', 'pedro@example.com', '222.222.222-22', 'Analista de Marketing', '2021-06-10'),
(3, 'MAT003', 'Maria Sandero', 'maria@example.com', '333.333.333-33', 'Vendedora', '2023-01-20'),
(4, 'MAT004', 'Joao Tesla', 'joao@example.com', '444.444.444-44', 'Analista de Suporte', '2020-08-05'),
(5, 'MAT005', 'Lara Mercedes', 'lara@example.com', '555.555.555-55', 'Logística', '2022-11-12'),
(6, 'MAT006', 'Gabriel Corsa', 'gabriel@example.com', '666.666.666-66', 'Analista Financeiro', '2019-04-18'),
(7, 'MAT007', 'Carla Duster', 'sofia@example.com', '777.777.777-77', 'Recursos Humanos', '2023-07-03'),
(8, 'MAT008', 'Lucas Capitiva', 'lucas@example.com', '888.888.888-88', 'Técnico de TI', '2021-09-22'),
(9, 'MAT009', 'Beatriz Fiat', 'beatriz@example.com', '999.999.999-99', 'Assistente Jurídica', '2024-02-14'),
(10, 'MAT010', 'Rafael Renaut', 'rafael@example.com', '123.456.789-00', 'Gerente de Produção', '2018-05-30');

SELECT * FROM Funcionario;


INSERT INTO Telefone (Id_Telefone, Telefone)
VALUES
(1, '(14) 99999-1111'),
(2, '(14) 98888-2222'),
(3, '(14) 97777-3333'),
(4, '(14) 96666-4444'),
(5, '(14) 95555-5555'),
(6, '(14) 94444-6666'),
(7, '(14) 93333-7777'),
(8, '(14) 92222-8888'),
(9, '(14) 91111-9999'),
(10, '(14) 90000-1234');

SELECT * FROM Telefone;

---------------02:PROJETOS-----------------

CREATE TABLE Projeto (
    Id_Projeto INT PRIMARY KEY,
    Nome VARCHAR(200) NOT NULL,
    Data_Inicio DATE NOT NULL,
    Data_Entrega DATE NOT NULL, 
    Status_Projeto VARCHAR(50) NOT NULL,
    Orcamento DECIMAL(10,2) NOT NULL
)

---------------INSERINDO DADOS-----------------

INSERT INTO Projeto (Id_Projeto, Nome, Data_Inicio, Data_Entrega, Status_Projeto, Orcamento)
VALUES
(1, 'Desenvolvimento de Site', '2026-01-10', '2026-04-10', 'Concluído', 15000.00),
(2, 'Aplicativo Mobile', '2026-02-01', '2026-08-30', 'Em andamento', 35000.00),
(3, 'Campanha de Marketing', '2026-03-15', '2026-05-15', 'Concluído', 8000.00),
(4, 'Sistema de Vendas', '2026-04-01', '2026-10-30', 'Em andamento', 25000.00),
(5, 'Modernização da Rede', '2026-05-10', '2026-12-10', 'Planejado', 18000.00),
(6, 'Treinamento de Equipe', '2026-06-01', '2026-07-15', 'Concluído', 5000.00),
(7, 'Sistema Financeiro', '2026-07-01', '2026-11-30', 'Em andamento', 40000.00),
(8, 'Reforma do Escritório', '2026-08-01', '2027-01-30', 'Planejado', 22000.00),
(9, 'Controle de Estoque', '2026-09-01', '2027-03-01', 'Planejado', 50000.00),
(10, 'Sistema de Atendimento', '2026-10-01', '2027-02-28', 'Em andamento', 12000.00);

SELECT * FROM Projeto;

---------------03:PRODUTOS-----------------

CREATE TABLE NewProduto (
    Id_NewProduto INT PRIMARY KEY,
    Nome VARCHAR(200),
    Quantidade_Minima INT NOT NULL,
    Descricao VARCHAR(200) NOT NULL, 
    Garantia_Meses INT NOT NULL
);

CREATE TABLE Fornecedor (
    Id_Fornecedor INT PRIMARY KEY,
    Email VARCHAR(200) NOT NULL,
    Razao_Social VARCHAR(100) NOT NULL,
    Telefone VARCHAR(15) NOT NULL,
    CNPJ VARCHAR(18) NOT NULL
);

---------------INSERINDO DADOS-----------------

INSERT INTO NewProduto (Id_NewProduto, Nome, Quantidade_Minima, Descricao, Garantia_Meses)
VALUES
(1, 'Notebook', 5, 'Notebook para uso empresarial', 12),
(2, 'Mouse', 10, 'Mouse óptico USB', 6),
(3, 'Teclado', 10, 'Teclado USB ABNT2', 12),
(4, 'Monitor', 5, 'Monitor LED de 24 polegadas', 12),
(5, 'Impressora', 3, 'Impressora multifuncional', 12),
(6, 'Webcam', 5, 'Webcam HD para reuniões', 6),
(7, 'Headset', 8, 'Fone com microfone integrado', 6),
(8, 'Roteador', 4, 'Roteador Wi-Fi dual band', 12),
(9, 'Projetor', 2, 'Projetor multimídia HD', 24),
(10, 'HD Externo', 5, 'HD externo com capacidade de 1 TB', 12);

SELECT * FROM NewProduto;



INSERT INTO Fornecedor (Id_Fornecedor, Email, Razao_Social, Telefone, CNPJ)
VALUES
(1, 'contato@techinfo.com.br', 'TechInfo Ltda', '(14) 99999-1001', '12.345.678/0001-90'),
(2, 'vendas@microplus.com.br', 'MicroPlus Ltda', '(14) 99999-1002', '23.456.789/0001-01'),
(3, 'contato@eletromax.com.br', 'EletroMax Ltda', '(11) 99999-1003', '34.567.890/0001-12'),
(4, 'suporte@digitaltec.com.br', 'DigitalTec Ltda', '(11) 99999-1004', '45.678.901/0001-23'),
(5, 'vendas@infocenter.com.br', 'InfoCenter Ltda', '(16) 99999-1005', '56.789.012/0001-34'),
(6, 'contato@smarttech.com.br', 'SmartTech Ltda', '(19) 99999-1006', '67.890.123/0001-45'),
(7, 'vendas@bytebrasil.com.br', 'Byte Brasil Ltda', '(21) 99999-1007', '78.901.234/0001-56'),
(8, 'contato@conectatec.com.br', 'ConectaTec Ltda', '(31) 99999-1008', '89.012.345/0001-67'),
(9, 'vendas@megacomputadores.com.br', 'Mega Computadores Ltda', '(41) 99999-1009', '90.123.456/0001-78'),
(10, 'contato@novadigital.com.br', 'Nova Digital Ltda', '(51) 99999-1010', '01.234.567/0001-89');

SELECT * FROM Fornecedor;

---------------04:DEPOSITOS-----------------

CREATE TABLE Depositos (
    Id_Depositos INT PRIMARY KEY,
    Endereco VARCHAR(100) NOT NULL,
    Cpacidade_Maxima INT NOT NULL,
    Cidade VARCHAR(150) NOT NULL
);

---------------INSERINDO DADOS-----------------

INSERT INTO Depositos
(Id_Depositos, Endereco, Cpacidade_Maxima, Cidade)
VALUES
(1, 'Rua Major Prado, 120', 500, 'Jaú'),
(2, 'Rua das Flores, 245', 300, 'Bauru'),
(3, 'Avenida Brasil, 350', 800, 'São Paulo'),
(4, 'Rua São João, 78', 400, 'Campinas'),
(5, 'Avenida Central, 500', 1000, 'Ribeirão Preto'),
(6, 'Rua Paraná, 180', 250, 'Marília'),
(7, 'Avenida Paulista, 1500', 1200, 'São Paulo'),
(8, 'Rua XV de Novembro, 210', 600, 'Curitiba'),
(9, 'Avenida Atlântica, 420', 900, 'Rio de Janeiro'),
(10, 'Rua das Palmeiras, 90', 350, 'Londrina');

SELECT * FROM Depositos;

---------------05:CLIENTES-----------------

CREATE TABLE NewCliente (
    Id_NewCliente INT PRIMARY KEY,
    Nome VARCHAR(200) NOT NULL,
    CPF VARCHAR(14) NOT NULL,
    Email VARCHAR(20) NOT NULL
);

CREATE TABLE NovoEndereco (
    Id_NovoEndereco INT PRIMARY KEY,
    Sequencia INT NOT NULL,
    Rua VARCHAR(50) NOT NULL,
    Cidade VARCHAR(50) NOT NULL,
    Bairro VARCHAR(50) NOT NULL,
    CEP VARCHAR(9),
    Numero_Casa VARCHAR(10),
    Ponto_Referencia VARCHAR(100)
);

---------------INSERINDO DADOS-----------------

INSERT INTO NewCliente (Id_NewCliente, Nome, CPF, Email)
VALUES
(1, 'Carlos Abacaxi', '123.456.789-01', 'carlos@gmail.com'),
(2, 'Mariana Banana', '234.567.890-12', 'mariana@gmail.com'),
(3, 'Felipe Morango', '345.678.901-23', 'felipe@gmail.com'),
(4, 'Camila Melancia', '456.789.012-34', 'camila@gmail.com'),
(5, 'Bruno Limão', '567.890.123-45', 'bruno@gmail.com'),
(6, 'Amanda Uva', '678.901.234-56', 'amanda@gmail.com'),
(7, 'Thiago Maçã', '789.012.345-67', 'thiago@gmail.com'),
(8, 'Isabela Pera', '890.123.456-78', 'isabela@gmail.com'),
(9, 'Eduardo Manga', '901.234.567-89', 'eduardo@gmail.com'),
(10, 'Fernanda Cereja', '012.345.678-90', 'fernanda@gmail.com');

SELECT * FROM NewCliente;



INSERT INTO NovoEndereco (Id_NovoEndereco, Sequencia, Rua, Cidade, Bairro, CEP, Numero_Casa, Ponto_Referencia)
VALUES
(1, 1, 'Rua das Margaridas', 'Jaú', 'Jardim das Paineiras', '17210-000', '140', 'Perto da praça'),
(2, 2, 'Avenida dos Estudantes', 'Bauru', 'Jardim Planalto', '17020-150', '325', 'Próximo à escola'),
(3, 3, 'Rua dos Girassóis', 'Marília', 'Jardim América', '17510-200', '67', 'Em frente ao mercado'),
(4, 4, 'Rua das Violetas', 'Botucatu', 'Vila Mariana', '18610-300', '210', 'Ao lado da farmácia'),
(5, 5, 'Avenida Central', 'Pederneiras', 'Centro', '17280-000', '55', 'Perto da igreja'),
(6, 6, 'Rua dos Pinheiros', 'Lençóis Paulista', 'Jardim Ubirama', '18680-100', '89', 'Próximo ao banco'),
(7, 7, 'Rua das Hortênsias', 'São Carlos', 'Vila Prado', '13574-250', '420', 'Perto do shopping'),
(8, 8, 'Avenida das Palmeiras', 'Araraquara', 'Jardim Universal', '14801-400', '30', 'Em frente à praça'),
(9, 9, 'Rua dos Lírios', 'Lins', 'Jardim Aeroporto', '16400-250', '175', 'Próximo à padaria'),
(10, 10, 'Rua das Bromélias', 'Ribeirão Preto', 'Jardim Paulista', '14090-200', '98', 'Ao lado do posto');

SELECT * FROM NovoEndereco

---------------06:PEDIDOS-----------------

CREATE TABLE Pedido (
    Id_Pedido INT PRIMARY KEY,
    Numero VARCHAR(10) NOT NULL,
    Data_Pedido DATE NOT NULL,
    Status_Pedido VARCHAR(50) NOT NULL
);

---------------INSERINDO DADOS-----------------

INSERT INTO Pedido (Id_Pedido, Numero, Data_Pedido, Status_Pedido)
VALUES
(1, 'PED001', '2026-10-01', 'Pendente'),
(2, 'PED002', '2026-10-02', 'Em andamento'),
(3, 'PED003', '2026-10-03', 'Concluído'),
(4, 'PED004', '2026-10-04', 'Cancelado'),
(5, 'PED005', '2026-10-05', 'Pendente'),
(6, 'PED006', '2026-10-06', 'Enviado'),
(7, 'PED007', '2026-10-07', 'Concluído'),
(8, 'PED008', '2026-10-08', 'Em andamento'),
(9, 'PED009', '2026-10-09', 'Enviado'),
(10, 'PED010', '2026-10-10', 'Pendente');

SELECT * FROM Pedido;

---------------07:FATURA-----------------

CREATE TABLE Fatura (
    Id_Fatura INT PRIMARY KEY,
    Numero VARCHAR(10) NOT NULL,
    Data_Emissao DATE NOT NULL,
    Situacao VARCHAR(50) NOT NULL,
    Valor DECIMAL(10,2) NOT NULL
);

CREATE TABLE Pagamento (
    Id_Pagamento INT PRIMARY KEY,
    Status_Pagamento VARCHAR(50) NOT NULL,
    Data_Pagamento DATE NOT NULL,
    Forma_Pagamento VARCHAR(20) NOT NULL,
    Valor DECIMAL(10,2) NOT NULL
);

---------------INSERINDO DADOS-----------------

INSERT INTO Fatura (Id_Fatura, Numero, Data_Emissao, Situacao, Valor)
VALUES
(1, 'FAT001', '2026-10-01', 'Paga', 150.00),
(2, 'FAT002', '2026-10-02', 'Pendente', 275.50),
(3, 'FAT003', '2026-10-03', 'Vencida', 320.90),
(4, 'FAT004', '2026-10-04', 'Paga', 89.99),
(5, 'FAT005', '2026-10-05', 'Pendente', 450.00),
(6, 'FAT006', '2026-10-06', 'Paga', 120.75),
(7, 'FAT007', '2026-10-07', 'Vencida', 680.40),
(8, 'FAT008', '2026-10-08', 'Pendente', 210.00),
(9, 'FAT009', '2026-10-09', 'Paga', 95.50),
(10, 'FAT010', '2026-10-10', 'Pendente', 530.25);

SELECT * FROM Fatura;



INSERT INTO Pagamento
(Id_Pagamento, Status_Pagamento, Data_Pagamento, Forma_Pagamento, Valor)
VALUES
(1, 'Aprovado', '2026-10-01', 'Pix', 150.00),
(2, 'Pendente', '2026-10-02', 'Cartao', 275.50),
(3, 'Aprovado', '2026-10-03', 'Dinheiro', 320.90),
(4, 'Recusado', '2026-10-04', 'Pix', 89.99),
(5, 'Aprovado', '2026-10-05', 'Cartao', 450.00),
(6, 'Pendente', '2026-10-06', 'Boleto', 120.75),
(7, 'Aprovado', '2026-10-07', 'Pix', 680.40),
(8, 'Aprovado', '2026-10-08', 'Dinheiro', 210.00),
(9, 'Pendente', '2026-10-09', 'Boleto', 95.50),
(10, 'Aprovado', '2026-10-10', 'Cartao', 530.25);

SELECT * FROM Pagamento

---------------08:ENTREGA-----------------

CREATE TABLE Entregador (
    Id_Entregador INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(14) NOT NULL,
    Telefone VARCHAR(15) NOT NULL,
    Veiculo VARCHAR(50) NOT NULL
);

CREATE TABLE NewEntrega (
    Id_NewEntrega INT PRIMARY KEY,
    Previsao_Entrega DATE NOT NULL,
    Data_Saida DATE NOT NULL,
    Data_Efetiva DATE,
    Status_Entrega VARCHAR(50) NOT NULL
);

---------------INSERINDO DADOS-----------------

INSERT INTO Entregador (Id_Entregador, Nome, CPF, Telefone, Veiculo)
VALUES
(1, 'Henrique Almeida', '123.456.789-01', '(14) 99111-2222', 'Bicicleta'),
(2, 'Larissa Martins', '234.567.890-12', '(14) 99222-3333', 'Moto'),
(3, 'Vinicius Pereira', '345.678.901-23', '(14) 99333-4444', 'Carro'),
(4, 'Gabriela Rodrigues', '456.789.012-34', '(14) 99444-5555', 'Van'),
(5, 'Murilo Ferreira', '567.890.123-45', '(14) 99555-6666', 'Moto'),
(6, 'Leticia Ribeiro', '678.901.234-56', '(14) 99666-7777', 'Carro'),
(7, 'Rodrigo Gomes', '789.012.345-67', '(14) 99777-8888', 'Van'),
(8, 'Nicole Carvalho', '890.123.456-78', '(14) 99888-9999', 'Bicicleta'),
(9, 'Samuel Barbosa', '901.234.567-89', '(14) 99000-1111', 'Moto'),
(10, 'Isadora Lopes', '012.345.678-90', '(14) 99000-2222', 'Carro');

SELECT * FROM Entregador;


INSERT INTO NewEntrega (Id_NewEntrega, Previsao_Entrega, Data_Saida, Data_Efetiva, Status_Entrega)
VALUES
(1, '2026-10-21', '2026-10-19', '2026-10-20', 'Concluída'),
(2, '2026-10-21', '2026-10-20', '2026-10-21', 'Concluída'),
(3, '2026-10-22', '2026-10-20', '2026-10-21', 'Concluída'),
(4, '2026-10-22', '2026-10-21', '2026-10-22', 'Concluída'),
(5, '2026-10-23', '2026-10-21', '2026-10-22', 'Concluída'),
(6, '2026-10-23', '2026-10-22', '2026-10-23', 'Concluída'),
(7, '2026-10-24', '2026-10-22', '2026-10-23', 'Concluída'),
(8, '2026-10-24', '2026-10-23', '2026-10-24', 'Concluída'),
(9, '2026-10-25', '2026-10-23', '2026-10-24', 'Concluída'),
(10, '2026-10-25', '2026-10-24', '2026-10-25', 'Concluída');

SELECT * FROM NewEntrega;


---------------09:SUPORTE-----------------

CREATE TABLE Chamado (
    Id_Chamado INT PRIMARY KEY,
    Status VARCHAR(50) NOT NULL,
    Assunto VARCHAR(100) NOT NULL,
    Descricao VARCHAR(200) NOT NULL,
    Prioridade VARCHAR(30) NOT NULL,
    Data_Abertura DATE NOT NULL
);

---------------INSERINDO DADOS-----------------

INSERT INTO Chamado (Id_Chamado, Status, Assunto, Descricao, Prioridade, Data_Abertura)
VALUES
(1, 'Aberto', 'Problema no sistema', 'Sistema não está iniciando', 'Alta', '2026-10-12'),
(2, 'Em andamento', 'Erro de login', 'Não consigo acessar minha conta', 'Média', '2026-10-13'),
(3, 'Fechado', 'Atualização', 'Solicitação de atualização concluída', 'Baixa', '2026-10-14'),
(4, 'Aberto', 'Internet lenta', 'Conexão apresenta lentidão', 'Alta', '2026-10-15'),
(5, 'Em andamento', 'Erro no cadastro', 'Não consigo cadastrar um usuário', 'Média', '2026-10-16'),
(6, 'Fechado', 'Troca de senha', 'Senha alterada com sucesso', 'Baixa', '2026-10-17'),
(7, 'Aberto', 'Falha no aplicativo', 'Aplicativo fecha sozinho', 'Alta', '2026-10-18'),
(8, 'Em andamento', 'Problema na impressão', 'Impressora não responde', 'Média', '2026-10-19'),
(9, 'Fechado', 'Acesso bloqueado', 'Acesso restabelecido', 'Alta', '2026-10-20'),
(10, 'Aberto', 'Solicitação de suporte', 'Preciso de ajuda com o equipamento', 'Baixa', '2026-10-21');

SELECT * FROM Chamado;
