create table funcionario1 (
	pis varchar (30) primary key,
	nome varchar,
	carga_horaria int,
	cargo varchar (20),
	cpf varchar (20),
	email varchar (25),
	salario decimal (7,2),
	data_nasc date
	);
	
create table animais (
	cod int primary key,
	nome varchar (30),
	peso varchar (20),
	ano_nasc date,
	setor varchar (15),
	especie varchar (15),
	obs varchar (30),
	data_visita_vet date
)

create table estoque (
	cod int primary key,
	validade date,
	preco decimal (7,2),
	qtd bigint,
	data_compra date,
	marca varchar (15),
	produto varchar (25),
	cod_fornecedor varchar references fornecedor(cnpj)
)

insert into estoque
(cod, validade, preco, qtd, data_compra, marca, produto, cod_fornecedor)
values
(321, '2023-08-12', 5000.90, 5050, '2022-01-10', 'santa mãe', 'rações', '22.333.444/0001-55' ),
(654, '2023-10-12', 4300.90, 4300, '2021-09-10', 'santa pai', 'rações', '33.555.666/0001-66' )

create table fornecedor (
	cnpj varchar primary key,
	local varchar (40),
	email varchar (20),
	produto varchar (25)
)

insert into fornecedor
(cnpj, local, email, produto)
values
('22.333.444/0001-55', 'São Paulo','racoedesp@gmail.com', 'ração'),
('33.555.666/0001-66', 'Ceára', 'racoela@hotmail.com','racao');

create table contas (
	cod int primary key,
	valor_total_estq decimal (15,2),
	mes_ano varchar (15),
	valor_total_bilhet decimal (15,2),
	valor_total_funci decimal (15,2),
	gastos_extras decimal (8,2),
	lucro decimal (8,2)
	
)

insert into contas 
(cod, valor_total_estq, mes_ano, valor_total_bilhet, valor_total_funci, gastos_extras, lucro)
values
(852, 10300.00, 'maio/2021', 50500.20, 70600.30, 5000.60, 11500.00),
(963, 9000.30, 'abril/2020', 4000.30, 90000.30, 4000.90, 10006.50)

create table empresas_parceiras(
	cod int primary key,
	funcao varchar (50),
	aluguel decimal (8,2),
	nome varchar (30),
	email varchar (15)
)


create table cadastro(
	cpf varchar primary key,
	nome varchar (30),
	checkin date,
	idade int
	
)

insert into cadastro
(cpf, nome, checkin, idade)
values
('132.005.649-03', 'Clarissa', '2022-01-03', 17),
('102.227.489-90', 'Théo', '2022-03-10', 16);

create table bilheteria(
	n_pulseira int primary key,
	esta_zoo boolean,
	cod_visita varchar references cadastro (cpf)
)

insert into bilheteria
(n_pulseira, esta_zoo, cod_visita)
values
(123, '0', '132.005.649-03'),
(456, '1', '102.227.489-90');


