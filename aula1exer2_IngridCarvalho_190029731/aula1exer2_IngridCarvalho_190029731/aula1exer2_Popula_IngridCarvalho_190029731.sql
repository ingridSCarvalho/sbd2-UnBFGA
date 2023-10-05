-- -----------< aula1exer2 > -----------
--
--               SCRIPT POPULA (DML)
-- Data criacao..........: 04/09/2023
-- Autor(es).............: Ingrid da Silva Carvalho
-- Baco de Dados.........: MySQL 8.0
-- Base de Dados.........: aula1exer2
--
-- PROJETO => 01 Base de Dados
--            08 Tabelas
--
-- -------------------------------------------------

USE aula1exer2;

INSERT INTO PESSOA (nome, senha, cpf) VALUES
    ('João', 'senha123', 12345678901),
    ('Maria', 'senha456', 98765432109),
    ('Pedro', 'senha789', 34567890123),
    ('Ana', 'senha012', 56789012345),
    ('Carlos', 'senha345', 78901234567);

INSERT INTO GERENTE (formacaoEscolar, email, cpf) VALUES
    ('Bacharelado em Administração', 'joao@email.com', 12345678901),
    ('Mestrado em Finanças', 'maria@email.com', 98765432109),
    ('Doutorado em Marketing', 'pedro@email.com', 34567890123),
    ('Bacharelado em Economia', 'ana@email.com', 56789012345),
    ('Mestrado em Recursos Humanos', 'carlos@email.com', 78901234567);

INSERT INTO EMPREGADO (matricula, cep, estado, cidade, bairro, rua, numero, cpf) VALUES
    (101, 12345, 'SP', 'São Paulo', 'Centro', 'Avenida 1', 123, 12345678901),
    (102, 54321, 'RJ', 'Rio de Janeiro', 'Copacabana', 'Rua 2', 456, 98765432109),
    (103, 98765, 'MG', 'Belo Horizonte', 'Savassi', 'Avenida 3', 789, 34567890123),
    (104, 56789, 'RS', 'Porto Alegre', 'Moinhos de Vento', 'Rua 4', 101, 56789012345),
    (105, 23456, 'PR', 'Curitiba', 'Batel', 'Avenida 5', 202, 78901234567);

INSERT INTO VENDA (dataVenda, precoTotal, matricula) VALUES
    ('2023-09-01', 100.50, 101),
    ('2023-09-02', 75.25, 102),
    ('2023-09-03', 200.00, 103),
    ('2023-09-04', 50.75, 104),
    ('2023-09-05', 300.00, 105);

INSERT INTO PRODUTO (preco) VALUES
    (10.50),
    (20.75),
    (5.99),
    (15.25),
    (8.00);

INSERT INTO telefone (matricula, telefone) VALUES
    (101, 994457812),
    (102, 968547232),
    (103, 845236912),
    (104, 854632695),
    (105, 862145369);

INSERT INTO supervisiona (idGerente, matricula) VALUES
    (1, 101),
    (2, 102),
    (3, 103),
    (4, 104),
    (5, 105);

INSERT INTO possui (idVenda, codigo, quantidade) VALUES
    (1, 1, 2),
    (2, 2, 3),
    (3, 3, 1),
    (4, 4, 4),
    (5, 5, 2);
