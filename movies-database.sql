--1 TABELA A SER CRIADA - CRIADO
CREATE TABLE ATORES(
ID_ATOR INT PRIMARY KEY NOT NULL,
PRIMEIRO_NOME VARCHAR(20) NULL,
ULTIMO_NOME VARCHAR(20) NULL,
GENERO VARCHAR(1) NULL,
);

--CRIAR APÓS TABELA FILMES - 3 TABELA, CRIADO.
CREATE TABLE ELENCO_FILME(
ID_ELENCO INT PRIMARY KEY NOT NULL,
ID_ATORFK INT NOT NULL,
ID_FILMEFK INT NOT NULL, -- ID FILME FK
PAPEL VARCHAR(30) NULL,
FOREIGN KEY (ID_ATORFK) REFERENCES ATORES(ID_ATOR),
FOREIGN KEY (ID_FILMEFK) REFERENCES FILMES(ID_FILME)
);

--2 TABELA A SER CRIADA - CRIADO
CREATE TABLE FILMES(
ID_FILME INT PRIMARY KEY NOT NULL,
NOME VARCHAR(50) NULL,
ANO INT NULL,
DURACAO INT NULL,
);

DROP TABLE FILMES -- EXCLUIR UMA TABELA E RECRIAR DEPOIS

--TABELA 5, CRIADO
CREATE TABLE FILMES_GENERO(
ID_GENEROFILME INT PRIMARY KEY NOT NULL,
ID_GENEROFK INT NULL,
ID_FILMEFK INT NULL,
FOREIGN KEY (ID_GENEROFK) REFERENCES GENEROS(ID_GENERO),
FOREIGN KEY (ID_FILMEFK) REFERENCES FILMES(ID_FILME),
);

-- TABELA 4, CRIADO.
CREATE TABLE GENEROS(
ID_GENERO INT PRIMARY KEY NOT NULL,
GENERO VARCHAR(20) NULL,
);

DROP TABLE FILMES_GENERO

SELECT * FROM ATORES
SELECT * FROM ELENCO_FILME
SELECT * FROM FILMES
SELECT * FROM FILMES_GENERO
SELECT * FROM GENEROS

INSERT INTO ATORES (ID_ATOR, PRIMEIRO_NOME, ULTIMO_NOME, GENERO) VALUES
(1, 'Robert', 'Downey', 'M'),
(2, 'Scarlett', 'Johansson', 'F'),
(3, 'Chris', 'Evans', 'M'),
(4, 'Chris', 'Hemsworth', 'M'),
(5, 'Mark', 'Ruffalo', 'M'),
(6, 'Tom', 'Holland', 'M'),
(7, 'Natalie', 'Portman', 'F'),
(8, 'Samuel', 'Jackson', 'M'),
(9, 'Zoe', 'Saldana', 'F'),
(10, 'Benedict', 'Cumberbatch', 'M');

INSERT INTO FILMES (ID_FILME, NOME, ANO, DURACAO) VALUES
(1, 'Iron Man', 2008, 126),
(2, 'The Avengers', 2012, 143),
(3, 'Thor', 2011, 115),
(4, 'Captain America: The First Avenger', 2011, 124),
(5, 'Doctor Strange', 2016, 115),
(6, 'Spider-Man: Homecoming', 2017, 133),
(7, 'Avengers: Infinity War', 2018, 149),
(8, 'Avengers: Endgame', 2019, 181),
(9, 'Guardians of the Galaxy', 2014, 121),
(10, 'Thor: Love and Thunder', 2022, 118);

INSERT INTO GENEROS (ID_GENERO, GENERO) VALUES
(1, 'Ação'),
(2, 'Aventura'),
(3, 'Ficção'),
(4, 'Fantasia'),
(5, 'Drama'),
(6, 'Comédia'),
(7, 'Suspense'),
(8, 'Terror'),
(9, 'Romance'),
(10, 'Animação');

INSERT INTO ELENCO_FILME (ID_ELENCO, ID_ATORFK, ID_FILMEFK, PAPEL) VALUES
(1, 1, 1, 'Tony Stark / Iron Man'),
(2, 2, 2, 'Natasha Romanoff / Black Widow'),
(3, 3, 4, 'Steve Rogers / Captain America'),
(4, 4, 3, 'Thor'),
(5, 5, 2, 'Bruce Banner / Hulk'),
(6, 6, 6, 'Peter Parker / Spider-Man'),
(7, 7, 10, 'Jane Foster'),
(8, 8, 2, 'Nick Fury'),
(9, 9, 9, 'Gamora'),
(10, 10, 5, 'Stephen Strange');

INSERT INTO FILMES_GENERO (ID_GENEROFILME, ID_GENEROFK, ID_FILMEFK) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 2),
(4, 2, 2),
(5, 3, 5),
(6, 1, 6),
(7, 2, 7),
(8, 3, 7),
(9, 1, 8),
(10, 2, 9);

SELECT * FROM ATORES;
SELECT * FROM FILMES;
SELECT * FROM GENEROS;
SELECT * FROM ELENCO_FILME;
SELECT * FROM FILMES_GENERO;

-- POPULANDO MAIS

INSERT INTO ATORES (ID_ATOR, PRIMEIRO_NOME, ULTIMO_NOME, GENERO) VALUES
(11, 'Leonardo', 'DiCaprio', 'M'),
(12, 'Kate', 'Winslet', 'F'),
(13, 'Morgan', 'Freeman', 'M'),
(14, 'Brad', 'Pitt', 'M'),
(15, 'Angelina', 'Jolie', 'F'),
(16, 'Tom', 'Cruise', 'M'),
(17, 'Keanu', 'Reeves', 'M'),
(18, 'Emma', 'Watson', 'F'),
(19, 'Daniel', 'Radcliffe', 'M'),
(20, 'Hugh', 'Jackman', 'M');

INSERT INTO FILMES (ID_FILME, NOME, ANO, DURACAO) VALUES
(11, 'Titanic', 1997, 195),
(12, 'The Shawshank Redemption', 1994, 142),
(13, 'Fight Club', 1999, 139),
(14, 'Maleficent', 2014, 97),
(15, 'Mission Impossible', 1996, 110),
(16, 'John Wick', 2014, 101),
(17, 'Harry Potter and the Philosopher''s Stone', 2001, 152),
(18, 'Les Misérables', 2012, 158),
(19, 'Inception', 2010, 148),
(20, 'The Dark Knight', 2008, 152);

INSERT INTO GENEROS (ID_GENERO, GENERO) VALUES
(11, 'Biografia'),
(12, 'Histórico'),
(13, 'Musical'),
(14, 'Policial'),
(15, 'Mistério');

INSERT INTO ELENCO_FILME (ID_ELENCO, ID_ATORFK, ID_FILMEFK, PAPEL) VALUES
(11, 11, 11, 'Jack Dawson'),
(12, 12, 11, 'Rose DeWitt Bukater'),
(13, 13, 12, 'Ellis Boyd "Red" Redding'),
(14, 11, 19, 'Dom Cobb'),
(15, 14, 13, 'Tyler Durden'),
(16, 15, 14, 'Maleficent'),
(17, 16, 15, 'Ethan Hunt'),
(18, 17, 16, 'John Wick'),
(19, 18, 17, 'Hermione Granger'),
(20, 19, 17, 'Harry Potter');

INSERT INTO FILMES_GENERO (ID_GENEROFILME, ID_GENEROFK, ID_FILMEFK) VALUES
(11, 9, 11),   -- Titanic (Romance)
(12, 5, 11),   -- Titanic (Drama)
(13, 5, 12),   -- Shawshank (Drama)
(14, 7, 12),   -- Shawshank (Suspense)
(15, 5, 13),   -- Fight Club (Drama)
(16, 15, 13),  -- Fight Club (Mistério)
(17, 4, 14),   -- Maleficent (Fantasia)
(18, 1, 15),   -- Mission Impossible (Ação)
(19, 1, 16),   -- John Wick (Ação)
(20, 3, 17);   -- Harry Potter (Ficção)


-- PROVA 20.08

-- ATIVIDADE 1 - Buscar o nome e ano dos filmes
SELECT NOME, ANO FROM FILMES; 

-- ATIVIDADE 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT NOME, ANO 
FROM FILMES
ORDER BY ANO ASC; 

-- ATIVIDADE 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT NOME, ANO, DURACAO 
FROM FILMES 
WHERE NOME = 'THOR'; -- NÃO TENHO INSERIDO DE VOLTA PARA O FUTURO.

-- ATIVIDADE 4 - Buscar os filmes lançados em 1997
SELECT NOME, ANO 
FROM FILMES 
WHERE ANO = '1997'

-- ATIVIDADE 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT NOME, ANO 
FROM FILMES 
WHERE ANO > '2000'
ORDER BY ANO ASC;

-- ATIVIDADE 6 - Buscar os filmes com a duracao maior que 100 e 
-- menor que 150, ordenando pela duracao em ordem crescente

SELECT NOME, DURACAO
FROM FILMES 
WHERE DURACAO > 100 AND DURACAO < 150
ORDER BY DURACAO ASC;

-- ATIVIDADE 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, 
-- ordenando pela duracao em ordem decrescente

SELECT ANO, COUNT(*) AS QNTS_FILMES
FROM FILMES
GROUP BY ANO ;
ORDER BY FILMES.DURACAO -- NÃO CONSEGUI SELECIONAR POR DURACAO EM DECRESCENTE.
;

-- ATIVIDADE 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT ATORES.GENERO, ATORES.PRIMEIRO_NOME, ATORES.ULTIMO_NOME
FROM ATORES
WHERE GENERO = 'M';

-- ATIVIDADE 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, 
-- UltimoNome, e ordenando pelo PrimeiroNome

SELECT ATORES.GENERO, ATORES.PRIMEIRO_NOME, ATORES.ULTIMO_NOME
FROM ATORES
WHERE GENERO = 'F'
ORDER BY PRIMEIRO_NOME ASC;

-- ATIVIDADE 10 - Buscar o nome do filme e o gênero

SELECT 
F.NOME, 
GENEROS.GENERO
FROM FILMES AS F
JOIN FILMES_GENERO ON F.ID_FILME = FILMES_GENERO.ID_FILMEFK
JOIN GENEROS ON GENEROS.ID_GENERO = FILMES_GENERO.ID_GENEROFK; -- usando 2 joins pra linkar + de 1 tabela

-- ATIVIDADE 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT 
F.NOME,
GENEROS.GENERO
FROM FILMES AS F
JOIN FILMES_GENERO ON F.ID_FILME = FILMES_GENERO.ID_FILMEFK
JOIN GENEROS ON GENEROS.ID_GENERO = FILMES_GENERO.ID_GENEROFK 
WHERE GENEROS.GENERO = 'Ação'; 

-- ATIVIDADE 12 - Buscar o nome do filme e os atores,
-- trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT 
F.NOME
ATORES.PRIMEIRO_NOME
ATORES.ULTIMO_NOME
ELENCO_FILME.PAPEL
FROM FILMES AS F
JOIN ELENCO_FILME ON 



