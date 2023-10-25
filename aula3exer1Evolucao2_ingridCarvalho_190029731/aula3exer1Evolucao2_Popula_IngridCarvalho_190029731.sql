-- ---------------------   << Exercício 1 da Aula 3 >>   ---------------------
--
--                    		SCRIPT POPULA (DML)
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
-- Alterações:
--         => inclusão de tuplas 
-- 
-- -----------------------------------------------------------------

USE aula3exer1Evolucao2;
INSERT INTO SETOR(nome)
VALUES
	('Emergência'),
	('UTI'),
	('Clínica Médica'),
	('Cirurgia'),
	('Cardiologia'),
	('Pediatria'),
    ('Enfermaria'),
    ('Neurologia');
    
INSERT INTO ESPECIALIDADE(nome)
VALUES
	('Enfermeiro Geral'),
	('Pneumologia'),
	('Neurologia'),
	('Psiquiatria'),
	('Oncologia'),
	('Endocrinologia'),
    ('Pediatria');

INSERT INTO PLANTONISTA(matricula, nomeCompleto, sexo)
VALUES
	(84759274938, 'Maria da Silva', 'F'),
	(99224601858, 'João Santos', 'M'),
	(74090167373, 'Pedro Souza', 'M'),
	(25899460182, 'José Antônio', 'M'),
	(93730174067, 'Júlia Mendes', 'F'),
	(68811749899, 'Ana Oliveira', 'F'),
	(12345678900, 'Carlos Ferreira', 'M'), 
	(23456789012, 'Fernanda Lima', 'F'); 

INSERT INTO aloca(matricula, idSetor, horarioPlantao, dataPlantao)
VALUES
	(84759274938, 1, '10:00:00', '2023-01-12'),
	(99224601858, 1, '08:00:00', '2023-02-09'),
	(74090167373, 3, '20:00:00', '2023-03-28'),
	(25899460182, 5, '11:00:00', '2023-04-24'),
	(93730174067, 6, '21:00:00', '2023-05-01'),
	(68811749899, 4, '21:00:00', '2023-05-01'),
	(12345678900, 2, '21:00:00', '2023-05-01'),
	(23456789012, 1, '21:00:00', '2023-05-01');


INSERT INTO possui(matricula, idEspecialidade)
VALUES
	(84759274938, 1),
	(99224601858, 2),
	(74090167373, 3),
	(12345678900, 4), 
	(68811749899, 3),
	(93730174067, 5),
	(93730174067, 6);
