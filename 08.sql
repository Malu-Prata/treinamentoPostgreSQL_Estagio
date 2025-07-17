1. 
  ------usando IN----------
select f.nome, f.dtcontratacao, f.coddepartamento
from funcionario as f 
where f.coddepartamento in( 
	select f2.coddepartamento
	from funcionario as f2 	
	where f2.nome = 'Milena'
)
and f.nome<>'MIlena'
order by f.nome;

------usando EXISTS------
select f.nome, f.dtcontratacao 
from funcionario as f 
where exists (
	select 
	from funcionario as f2 
	where f2.nome = 'Milena'
	and f2.coddepartamento = f.coddepartamento 
)
AND f.nome <> 'Maria'
ORDER BY f.nome;

2. 
select f.nome, f.cod, f.salario
from funcionario as f
where f.salario <(
	select AVG(f2.salario)
	from funcionario as f2
)
order by f.salario;

3. 
select f.nome, f.coddepartamento
from funcionario as f 
where f.nome in (
	select f2.nome
	from funcionario as f2 
	where f2.nome ilike '%k%'
)
order by f.nome;

4. 
select f.nome, f.dtcontratacao, f.salario
from funcionario f
where f.salario > ALL (
    select AVG(f2.salario)
    from funcionario f2
    group by f2.coddepartamento
)
order by f.nome;

5. 
select gerente.nome
from funcionario as gerente 
where exists ( 
select *
	from funcionario 
	where funcionario.codgerente = gerente.cod
);

6. 
select a.nome
from aluno a
where a.nome <> 'MARIA'
  and a.matricula IN (
   	select m2.matriculaaluno
    from matricula m2
    where m2.coddisciplina IN (
      select m.coddisciplina
      from matricula m
      inner join aluno al ON m.matriculaaluno = al.matricula
      where al.nome = 'MARIA'
    )
  );

