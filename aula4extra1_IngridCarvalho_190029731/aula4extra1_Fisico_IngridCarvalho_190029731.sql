-- -----------< aula4extra1 > -----------
--
-- SCRIPT DE CRIAÇÃO (DDL)
-- Data criacao..........: 04/09/2023
-- Autor(es).............: Ingrid da Silva Carvalho
-- Baco de Dados.........: MySQL 8.0
-- Base de Dados.........: aula4extra1
--
-- PROJETO => 01 Base de Dados
-- 02 Tabelas
--
-- -------------------------------------------------

CREATE DATABASE IF NOT EXISTS aula4extra1;

USE aula4extra1;

CREATE TABLE ESTADO(
sigla CHAR(2),
nome VARCHAR(20),
CONSTRAINT ESTADO_PK PRIMARY KEY (sigla),
CONSTRAINT ESTADO_UK UNIQUE (nome)
)ENGINE=InnoDB;

CREATE TABLE CIDADE(
codigo INT(5) AUTO_INCREMENT,
nome VARCHAR(50),
sigla CHAR(2),
habitantes INT UNSIGNED,
CONSTRAINT CIDADE_PK PRIMARY KEY (codigo),
CONSTRAINT CIDADE_ESTADO_FK FOREIGN KEY (sigla) REFERENCES ESTADO(sigla)
ON UPDATE RESTRICT
ON DELETE RESTRICT,
CONSTRAINT CIDADE_UK UNIQUE (sigla, nome)
)ENGINE=InnoDB AUTO_INCREMENT=1;
