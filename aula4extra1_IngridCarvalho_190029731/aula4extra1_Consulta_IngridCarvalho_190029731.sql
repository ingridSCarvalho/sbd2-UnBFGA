-- -----------< aula4extra1 > -----------
--
-- SCRIPT DE CONSULTA (DDL)
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

-- A) Projeção de sigla e nome do estado de MS e DF, sem cidades repetidas
SELECT DISTINCT e.sigla, e.nome
FROM ESTADO e
WHERE e.sigla IN ('MS', 'DF');

-- B) Nome das cidades e sigla dos estados DF, GO e MS, ordenados por estado e cidade
SELECT c.nome, c.sigla
FROM CIDADE c
WHERE c.sigla IN ('DF', 'GO', 'MS')
ORDER BY c.sigla, c.nome;

-- C) Todas as cidades do primeiro estado cadastrado, mostrando nome da cidade, nome e sigla do estado
SELECT c.nome, e.nome AS nome_estado, e.sigla AS sigla_estado
FROM CIDADE c
JOIN ESTADO e ON c.sigla = e.sigla
WHERE e.sigla = 'DF';

-- D) Nome e sigla do último estado cadastrado, com suas cidades e quantidade de habitantes
SELECT e.nome AS nome_estado, e.sigla AS sigla_estado, c.nome AS nome_cidade, c.habitantes
FROM ESTADO e
JOIN CIDADE c ON e.sigla = c.sigla
WHERE e.sigla = 'BA'
ORDER BY e.nome, c.nome;

-- E) Sigla do estado e média de habitantes por estado, ordenados por média decrescente
SELECT e.sigla AS sigla_estado, AVG(c.habitantes) AS media_habitantes
FROM ESTADO e
JOIN CIDADE c ON e.sigla = c.sigla
GROUP BY e.sigla
ORDER BY media_habitantes DESC;
