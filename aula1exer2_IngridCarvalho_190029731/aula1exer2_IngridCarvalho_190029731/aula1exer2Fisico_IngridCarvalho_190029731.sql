-- -----------< aula1exer2 > -----------
--
--               SCRIPT FISICO (DDL)
-- Data criacao..........: 04/09/2023
-- Autor(es).............: Ingrid da Silva Carvalho
-- Baco de Dados.........: MySQL 8.0
-- Base de Dados.........: aula1exer2
--
-- PROJETO => 01 Base de Dados
--            08 Tabelas
--
-- -------------------------------------------------

CREATE DATABASE IF NOT EXISTS aula1exer2;

USE aula1exer2;

CREATE TABLE PESSOA (
    nome CHAR(50) NOT NULL,
    senha CHAR(50) NOT NULL,
    cpf bigint(11) NOT NULL,
    CONSTRAINT PESSOA_PK PRIMARY KEY (cpf)
)ENGINE InnoDB;

CREATE TABLE GERENTE (
    formacaoEscolar CHAR(50) NOT NULL,
    idGerente INT NOT NULL AUTO_INCREMENT,
    email CHAR(50) NOT NULL,
    cpf bigint(11), 
    CONSTRAINT GERENTE_PK PRIMARY KEY (idGerente),
    CONSTRAINT GERENTE_PESSOA_FK 
		FOREIGN KEY (cpf)
		REFERENCES PESSOA (cpf)
		ON DELETE CASCADE
        ON UPDATE CASCADE
)ENGINE InnoDB AUTO_INCREMENT = 1;

CREATE TABLE EMPREGADO (
    matricula INT NOT NULL,
    cep INT NOT NULL,
    estado CHAR(50) NOT NULL,
    cidade CHAR(50) NOT NULL,
    bairro CHAR(50) NOT NULL,
    rua CHAR(50) NOT NULL,
    numero INT NOT NULL,
    cpf bigint(11) NOT NULL,
    CONSTRAINT EMPREGADO_PK PRIMARY KEY (matricula),
	CONSTRAINT EMPREGADO_PESSOA_FK 
		FOREIGN KEY (cpf)
		REFERENCES PESSOA (cpf)
		ON DELETE CASCADE
        ON UPDATE CASCADE
)ENGINE InnoDB;

CREATE TABLE VENDA (
    dataVenda date NOT NULL,
    precoTotal DECIMAL(10,2) NOT NULL,
    idVenda INT NOT NULL AUTO_INCREMENT,
    matricula INT NOT NULL,
    CONSTRAINT VENDA_PK PRIMARY KEY (idVenda),
    CONSTRAINT VENDA_EMPREGADO_FK 
		FOREIGN KEY (matricula)
		REFERENCES EMPREGADO (matricula)
		ON DELETE CASCADE
		ON UPDATE CASCADE
)ENGINE InnoDB AUTO_INCREMENT = 1;

CREATE TABLE PRODUTO (
    preco DECIMAL(10 , 2 ) NOT NULL,
    codigo INT NOT NULL AUTO_INCREMENT,
    CONSTRAINT PRODUTO_PK PRIMARY KEY (codigo)
)ENGINE InnoDB AUTO_INCREMENT = 1;

CREATE TABLE telefone (
    matricula INT NOT NULL,
    telefone INT NOT NULL,
    CONSTRAINT telefone_UK UNIQUE (telefone),
    CONSTRAINT telefone_EMPREGADO_FK 
		FOREIGN KEY (matricula)
		REFERENCES EMPREGADO (matricula)
        ON DELETE CASCADE
        ON UPDATE CASCADE
)ENGINE InnoDB;

CREATE TABLE supervisiona (
    idGerente INT NOT NULL,
    matricula INT NOT NULL,
    CONSTRAINT supervisiona_GERENTE_FK 
		FOREIGN KEY (idGerente)
		REFERENCES GERENTE (idGerente)
		ON DELETE RESTRICT
        ON UPDATE RESTRICT,
	CONSTRAINT supervisiona_EMPREGADO_FK 
		FOREIGN KEY (matricula)
		REFERENCES EMPREGADO (matricula)
		ON DELETE RESTRICT
        ON UPDATE RESTRICT
)ENGINE InnoDB;

CREATE TABLE possui (
    idVenda INT NOT NULL, 
    codigo INT NOT NULL,
    quantidade INT NOT NULL,
    CONSTRAINT possui_VENDA_FK 
		FOREIGN KEY (idVenda)
		REFERENCES VENDA (idVenda)
		ON DELETE RESTRICT
        ON UPDATE RESTRICT,
	CONSTRAINT possui_PRODUTO_FK 
		FOREIGN KEY (codigo)
		REFERENCES PRODUTO (codigo)
		ON DELETE RESTRICT
        ON UPDATE RESTRICT
)ENGINE InnoDB;