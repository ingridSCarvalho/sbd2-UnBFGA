-- -----------< aula4extra1 > -----------
--
-- SCRIPT DE POPULA (DML)
-- Data criacao..........: 04/09/2023
-- Autor(es).............: Ingrid da Silva Carvalho
-- Baco de Dados.........: MySQL 8.0
-- Base de Dados.........: aula4extra1
--
-- PROJETO => 01 Base de Dados
-- 02 Tabelas
--
-- -------------------------------------------------


USE aula4extra1;

INSERT INTO ESTADO(sigla, nome) VALUES
('DF', 'Distrito Federal'),
('SP', 'São Paulo'),
('BA', 'Bahia');

INSERT INTO CIDADE(nome, sigla, habitantes) VALUES
('Ceilândia', 'DF', 300000),
('Samambaia', 'DF', 175000),
('Recanto das Emas', 'DF', 80000),
('São Paulo', 'SP', 2000000),
('Ferraz de Vasconcelos', 'SP', 100000),
('Salvador', 'BA', 300000),
('Ilhéus', 'BA', 181237);
