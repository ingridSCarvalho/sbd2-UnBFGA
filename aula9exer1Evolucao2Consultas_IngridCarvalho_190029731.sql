-- ------------   aula9exer1Evolucao2   ------------
--
--                    SCRIPT DE CONSULTA
--
-- Data Criacao ...........: 25/10/2023
-- Autor(es) ..............: Lucas Gomes e Ingrid Carvalho
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: metacritic
--                        
-- PROJETO => 01 Base de Dados
--         => 03 Tabelas
--         => 03 Consultas
--
-- ---------------------------------------------------------

USE metacritic;

-- (1) Essa consulta exibe a contagem de jogos por gênero em ordem decrescente, visando mostrar aos proprietários os gêneros com mais jogos publicados para identificar mercados mais e menos competitivos.
-- Justificativa: A consulta serve para direcionar a estratégia da empresa, identificando gêneros populares para desenvolver jogos com maior público e explorar mercados com menos competição.
SELECT genre.description, COUNT(game.id_genre) countGenres
	FROM genre
LEFT JOIN game
	ON genre.id_genre = game.id_genre
GROUP BY genre.id_genre
ORDER BY countGenres DESC;

-- (2) Essa consulta exibe as vendas em milhões dos principais publicadores na América do Norte, com o objetivo estratégico de analisar as empresas mais lucrativas nesse mercado para aprender com suas estratégias e expandir nos jogos na América do Norte.
-- Justificativa: A consulta tem um objetivo estratégico: entender o sucesso das empresas líderes para competir com elas e aprender com os erros das empresas com vendas mais baixas.
SELECT publisher.publisher_name, sum(game.na_sales) as salesPublisher
	FROM publisher
LEFT JOIN game
	ON publisher.id_publisher = game.id_publisher
GROUP BY publisher.id_publisher
HAVING salesPublisher > 0
ORDER BY salesPublisher DESC;


-- (C) Esta consulta ajuda a encontrar o número exato de jogos associados a um gênero particular na tabela de jogos, 
-- oferecendo uma visão detalhada sobre a quantidade de jogos disponíveis para um gênero específico em nosso sistema.
CREATE VIEW V_GENERO AS
SELECT 
    G.id_genre,
    G.description AS Genre,
    COUNT(GA.id_game) AS GameCount
FROM 
    GENRE G
LEFT JOIN 
    GAME GA ON G.id_genre = GA.id_genre
GROUP BY 
    G.id_genre, G.description;
    
SELECT * FROM V_GENERO WHERE id_genre = '3';


