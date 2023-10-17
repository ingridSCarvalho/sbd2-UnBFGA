-- ---------------------   << Exercício 1 da Aula 3 >>   ---------------------
--
--                    		SCRIPT CONTROLE (DDL/DCL)
-- 
-- Data Criacao ...........: 09/10/2023
-- Autor(es) ..............: Ingrid Carvalho
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


SELECT PLANTONISTA.*, aloca.horarioPlantao
FROM PLANTONISTA
JOIN aloca ON PLANTONISTA.matricula = aloca.matricula
WHERE aloca.idSetor = 1
ORDER BY aloca.horarioPlantao DESC;


SELECT PLANTONISTA.*, aloca.dataPlantao
FROM PLANTONISTA
JOIN aloca ON PLANTONISTA.matricula = aloca.matricula
WHERE aloca.dataPlantao BETWEEN '2023-01-01' AND '2023-03-01'
ORDER BY aloca.dataPlantao ASC;


SELECT PLANTONISTA.nomeCompleto, PLANTONISTA.sexo, SETOR.nome AS Setor
FROM PLANTONISTA
JOIN aloca ON PLANTONISTA.matricula = aloca.matricula
JOIN SETOR ON aloca.idSetor = SETOR.idSetor
WHERE PLANTONISTA.nomeCompleto LIKE CONCAT('%oli%');


SELECT ESPECIALIDADE.nome AS Especialidade, COUNT(possui.matricula) AS QuantidadePlantonistas
FROM ESPECIALIDADE
LEFT JOIN possui ON ESPECIALIDADE.idEspecialidade = possui.idEspecialidade
GROUP BY ESPECIALIDADE.idEspecialidade, ESPECIALIDADE.nome;
