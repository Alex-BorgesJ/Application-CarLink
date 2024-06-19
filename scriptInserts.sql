-- Create DataBaseCarlink
CREATE DATABASE DBCarlink;
USE DBCarlink ;

-- Table CLI_CLIENTE
CREATE TABLE CLI_CLIENTE (
  CLI_ID INT PRIMARY KEY AUTO_INCREMENT,
  CLI_NOME VARCHAR(80) NOT NULL,
  CLI_EMAIL VARCHAR(45) NOT NULL UNIQUE,
  CLI_TELEFONE VARCHAR(45) NOT NULL,
  CLI_CPF VARCHAR(11) NOT NULL
  );

-- Table MEC_MECANICO
CREATE TABLE MEC_MECANICO (
  MEC_ID INT PRIMARY KEY AUTO_INCREMENT,
  MEC_NOME VARCHAR(80) NOT NULL,
  MEC_EMAIL VARCHAR(45) NOT NULL,
  MEC_TELEFONE VARCHAR(45) NOT NULL,
  MEC_FUNCAO VARCHAR(45) NOT NULL,
  MEC_SENHA VARCHAR(45) NOT NULL
  );

-- Table COR_CORES
CREATE TABLE COR_CORES (
  COR_ID INT PRIMARY KEY AUTO_INCREMENT,
  COR_NOME VARCHAR(45) NOT NULL
  );

-- Table `EI_VEICULO
CREATE TABLE VEI_VEICULO (
  VEI_ID INT PRIMARY KEY AUTO_INCREMENT,
  VEI_ANO INT NOT NULL,
  VEI_MODELO VARCHAR(45) NOT NULL,
  VEI_MARCA VARCHAR(45) NOT NULL,
  VEI_PLACA VARCHAR(45) NOT NULL,
  VEI_CHASSI VARCHAR(45) NOT NULL,
  VEI_QUILOMETRAGEM VARCHAR(20) NOT NULL,
  CLI_ID INT,
  COR_ID INT,
    FOREIGN KEY (CLI_ID)
    REFERENCES CLI_CLIENTE (CLI_ID),
    FOREIGN KEY (COR_ID)
    REFERENCES COR_CORES (COR_ID)
    );

-- Table ODS_ORDEM_SERVICO
CREATE TABLE ODS_ORDEM_SERVICO (
  ODS_ID INT PRIMARY KEY AUTO_INCREMENT,
  ODS_DESCRICAO VARCHAR(200) NOT NULL,
  ODS_STATUS ENUM('EM ESPERA','EM ANALISE' ,'PRONTO', 'EM PROCESSO'),
  ODS_DATAEMISSAO DATE,
  VEI_ID INT NOT NULL,
  FOREIGN KEY (VEI_ID)
  REFERENCES VEI_VEICULO (VEI_ID)
    );
  
-- Table END_ENDERECO
CREATE TABLE END_ENDERECO (
  END_ID INT PRIMARY KEY AUTO_INCREMENT,
  END_CIDADE VARCHAR(45) NOT NULL,
  END_ESTADO VARCHAR(45) NOT NULL,
  END_BAIRRO VARCHAR(45) NOT NULL,
  END_RUA VARCHAR(50) NOT NULL,
  END_NUMERO VARCHAR(5) NOT NULL,
  END_CEP INT,
  CLI_ID INT NOT NULL,
    FOREIGN KEY (CLI_ID)
    REFERENCES CLI_CLIENTE (CLI_ID)
);

CREATE TABLE PLN_PLANO(
	PLN_ID INT PRIMARY KEY AUTO_INCREMENT,
    PLN_NOME VARCHAR(45) NOT NULL,
    PLN_PRECO DOUBLE NOT NULL
);

CREATE TABLE USU_USUARIO(
	USU_ID INT PRIMARY KEY AUTO_INCREMENT,
    USU_NOME VARCHAR(15) NOT NULL,
    USU_SOBRENOME VARCHAR(20) NOT NULL,
    USU_EMPRESA VARCHAR(30) NOT NULL,
    USU_CPF VARCHAR(20) NOT NULL,
    USU_CNPJ VARCHAR(20) NOT NULL,
    USU_EMAIL VARCHAR(45) NOT NULL,
    USU_TEL VARCHAR(20) NOT NULL,
    USU_SENHA VARCHAR(200) NOT NULL
);

-- INSERT's
-- Insert para Clientes
INSERT INTO CLI_CLIENTE (CLI_NOME, CLI_EMAIL, CLI_TELEFONE, CLI_CPF) VALUES
('João Silva', 'joao.silva@example.com', '1234567890', '12345678901'),
('Maria Oliveira', 'maria.oliveira@example.com', '2345678901', '23456789012'),
('Carlos Pereira', 'carlos.pereira@example.com', '3456789012', '34567890123'),
('Ana Souza', 'ana.souza@example.com', '4567890123', '45678901234'),
('Lucas Santos', 'lucas.santos@example.com', '5678901234', '56789012345'),
('Fernanda Costa', 'fernanda.costa@example.com', '6789012345', '67890123456'),
('Rafael Alves', 'rafael.alves@example.com', '7890123456', '78901234567'),
('Juliana Lima', 'juliana.lima@example.com', '8901234567', '89012345678'),
('Bruno Rocha', 'bruno.rocha@example.com', '9012345678', '90123456789'),
('Gabriela Ribeiro', 'gabriela.ribeiro@example.com', '0123456789', '01234567890'),
('Pedro Gonçalves', 'pedro.goncalves@example.com', '1234567891', '12345678911'),
('Claudia Ferreira', 'claudia.ferreira@example.com', '2345678910', '23456789102'),
('Marcos Martins', 'marcos.martins@example.com', '3456789102', '34567891023'),
('Beatriz Almeida', 'beatriz.almeida@example.com', '4567891023', '45678910234'),
('Felipe Pinto', 'felipe.pinto@example.com', '5678910234', '56789102345'),
('Isabela Cardoso', 'isabela.cardoso@example.com', '6789102345', '67891023456'),
('Rodrigo Batista', 'rodrigo.batista@example.com', '7891023456', '78910234567'),
('Camila Azevedo', 'camila.azevedo@example.com', '8910234567', '89102345678'),
('Thiago Freitas', 'thiago.freitas@example.com', '9102345678', '91023456789'),
('Larissa Moreira', 'larissa.moreira@example.com', '1023456789', '10234567890');


-- Insert para Mecanico
INSERT INTO MEC_MECANICO (MEC_NOME, MEC_EMAIL, MEC_TELEFONE, MEC_FUNCAO, MEC_SENHA) VALUES
('João Silva', 'joao.mec@example.com', '1234567890', 'Mecânico Chefe', 'senha123'),
('Maria Oliveira', 'maria.mec@example.com', '2345678901', 'Mecânico', 'senha123'),
('Carlos Pereira', 'carlos.mec@example.com', '3456789012', 'Eletricista', 'senha123'),
('Ana Souza', 'ana.mec@example.com', '4567890123', 'Pintor', 'senha123'),
('Lucas Santos', 'lucas.mec@example.com', '5678901234', 'Mecânico', 'senha123'),
('Fernanda Costa', 'fernanda.mec@example.com', '6789012345', 'Mecânico', 'senha123'),
('Rafael Alves', 'rafael.mec@example.com', '7890123456', 'Mecânico', 'senha123'),
('Juliana Lima', 'juliana.mec@example.com', '8901234567', 'Mecânico', 'senha123'),
('Bruno Rocha', 'bruno.mec@example.com', '9012345678', 'Mecânico', 'senha123'),
('Gabriela Ribeiro', 'gabriela.mec@example.com', '0123456789', 'Mecânico', 'senha123'),
('Pedro Gonçalves', 'pedro.mec@example.com', '1234567891', 'Mecânico', 'senha123'),
('Claudia Ferreira', 'claudia.mec@example.com', '2345678910', 'Mecânico', 'senha123'),
('Marcos Martins', 'marcos.mec@example.com', '3456789102', 'Mecânico', 'senha123'),
('Beatriz Almeida', 'beatriz.mec@example.com', '4567891023', 'Mecânico', 'senha123'),
('Felipe Pinto', 'felipe.mec@example.com', '5678910234', 'Mecânico', 'senha123'),
('Isabela Cardoso', 'isabela.mec@example.com', '6789102345', 'Mecânico', 'senha123'),
('Rodrigo Batista', 'rodrigo.mec@example.com', '7891023456', 'Mecânico', 'senha123'),
('Camila Azevedo', 'camila.mec@example.com', '8910234567', 'Mecânico', 'senha123'),
('Thiago Freitas', 'thiago.mec@example.com', '9102345678', 'Mecânico', 'senha123'),
('Larissa Moreira', 'larissa.mec@example.com', '1023456789', 'Mecânico', 'senha123');


-- Insert para Cores
INSERT INTO COR_CORES (COR_NOME) VALUES
('Preto'),
('Branco'),
('Prata'),
('Cinza'),
('Vermelho'),
('Azul'),
('Verde'),
('Amarelo'),
('Laranja'),
('Marrom'),
('Roxo'),
('Rosa'),
('Bege'),
('Dourado'),
('Prateado'),
('Cobre'),
('Borgonha'),
('Azul Claro'),
('Verde Claro'),
('Preto Fosco');

-- Insert para Veículo
INSERT INTO VEI_VEICULO (VEI_ANO, VEI_MODELO, VEI_MARCA, VEI_PLACA, VEI_CHASSI, VEI_QUILOMETRAGEM, CLI_ID, COR_ID) VALUES
(2020, 'Civic', 'Honda', 'ABC1234', 'CHS1234567', 15000, 1, 1),
(2019, 'Corolla', 'Toyota', 'DEF5678', 'CHS2345678', 20000, 2, 2),
(2018, 'Fiesta', 'Ford', 'GHI9012', 'CHS3456789', 25000, 3, 3),
(2020, 'Cruze', 'Chevrolet', 'JKL3456', 'CHS4567890', 10000, 4, 4),
(2021, 'Onix', 'Chevrolet', 'MNO7890', 'CHS5678901', 5000, 5, 5),
(2017, 'HB20', 'Hyundai', 'PQR2345', 'CHS6789012', 30000, 6, 6),
(2016, 'Kwid', 'Renault', 'STU6789', 'CHS7890123', 40000, 7, 7),
(2015, 'Polo', 'Volkswagen', 'VWX1234', 'CHS8901234', 35000, 8, 8),
(2019, 'Argo', 'Fiat', 'YZA5678', 'CHS9012345', 22000, 9, 9),
(2020, 'Compass', 'Jeep', 'BCD9012', 'CHS0123456', 11000, 10, 10),
(2021, 'T-Cross', 'Volkswagen', 'EFG3456', 'CHS1234567', 7000, 11, 11),
(2018, 'Kicks', 'Nissan', 'HIJ7890', 'CHS2345678', 26000, 12, 12),
(2017, 'Renegade', 'Jeep', 'KLM2345', 'CHS3456789', 38000, 13, 13),
(2016, 'Duster', 'Renault', 'NOP6789', 'CHS4567890', 42000, 14, 14),
(2015, 'EcoSport', 'Ford', 'QRS1234', 'CHS5678901', 46000, 15, 15),
(2019, 'Virtus', 'Volkswagen', 'TUV5678', 'CHS6789012', 21000, 16, 16),
(2018, 'Cronos', 'Fiat', 'WXY9012', 'CHS7890123', 24000, 17, 17),
(2020, 'Spin', 'Chevrolet', 'ZAB3456', 'CHS8901234', 13000, 18, 18),
(2021, 'S10', 'Chevrolet', 'CDE7890', 'CHS9012345', 8000, 19, 19),
(2017, 'Tucson', 'Hyundai', 'FGH2345', 'CHS0123456', 34000, 20, 20);

-- Insert para Ordem de Serviço
INSERT INTO ODS_ORDEM_SERVICO (ODS_DESCRICAO, ODS_STATUS, ODS_DATAEMISSAO, VEI_ID) 
VALUES 
    ('Troca de óleo 1', 'EM ESPERA', '2024-05-29', 1),
    ('Reparo no motor 1', 'EM ANALISE', '2024-05-28', 2),
    ('Troca de pneus 1', 'PRONTO', '2024-05-27', 3),
    ('Reparo na transmissão 1', 'EM PROCESSO', '2024-05-26', 4),
    ('Alinhamento e balanceamento 1', 'EM ESPERA', '2024-05-25', 5),
    ('Limpeza interna 1', 'EM ANALISE', '2024-05-24', 6),
    ('Pintura 1', 'PRONTO', '2024-05-23', 7),
    ('Reparo na suspensão 1', 'EM PROCESSO', '2024-05-22', 8),
    ('Troca de filtros 1', 'EM ESPERA', '2024-05-21', 9),
    ('Troca de óleo 2', 'EM ESPERA', '2024-05-29', 1),
    ('Reparo no motor 2', 'EM ANALISE', '2024-05-28', 2),
    ('Troca de pneus 2', 'PRONTO', '2024-05-27', 3),
    ('Reparo na transmissão 2', 'EM PROCESSO', '2024-05-26', 4),
    ('Alinhamento e balanceamento 2', 'EM ESPERA', '2024-05-25', 5),
    ('Limpeza interna 2', 'EM ANALISE', '2024-05-24', 6),
    ('Pintura 2', 'PRONTO', '2024-05-23', 7),
    ('Reparo na suspensão 2', 'EM PROCESSO', '2024-05-22', 8),
    ('Troca de filtros 2', 'EM ESPERA', '2024-05-21', 9),
    ('Troca de óleo 3', 'EM ESPERA', '2024-05-29', 1),
    ('Reparo no motor 3', 'EM ANALISE', '2024-05-28', 2);


-- Insert para Endereços
INSERT INTO END_ENDERECO (END_CIDADE, END_ESTADO, END_BAIRRO, END_RUA, END_NUMERO, END_CEP, CLI_ID) VALUES
('São Paulo', 'SP', 'Centro', 'Rua A', '123', '01001000', 1),
('Rio de Janeiro', 'RJ', 'Copacabana', 'Rua B', '456', '22021000', 2),
('Belo Horizonte', 'MG', 'Savassi', 'Rua C', '789', '30140000', 3),
('Porto Alegre', 'RS', 'Moinhos de Vento', 'Rua D', '101', '90560000', 4),
('Curitiba', 'PR', 'Batel', 'Rua E', '202', '80420000', 5),
('Florianópolis', 'SC', 'Centro', 'Rua F', '303', '88010000', 6),
('Salvador', 'BA', 'Barra', 'Rua G', '404', '40140000', 7),
('Recife', 'PE', 'Boa Viagem', 'Rua H', '505', '51020000', 8),
('Fortaleza', 'CE', 'Meireles', 'Rua I', '606', '60160000', 9),
('Brasília', 'DF', 'Asa Sul', 'Rua J', '707', '70290000', 10),
('Manaus', 'AM', 'Centro', 'Rua K', '808', '69010000', 11),
('Belém', 'PA', 'Nazaré', 'Rua L', '909', '66040000', 12),
('Goiânia', 'GO', 'Setor Bueno', 'Rua M', '1010', '74210000', 13),
('Campinas', 'SP', 'Cambuí', 'Rua N', '1111', '13024000', 14),
('Vitória', 'ES', 'Praia do Canto', 'Rua O', '1212', '29055000', 15),
('São Luís', 'MA', 'Renascença', 'Rua P', '1313', '65060000', 16),
('Natal', 'RN', 'Ponta Negra', 'Rua Q', '1414', '59090000', 17),
('João Pessoa', 'PB', 'Tambaú', 'Rua R', '1515', '58039000', 18),
('Maceió', 'AL', 'Pajuçara', 'Rua S', '1616', '57030100', 19),
('Aracaju', 'SE', 'Atalaia', 'Rua T', '1717', '49035000', 20);

-- SELECT's

SELECT * FROM CLI_CLIENTE;
SELECT * FROM MEC_MECANICO;
SELECT * FROM COR_CORES;
SELECT * FROM VEI_VEICULO;
SELECT * FROM ODS_ORDEM_SERVICO;
SELECT * FROM END_ENDERECO;
SELECT * FROM USU_USUARIO;
SELECT * FROM PLN_PLANO;
