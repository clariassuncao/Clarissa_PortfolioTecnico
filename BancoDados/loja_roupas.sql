-- Criando e inserindo dados e fornecedores --
create table fornecedores (
	cnpj varchar(18) primary key,	
	nome_fantasia varchar,
	tipo_roupa varchar,
	local varchar);
	
insert into fornecedores
	(cnpj, nome_fantasia, tipo_roupa, local)
values
('22.333.333/0001-22', 'Joazinha Importações', 'jeans', 'São Paulo'),
('33.444.555/0001-23', 'Lilia Importações', 'vestido', 'São Paulo'),
('55.555.555/0001-85', 'Kate', 'shorts', 'São Paulo');


-- Criando e inserindo dados e funcionario --
create table funcionario(
	num_carteira_trabalho varchar(14) primary key,
	nome varchar,
	cpf varchar,
	salario decimal(7,2),
	carga_horaria int,
	cargo varchar
);

insert into funcionario
	(num_carteira_trabalho, nome, cpf, salario, carga_horaria, cargo)
values
	('33.55555.22-1', 'Sheldon', '225.655.582-45', 1000.00, 6, 'estagiário'),
	('55.55555.22-8', 'Jéssica', '132.005.649.03', 2000.00, 8, 'estoquista');
	
-- Criando e inserindo dados e clientes --
create table cliente(
	cpf varchar (14) primary key,
	nome varchar,
	email varchar,
	endereco varchar,
	telefone varchar
);

insert into cliente
(cpf, nome, email, endereco, telefone)
values
('222.333.444-06', 'Cleber', 'cleber@gmail.com', 'Rua Tal', '48 996708200'),
('222.333.555-00', 'José', 'jose@gmail.com', 'Avenida Tal', '48 996708500');

-- Criando e inserindo dados em produtos --
-- Tabela contem uma chave estrangeira --
-- produto n-->1 fornecedor --
create table produtos(
	cod_produto bigint primary key,
	tecido varchar,
	tamanho varchar,
	modelo varchar,
	estilo varchar,
	marca varchar,
	preco decimal(5,2), --preco maximo 999,99
	cod_fornecedor varchar (18),
	foreign key (cod_fornecedor) references fornecedores 
);
insert into produtos
(cod_produto, tecido, tamanho, modelo, estilo, marca, preco, cod_fornecedor)
values
(654897, 'Poliamida', 'M', 'Short', 'Esporte', 'Rola_Moca', 54.90, '55.555.555/0001-85' ),
(6644944994, 'Algodão', 'G', 'Vestido', 'Gala', 'Lança Perfume', 350.00, '33.444.555/0001-23' );

-- Criando e inserindo dados em venda --
-- Tabela de relacionamento --
create table venda (
	data date,
	cod_funcionarios varchar(14) references funcionario,
	cod_produtos bigint references produtos,
	cod_clientes varchar(14) references cliente
);
insert into venda
(data, cod_funcionarios, cod_produtos, cod_clientes)
values
('2022-02-16', '55.55555.22-8', 654897, '222.333.555-00'),
('2022-02-17', '33.55555.22-1', 6644944994, '222.333.444-06');

select * from produtos

select v.data as data_venda, p.modelo, p.marca, p.preco, f.nome as nome_funcionario, f.salario, c.nome as nome_cliente, c.email from venda v
inner join produtos p on v.cod_produtos = p.cod_produto
inner join funcionario f on v.cod_funcionarios = f.num_carteira_trabalho
inner join cliente c on v.cod_clientes = c.cpf

