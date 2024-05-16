--1
SELECT 
	Filmes.Nome, Filmes.Ano
FROM Filmes

--2
SELECT
	Filmes.Nome, Filmes.Ano, Filmes.Duracao
FROM Filmes
ORDER BY Filmes.Ano

--3
SELECT
	Filmes.Nome, Filmes.Ano, Filmes.Duracao
FROM Filmes
WHERE Filmes.Nome = 'De Volta para o Futuro'

--4
SELECT
	Filmes.Nome, Filmes.Ano, Filmes.Duracao
FROM Filmes
WHERE Filmes.Ano = 1997

--5
SELECT
	Filmes.Nome, Filmes.Ano, Filmes.Duracao
FROM Filmes
WHERE Filmes.Ano > 2000

--6
SELECT
	Filmes.Nome, Filmes.Ano, Filmes.Duracao
FROM Filmes
WHERE Filmes.Duracao > 100 AND Filmes.Duracao < 150
ORDER BY Filmes.Duracao

--7
SELECT
	Filmes.Ano, COUNT(Filmes.Ano) AS 'Quantidade'
FROM Filmes
GROUP BY Filmes.Ano
ORDER BY Quantidade DESC

--8
SELECT
	Atores.PrimeiroNome, Atores.UltimoNome, Atores.Genero
FROM Atores
WHERE Atores.Genero = 'M'

--9
SELECT
	Atores.PrimeiroNome, Atores.UltimoNome, Atores.Genero
FROM Atores
WHERE Atores.Genero = 'F'
ORDER BY Atores.PrimeiroNome

--10
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
	INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
	INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--11
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
	INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
	INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mistério'

--12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
	INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
	INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id