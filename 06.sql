//colocar restrições nas tabelas já utilizadas de base 

COLOCA SEQUENCIA DE CODIGOS
  
create sequence sequencia_cod;
insert into funcionario(cod)
values (nextval('sequencia_cod'));
select NEXTVAL('sequencia_cod');

INSERT INTO funcionario(cod, nome, salario)
VALUES (nextval('sequencia_cod'), 'MALY', 3.000); //

--------------------------------------
TRANSFORMA OS EMAILS EM ÚNICOS 
  
alter table aluno
add constraint email_unico unique (email);
