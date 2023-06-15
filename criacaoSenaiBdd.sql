create type sexos as enum ('masculino', 'feminino');

create sequence if not exists increment_id_pessoa
increment 1
minvalue 1
maxvalue 999999999999999
start 1
cache 1;

create table if not exists pessoa (
	id_pessoa int primary key default nextval('increment_id_pessoa'),
	nome varchar(90) not null,
	data_nascimento date not null,
	sexo sexos not null
);
alter table pessoa rename to pessoas;


create table if not exists departamentos (
	id_departamento serial primary key
);

alter table departamentos add nome_departamento varchar(50) unique not null;

create table if not exists funcionarios (
	id_funcionario int primary key references pessoas,
	logradouro varchar(50) not null,
	numero int not null,
	bairro varchar(60) not null,
	cidade varchar(40) not null,
	salario numeric not null check (salario > 1200),
	id_departamento int references departamentos
);

create table if not exists dependentes (
	id_dependentes int primary key references pessoas,
	funcionario_responsavel int references funcionarios,
	grau_parentesco varchar(10) not null
);

alter table dependentes alter column grau_parentesco type varchar(25);

create table if not exists pesquisador (
	id_pesquisador int primary key references funcionarios,
	area_atuacao varchar(30) not null
);	

create table if not exists faxineiro (
	id_faxineiro int primary key references funcionarios,
	cargo varchar(20) not null,
	jornada_de_trabalho interval not null,
	superior int references faxineiro
);

create table if not exists secretario (
	id_secretario int primary key references funcionarios,
	grau_escolaridade varchar(30) not null
);

create table if not exists projetos (
	id_projeto serial primary key,
	nome_projeto varchar(60) not null,
	id_departamento int references departamentos not null,
	periodo_tempo interval not null
);

create table if not exists pesquisador_projeto (
	id_projeto int references projetos not null,
	id_pesquisador int references pesquisador not null,
	horas_projeto interval not null
);

-- drop table pesquisador_projeto