-- ---------------------   << Exercício 1 da Aula 3 >>   ---------------------
--
--                    		SCRIPT DE CRIAÇÃO (DDL)
-- 
-- Data Criacao ...........: 02/10/2023
-- Autor(es) ..............: Erick Melo Vidal de Oliveira e Ingrid Carvalho
-- Banco de Dados .........: MySQL8.0
-- Base de Dados(nome) ....: aula3exer1Evolucao2
-- 
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
-- 		   => 03 Papeis
-- 		   => 05 Usuarios
--         => 4 consultas
-- 
--  Alterações 
--         => inclusão dos atributos dataPlantao e horarioPlantao
--         => Alteração da unique aloca_UK
-- -----------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS aula3exer1Evolucao2
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;
USE aula3exer1Evolucao2;


CREATE TABLE SETOR (
    idSetor INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    
    CONSTRAINT SETOR_PK PRIMARY KEY (idSetor)
) ENGINE = InnoDB auto_increment = 1;

CREATE TABLE ESPECIALIDADE (
    idEspecialidade INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    
    CONSTRAINT ESPECIALIDADE_PK
		PRIMARY KEY (idEspecialidade)
) ENGINE = InnoDB auto_increment = 1;

CREATE TABLE PLANTONISTA (
    matricula BIGINT NOT NULL,
    nomeCompleto VARCHAR(50) NOT NULL,
    sexo ENUM('M', 'F') NOT NULL,

	CONSTRAINT PLANTONISTA_PK PRIMARY KEY (matricula)
) ENGINE = InnoDB;

CREATE TABLE aloca (
	matricula BIGINT NOT NULL,
    idSetor INT NOT NULL,
    horarioPlantao TIME,
    dataPlantao DATE,
    
    CONSTRAINT aloca_PLANTONISTA_FK
		FOREIGN KEY (matricula)
        REFERENCES PLANTONISTA(matricula) 
			ON DELETE RESTRICT 
            ON UPDATE CASCADE, 
	CONSTRAINT aloca_SETOR_FK
		FOREIGN KEY (idSetor)
        REFERENCES SETOR(idSetor) 
			ON DELETE RESTRICT 
            ON UPDATE CASCADE,
	CONSTRAINT aloca_UK
		UNIQUE KEY (matricula, horarioPlantao, dataPlantao)
) ENGINE=InnoDB;

CREATE TABLE possui (
    matricula BIGINT NOT NULL,
    idEspecialidade INT DEFAULT 1,
    
    CONSTRAINT possui_PLANTONISTA_FK
		FOREIGN KEY (matricula)
        REFERENCES PLANTONISTA(matricula) 
			ON DELETE RESTRICT 
            ON UPDATE CASCADE, 
	CONSTRAINT possui_ESPECIALIDADE_FK
		FOREIGN KEY (idEspecialidade)
        REFERENCES ESPECIALIDADE(idEspecialidade)
			ON DELETE RESTRICT 
            ON UPDATE CASCADE
) ENGINE=InnoDB;
