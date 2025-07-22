
-- 1 

Select Nome, Ano 
From Filmes


Select *
From dbo.Filmes


--- 2 


Select *
From dbo.Filmes
ORDER BY Ano ASC

-- 3

select *
From Filmes
Where Id  = 28

-- 4

Select *
From Filmes
Where Ano = 1997

-- 5

select *
from Filmes
where Ano > 2000

-- 6

Select *
from Filmes
Where duracao > 100 and duracao  < 150
ORDER BY duracao ASC


-- 7

SELECT Ano,
COUNT(*) Quantidade
From Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8

Select *
from Atores
WHERE Genero = 'M'




-- 9
Select *
from Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome


-- 10


select F.Nome, G.Genero  From dbo.Filmes F
INNER JOIN  FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN  generos G ON  FG.IdGenero = G.Id



 -- 11

select F.Nome, G.Genero  From dbo.Filmes F
INNER JOIN  FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN  generos G ON  FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'




-- 12

select F.Nome ,  A.PrimeiroNome, A.UltimoNome, E.Papel from dbo.Filmes F
INNER JOIN ElencoFilme E ON F.Id = E.IdFilme
INNER JOIN Atores A  ON  E.idAtor = A.Id