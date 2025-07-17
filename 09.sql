1. 
  create view faixa_nivel as
select matricula, nome,
	case 
		when idade between 15 AND 20 then 'A'
        when idade between 21 AND 25 then 'B'
        when idade between 26 AND 30 then 'C'
        when idade > 30 then 'D'
	end as nivel 
	from aluno;

	2. 
select 
  f.nome AS nome_aluno,
  d.nome AS nome_disciplina,
  f.nivel
from faixa_nivel AS f
inner join matricula AS m ON f.matricula = m.matriculaaluno
inner join disciplina AS d ON m.coddisciplina = d.cod
order by f.nome;


3.
select 
  d.nome as disciplina,
  f.nivel,
  COUNT(*) AS total_alunos
from faixa_nivel AS f
inner join matricula AS m on f.matricula = m.matriculaaluno
inner join disciplina AS d on m.coddisciplina = d.cod
GROUP BY d.nome, f.nivel
ORDER BY d.nome, f.nivel;
