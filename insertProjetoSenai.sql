--inserts

--criando pessoas
insert into pessoas (nome, data_nascimento, sexo) values 
('Sergio Ricardo Nascimento', '2003-10-06', 'masculino'),
('Augusto da Silva', '2000-06-14', 'masculino'),
('Maria do Carmo', '1989-08-24', 'feminino'),
('Jose Nunes', '1999-01-01', 'masculino'),
('Rafael Lopes', '1975-09-02', 'masculino'),
('Ana Antunes', '2001-12-12', 'feminino'),
('Pedro Fernadez', '1989-05-09', 'masculino'),
('Felipe Cunha', '1999-09-30', 'masculino'),
('Aline Ferreira', '2005-12-10', 'feminino'),
('Djones Almeida', '1969-10-10', 'masculino'),
('Marcos', '1985-09-23', 'masculino'),
('Gabrielle Aparecida', '2004-07-31', 'feminino'),
('Antonio Vieira', '1995-04-15', 'masculino');

-- select * from pessoas;

--insert departamentos
insert into departamentos (nome_departamento) values
('educacao'),
('Saude'),
('Filosofia'),
('Tecnologia'),
('Artes');

--select * from departamentos;

--insert funcionarios
insert into funcionarios values
(1, 'minhaRua1', 173, 'Rosas', 'Aracoiaba', 1900.50, 2),
(2, 'minhaRua2', 983, 'Azaleias', 'Salto', 5000.32, 4),
(3, 'minhaRua3', 343, 'Bairrinhos', 'Rio', 3500, 4),
(4, 'minhaRua4', 564, 'Longuinhos', 'Aracoiaba', 8000.50, 3),
(5, 'Jose Azevedo', 111, 'guarana', 'Rio', 5650.20, 1),
(6, 'Augusta', 857, 'liberdade', 'Sao Paulo', 4299, 3),
(7, 'Ermelino', 222, 'centro', 'Sorocaba', 7500.25, 5),
(8, 'Cavalcante ferreira', 32, 'judas', 'Itu', 2400, 2),
(9, 'ruazinha', 44, 'distante', 'Alvorada', 15250.99, 4);


-- select * from funcionarios;

--insert dependentes
insert into dependentes values 
(10, 4, 'filho'),
(11, 7, 'sobrinho'),
(12, 7, 'filho');

-- select * from dependentes

--insert pesquisador
insert into pesquisador values
(1, 'Segurança digital'),
(2, 'FullStack  developer'),
(3, 'Engenharia de Software'),
(4, 'Historia da filosofia'),
(5, 'Matematica aplicada');

-- select * from pesquisador

--insert secretario
insert into secretario values
(6, 'ensino médio'),
(7, 'faculdade')

-- select * from secretario

--insert faxineiro
insert into faxineiro values 
(9, 'auxiliar', '44 hour'),
(8, 'chefe', '22 hour');

-- delete from faxineiro where cargo='chefe'
update faxineiro set superior=8 where id_faxineiro=9;

-- select * from faxineiro

--insert projetos
insert into projetos(nome_projeto, id_departamento, periodo_tempo) values
('loja virtual', 4, '30 days'),
('Ensino de qualidade', 1, '6 months'),
('engenharia de dados', 4, '3 months'),
('Cidade limpa', 2, '2 years');

-- update projetos set periodo_tempo='30 days' where nome_projeto='loja virtual'

-- select * from projetos

--insert pesquisador_projeto
insert into pesquisador_projeto values 
(1, 1, '25 hour'),
(1, 2, '30 hour'),
(3, 1, '5 hour'),
(3, 2, '5 hour'),
(3, 3, '5 hour'),
(2, 4, '20 hour'),
(2, 5, '25 hour');

select * from pesquisador_projeto