1. 
select f.nome, d.descricao as departamento
from funcionario as f 
inner join departamento as d
on f.coddepartamento = d.cod;

2. 
select f.nome, f.cargo, d.sigla
from funcionario as f 
inner join departamento as d 
on f.coddepartamento = d.cod
where d.sigla = 'CDTec';

3. 
select nome, numalunos 
from disciplina;

4. 
select nome 
from funcionario 
where nome ilike '%a%';

5. 
select f.nome, f.salario, d.local 
from funcionario as f 
inner join 
departamento as d 
on d.cod = f.coddepartamento
where d.local = 'Rio de Janeiro' 
and f.salario > 400; 

6. 
select a.nome, SUM(d.cargahoraria ) as carga_total 
from aluno as a
inner join matricula as m on a.matricula = m.matriculaaluno
inner join disciplina as d on m.coddisciplina = d.cod
group by a.nome 
order by a.nome;

7. 
select d.sigla, d.cod, f.coddepartamento, AVG(f.salario) as salario_medio // pra evitar repetição de tabela, pode tirar o d.cod ou o f.coddepartamento na seleção 
from departamento as d 
inner join funcionario as f
on d.cod = f.coddepartamento 
group by d.cod, d.cod, f.coddepartamento
order by d.cod; 

8. repetida 

9. 
select 
	case 
		when salario <= 300 then 'A'
		when salario between 300 and 699 then 'B'
		when salario between 700 and 1000 then 'C'
		when salario >1000 then 'D'
	end as faixa_salarial,
count(*) as total_funcionarios //da nome a uma coluna com a quantidade 
from funcionario 
group by faixa_salarial 
order by faixa_salarial;

10. 
select nome,
	case 
		when idade between 15 and 20 then 'A'
		when idade between 21 and 25 then 'B'
		when idade between 26 and 30 then 'C'
		when idade > 31 then 'D'
	end as nivel
from aluno
order by nome;

11. 
select nome,
	case
		when numalunos is null then 'Zero'
		else cast(numalunos as text)
	end as numalunos
from disciplina;

12.
SELECT 
  a.nome AS nome_aluno, 
  COALESCE(d.nome, 'Não matriculado') AS nome_disciplina
FROM aluno AS a
LEFT JOIN matricula AS m ON a.matricula = m.matriculaaluno
LEFT JOIN disciplina AS d ON m.coddisciplina = d.cod
ORDER BY a.nome;

13. 
select f.nome as funcionario, g.nome as gerente
from funcionario as f 
left join funcionario as g on f.codgerente = g.cod 
order by f.nome;

14.1
select nome
from aluno 
union 
select nome
from funcionario; // mostra todos sem repetir 
--------ou---------
select matricula
from aluno 
union all 
select matriculaaluno
from matricula; //mostra os numeros repetidos

14.2
select nome
from aluno 
intersect 
select nome
from funcionario; //resultado saiu zerado pois não tem iguais  
----------ou---------
select matricula
from aluno 
intersect 
select matriculaaluno
from matricula; //saiu com resultados pois tem matrículas iguais 

14.3
select matricula
from aluno 
except
select matriculaaluno
from matricula; // tinha 12 alunos matriculados, mas aqui só mostrou 10 pois ha 2 nos dois conjuntos 


15. 
select nome
from aluno 
union all
select nome 
from funcionario
order by nome asc; //mostra repetindo os nomes

16.
select nome 
from aluno 
union 
select nome 
from funcionario 
order by nome asc; // mostra sem repetir os nomes 

17. 
select nome 
from aluno 
union 
select nome 
from disciplina;

18. // script 
