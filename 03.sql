select* 
from aluno 
where cidade='Jaguarão'

select* 
from aluno 
where idade=22;

select* 
from aluno 
where dtnascimento > '01-11-2000';

select* 
from aluno 
where dtnascimento >= '30-10-2000';

select* 
from aluno 
where idade in(19,20,30);

select* 
from aluno 
where idade between 18 and 29;

SELECT nome
FROM aluno
WHERE nome LIKE 'A%';

SELECT nome
FROM aluno
WHERE nome LIKE '__A%'; // cada sublinhado se refere a um caractere, nesse caso o A está na posição 3

SELECT nome
FROM aluno
WHERE nome LIKE '%';   // todos que tem a 

SELECT nome
FROM aluno
WHERE email is null;

SELECT nome
FROM aluno
WHERE email is null and telefone is null;

SELECT nome
FROM aluno
WHERE email is null OR telefone is null;

SELECT idade
FROM aluno
WHERE idade not in (18,19,20);

SELECT nome, email, matricula
FROM aluno
WHERE nome like '_A%' and idade not in (29,30);

SELECT nome, email, matricula, idade
FROM aluno
WHERE nome like '_A%' and idade >= 18

select idade
FROM aluno
where idade is not null
order by idade asc;

select nome, idade
FROM aluno
where idade is not null
order by idade desc;
order by nome asc;

update aluno 
set idade=21
where nome= 'ANDRESSA MOREIRA DA SILVA';

delete from  aluno 
where nome= 'ANDRESSA MOREIRA DA SILVA';

-------EXERCÍCIOS----------
1. 
select * 
from aluno 
where telefone is null

update aluno 
set telefone= 9999 
where nome='YASSER AYMAN JABER';

2. update aluno 
set idade= idade+1
where dtnascimento> '01-01-1980' //depois ver o TO_DATE pra ser atualizado todo ano 

3. 
update disciplina 
set cargahoraria =60;

4. 
select nome, salario
from funcionario 
where (salario>800);

5. 
select nome,cod 
from funcionario 
where cod=459;

6. 
select nome, salario
from funcionario 
where salario not between  950 and 2300;

7. 
select nome, cargo, dtcontratacao
from funcionario 
where dtcontratacao between '20-02-2004' and '01-05-2007';

8. 
select nome, coddepartamento 
from funcionario 
where (coddepartamento=01 or coddepartamento=03)
order by nome asc;

9. 
