-- 1 --
create table departamento(
id int primary key,
nome varchar,
sigla varchar
);

-- 2 --
create table funcionario(
id int primary key,
nome varchar,
matricula varchar,
id_departamento int,
foreign key (id_departamento) references departamento
);

-- 3 -- 
alter table departamento
add column descricao varchar

-- 4 --
alter table funcionario
rename column nome to sigla

-- 5 --
insert into departamento
(id, nome, sigla, descricao)
values
(1, 'Departamento Pessoal', 'DP', 'Atividades adm do RH'),
(2, 'Recursos Humanos', 'RH', 'Contratar, demitir e treinar'),
(3, 'Assitência Técnica', 'ASTEC', 'Prestar assitência'),
(4, 'Serviços Gerais', 'SG', 'Limpeza, organização, transportes, manutenções'),
(5, 'Tecnologia da Informação', 'TI', 'Criar usuários, fazer banco de dados')

-- 6 --
insert into funcionario
(id, sigla, matricula, id_departamento)
values
(1, 'C.G.A', '123456', 1),
(2, 'E.G.F', '456789', 2),
(3, 'T.B.S', '258369', 3),
(4, 'E.T', '159269', 4),
(5, 'M.M', '147258', 5),
(6, 'E.S', '123985', 1),
(7, 'W.S.P', '789369', 2),
(8, 'R.S.I', '864955', 3), 
(9, 'J.P', '781325', 4),
(10, 'R.J.L', '146321', 5)

-- 7 --
select * from departamento
inner join funcionario on departamento.id = funcionario.id_departamento

-- 8 --
delete from funcionario where id_departamento = 1

-- 9 --
select * from funcionario where sigla ilike ('a%')
