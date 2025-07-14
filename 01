CREATE TABLE aluno (
	nome varchar(100) NULL,
	matricula numeric(10) NULL,
	telefone numeric(15) NULL,
	dtnascimento timestamp NULL,
	cidade varchar(100) NULL,
	idade numeric(3) NULL,
	email varchar(100) NULL
);

CREATE TABLE departamento (
	cod numeric(10) NULL,
	descricao varchar(100) NULL,
	sigla varchar(5) NULL
);

CREATE TABLE disciplina (
	cod numeric(10) NULL,
	nome varchar(100) NULL,
	cargahoraria numeric(4) NULL,
	turma numeric(10) NULL,
	numalunos numeric(10) NULL
);

REATE TABLE funcionario (
	cod numeric(50) NULL,
	nome varchar(100) NULL,
	cargo varchar(100) NULL,
	salario numeric(10) NULL,
	coddepartamento numeric(10) NULL,
	dtcontratacao timestamp NULL,
	codgerente numeric(10) NULL
);

CREATE TABLE matricula (
	matriculaaluno numeric(10) NULL,
	coddisciplina numeric(10) NULL,
	dtefetivado timestamp NULL
);
