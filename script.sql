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
  VEI_QUILOMETRAGEM INT NOT NULL,
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
  ODS_DATACRIACAO DATE NOT NULL,
  ODS_DATAFINALIZAR DATE NOT NULL,
  ODS_DESCRICAO VARCHAR(200) NOT NULL,
  VEI_ID INT NOT NULL,
    FOREIGN KEY (VEI_ID)
    REFERENCES VEI_VEICULO (VEI_ID)
    );
  
-- Table END_ENDERECO
CREATE TABLE END_ENDERECO (
  `END_ID` INT PRIMARY KEY AUTO_INCREMENT,
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
