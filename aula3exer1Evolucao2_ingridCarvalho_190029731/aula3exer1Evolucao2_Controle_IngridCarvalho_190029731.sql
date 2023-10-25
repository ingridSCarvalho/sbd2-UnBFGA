-- ---------------------   << Exercício 1 da Aula 3 >>   ---------------------
--
--                    		SCRIPT CONTROLE (DDL/DCL)
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
-- -----------------------------------------------------------------

USE aula3exer1Evolucao2;

-- Criacao de papeis
CREATE ROLE admin;
CREATE ROLE usuario;
CREATE ROLE gestor;

-- Atribuindo privilegios aos papeis
GRANT ALL PRIVILEGES
	ON aula3exer1Evolucao2.* 
	TO admin;
    
GRANT SELECT 
	ON aula3exer1Evolucao2.*
	TO usuario, gestor;
    
GRANT INSERT, UPDATE
	ON aula3exer1Evolucao2.PLANTONISTA
    TO gestor;

GRANT INSERT, UPDATE
	ON aula3exer1Evolucao2.SETOR
    TO gestor;
    
-- Criação de usuários

CREATE USER 'saudedba' 
	IDENTIFIED BY 'dbasaude';
    
CREATE USER 'maria'  
	IDENTIFIED BY 'airam ';
 
 CREATE USER 'jose'
	IDENTIFIED BY 'esoj ';
    
CREATE USER 'clara' 
	IDENTIFIED BY 'c1234';
    
CREATE USER 'joaquim'  
	IDENTIFIED BY 'j4321 ';
    
-- Designando papeis para os Usuarios
 
GRANT admin TO saudedba;
GRANT usuario TO maria;
GRANT usuario TO jose;
GRANT gestor TO clara;
GRANT gestor TO joaquim;