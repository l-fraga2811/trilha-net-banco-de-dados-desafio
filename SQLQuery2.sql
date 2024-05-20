--1 
select Nome, Ano from Filmes

--2
select * from Filmes order by Ano

--3
select Nome, Ano, Duracao from Filmes where Nome = 'De volta para o futuro'

--4
select * from Filmes where Ano = 1997

--5
select * from filmes where Ano >= 2000

--6
select * from Filmes 
	where Duracao > 100  and Duracao < 150 
	order by Duracao

--7
select Ano, count(*) Quantidade from Filmes
	group by Ano
	order by Quantidade desc

--8
select * from Atores
	where Genero = 'M'
	order by Genero

--9
select * from Atores
	where Genero = 'F'
	order by PrimeiroNome

--10
select Filmes.Nome, Generos.Genero from Filmes
inner join FilmesGenero on
	Filmes.Id = FilmesGenero.IdFilme
inner join Generos on
	Generos.Id = FilmesGenero.IdGenero

--11
select Filmes.Nome, Generos.Genero from Filmes
	inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
	inner join Generos on Generos.Id = FilmesGenero.IdGenero
where Genero = 'Mistério'

--12

select Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel from Filmes
	inner join ElencoFilme on Filmes.Id = ElencoFilme.IdFilme
	inner join Atores on Atores.Id = ElencoFilme.IdAtor