select *
from funcionario

select  (matricula, nome)
from aluno;

select  cod, nome, salario, salario *1.10 as novo_salario
from funcionario;

select  distinct descricao, sigla, descricao as nomedepartamento
from departamento;

select  distinct idade
from aluno;

select matricula, nome, idade, idade + 2 as provavel_idade_formando
from aluno;

select
'Aluno: ' || nome ||
'nascido em: ' || TO_CHAR(dtnascimento, 'DD-MM-YYYY') || 
' estara com idade ' || 
extract(year from current_date + interval '2 years') - extract (year from dtnascimento) ||
' prestes a se formar' as mensagem 
from aluno; 
