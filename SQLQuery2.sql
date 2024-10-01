-- Consulta 01 - Buscar o nome e o ano dos filmes

SELECT 
	Nome,
	Ano
FROM Filmes

-- Consulta 02 - Buscar o nome e o ano dos filmes, ordenados por ordem crescente

SELECT 
	*
FROM Filmes
ORDER BY Ano ASC

-- Consulta 03 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT 
	*
FROM Filmes
WHERE Id = 28

-- Consulta 04 - Buscar os filmes lançados em 1997

SELECT 
	*
FROM Filmes
WHERE Ano = 1997

-- Consulta 05 - Buscar os filmes lançados após o anp  2000

SELECT 
	*
FROM Filmes
WHERE Ano > 2000

-- Consulta 06 - Buscar os filmes com duração maior que 100 
-- e menor que 150, ordenado pela duração em ordem crescente

SELECT 
	*
FROM Filmes
WHERE Duracao > 100 and Duracao < 150
ORDER BY Duracao ASC

-- Consulta 07 - Buscar a quantidade de filmes lançadas no ano,
-- agrupando por ano, ordenando pela duração em ordem decrescente

SELECT
Ano,
COUNT(Ano) Quantidade
FROM Filmes
GROUP BY Ano 
ORDER BY Quantidade DESC

-- Consulta 08 - Buscar os atores do gênero masculino, retornando
-- o primeiro nome, ultimo nome

SELECT 
	*
FROM Atores
WHERE Genero = 'M'

-- Consulta 09 - Buscar os atores do gênero feminino, retornando 
-- o primeiro nome, ultimo nome, e ordenando pelo primeiro nome

SELECT 
	*
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

-- Consulta 10 - Buscar o nome do filme e o gênero

SELECT 
	F.Nome,
	G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme 
INNER JOIN Generos G on G.id = FG.IdGenero

-- Consulta 11 - Buscar o nome do filme e o gênero do tipo mistério

SELECT 
	F.Nome,
	G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme 
INNER JOIN Generos G on G.id = FG.IdGenero
WHERE G.Genero = 'Mistério'

-- Consulta 12 - Buscar o nome do filme e os atores trazendo o
-- primeiro nome, ultimo nome e seu papel

SELECT 
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	E.Papel
FROM Filmes F
INNER JOIN ElencoFilme E ON F.Id = E.IdFilme
INNER JOIN Atores A on A.id = E.IdAtor

