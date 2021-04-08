CREATE DATABASE IF NOT EXISTS teste DEFAULT CHARACTER SET utf8;

DROP DATABASE IF EXISTS teste;

CREATE DATABASE IF NOT EXISTS vendas_sucos DEFAULT CHARACTER SET utf8mb4;

USE vendas_sucos;

CREATE TABLE produtos (
	CODIGO VARCHAR(10) NOT NULL,
	DESCRITOR VARCHAR(100) NULL,
	SABOR VARCHAR(50) NULL,
	TAMANHO VARCHAR(50) NULL,
	EMBALAGEM VARCHAR(50) NULL,
	PRECO_LISTA FLOAT NULL,
	PRIMARY KEY(CODIGO)
);

CREATE TABLE vendedores (
	MATRICULA VARCHAR(5) NOT NULL,
	NOME VARCHAR(100) NULL,
	BAIRRO VARCHAR(50) NULL,
	COMISSAO FLOAT NULL,
	DATA_ADMISSAO DATE NULL,
	FERIAS BIT(1) NULL,
	PRIMARY KEY(MATRICULA)
);

CREATE TABLE clientes (
	CPF VARCHAR(11) NOT NULL,
    NOME VARCHAR(100) NULL,
    ENDERECO VARCHAR(50) NULL,
    BAIRRO VARCHAR(50) NULL,
    CIDADE VARCHAR(50) NULL,
    ESTADO VARCHAR(50) NULL,
    CEP VARCHAR(8) NULL,
    DATA_NASCIMENTO DATE NULL,
    IDADE SMALLINT NULL,
    SEXO VARCHAR(1) NULL,
    LIMITE_CREDITO FLOAT NULL,
    VOLUME_COMPRA FLOAT NULL,
    PRIMEIRA_COMPRA BIT(1) NULL,
    PRIMARY KEY(CPF)
);

CREATE TABLE notas (
	NUMERO VARCHAR(5) NOT NULL,
	DATA DATE NULL,
	CPF VARCHAR(11) NOT NULL,
	MATRICULA VARCHAR(5) NOT NULL,
	IMPOSTO FLOAT NULL,
	PRIMARY KEY (NUMERO),
	CONSTRAINT FK_CLIENTES FOREIGN KEY(CPF) REFERENCES clientes(CPF),
	CONSTRAINT FK_VENDEDORES FOREIGN KEY(MATRICULA) REFERENCES vendedores(MATRICULA)
);

CREATE TABLE itens_notas (
	NUMERO VARCHAR(5) NOT NULL,
    CODIGO VARCHAR(10) NOT NULL,
    QUANTIDADE INT NULL,
    PRECO FLOAT NULL,
    PRIMARY KEY(NUMERO, CODIGO),
    CONSTRAINT FK_NOTAS FOREIGN KEY(NUMERO) REFERENCES notas(NUMERO),
    CONSTRAINT FK_PRODUTOS FOREIGN KEY(CODIGO) REFERENCES produtos(CODIGO)
);