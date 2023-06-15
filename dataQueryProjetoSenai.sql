--seleciona informacoes dos pesquisadores
select * from pessoas as p inner join pesquisador as p2 on p.id_pessoa=p2.id_pesquisador
inner join funcionarios f on f.id_funcionario = p2.id_pesquisador;

--seleciona todos os funcionarios que ganham mais de 5000
select * from pessoas as p inner join funcionarios as f 
on p.id_pessoa = f.id_funcionario where f.salario > 5000;

--mostra quantidade de funcionarios
select count(id_funcionario) from funcionarios;

--seleciona funcionarios e ordena por salario
select p.nome, f.salario from pessoas as p inner join funcionarios as f
on p.id_pessoa=f.id_funcionario order by f.salario asc;


--quantidade de filhos de cada funcionario
select d.funcionario_responsavel, count(d.funcionario_responsavel) from dependentes as d
group by d.funcionario_responsavel

--outra forma
select p.nome, (
	select count(d.funcionario_responsavel) from dependentes as d 
	where d.funcionario_responsavel=p.id_pessoa
) as quantidade_de_filhos 
from pessoas as p;


--quantos pesquisadores estao trabalhando em cada projeto
select p.nome_projeto , count(pp.id_pesquisador) as qtde_de_pesquisadores
from projetos as p
left join pesquisador_projeto as pp
on p.id_projeto=pp.id_projeto
group by p.nome_projeto
having count(pp.id_pesquisador) > 0
