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
