1. 
select now(); 
      ou
select CURRENT_DATE;

2. 
SELECT TO_CHAR(CURRENT_DATE, 'Day');
          ou
SELECT TRIM(TO_CHAR(CURRENT_DATE, 'Day')); //traduz pro idioma do banco 

3. 
select cod, nome, salario,cast(salario * 1.15 as INT) as novo_Salario
from funcionario; // CAST (expressão as INT) - transforma em inteiro 

4. 
select salario, salario *1.15 as novo_salario, (salario *1.15) - salario as diferenca
from funcionario ; 

5. 
select nome, dtcontratacao, TO_CHAR(dtcontratacao, 'YYYY-MM-DD') as dt_formatada,
TO_CHAR( dtcontratacao + interval '6 months', 'YYYY-MM-DD') as dt_efetivado
from funcionario;


6. 
select nome,
ROUND(
		extract (year from age(current_date, dtcontratacao))*12 + //multiplica por 12 meses pra obter o total de meses
		extract (month from age(current_date, dtcontratacao)) + //adiciona os meses restantes do ano atual
		extract (day from age(current_date, dtcontratacao)) /30 //divide em 30 pra obter a quantidade de meses totais 
		) as quantidade_meses
from funcionario
order by quantidade_meses; 

7. 
select 
'o funcionario ' || nome || 'recebe o salario ' || salario || 'e deseja receber ' || salario * 4 as sonho 
from funcionario;

8. 
select 
INITCAP(nome) as nome_formatado,
length(nome) as quantidade_letras
from funcionario 
where nome ilike 'J%' or nome ilike 'M%'
order by quantidade_letras desc;

9. 
select nome, dtcontratacao, to_char(dtcontratacao, 'Day') as dia_semana
from funcionario; //se quiser mes é só mudar pra 'month', se quiser dia abreviado - 'dy' 

10. 
select nome, telefone,
case
when telefone is null then 'Sem telefone'
else telefone::text 
end as status_telefone
from aluno;

11. 
select nome, salario, 
salario::int/100 as novo_salario,
repeat ('*', floor(salario/100)::int) as asteriscos
from funcionario
order by asteriscos desc; 

12. 
select nome, idade,
case 
	when idade between 0 and 18 then 'categoria a'
	when idade between 19  and 30 then 'categoria b'
	when idade between 31 and 61 then 'categoria c'
	else 'categoria d'
end as categoria_aluno
from aluno;

13. 
select 
MAX(salario) as salario_maximo,
MIN(salario) as salario_minimo, 
AVG(salario) as salario_medio,
SUM(salario) as salarios_pagos
from funcionario;

14.
select 
MAX(salario::numeric) as salario_maximo_arrendondado,
MIN(salario::numeric) as salario_minimo_arrendondado, 
AVG(salario::numeric) as salario_medio_arrendondado,
SUM(salario::numeric) as salarios_pagos_arrendondado
from funcionario;

15. 





  
