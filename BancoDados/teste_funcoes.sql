create table mercado(
	id int primary key,
	descricao varchar,
	preco decimal, 
	categoria varchar
);

insert into mercado
(id, descricao, preco, categoria)
values
(1, 'Leite', 4.85, 'Latcinos'),
(2, 'Bolhacha', 2.99, 'Variados'),
(3, 'Arroz', 5.69, 'Grãos'),
(4, 'Tomate', 7.59, 'Frutas'),
(5, 'Chocolate', 2.30, 'Doces')

select * from mercado

create function aumento (preco decimal (4,2)) returns decimal as $$
 declare 
 conta decimal (4,2); 
 resultado decimal (4,2);
 begin
 	conta = preco * 0.10;
	resultado = conta + preco;
    return resultado;
 end;
  $$ language PLPGSQL
  
update mercado set preco = aumento (preco)

create function aumento5 (preco decimal (4,2)) returns decimal as $$
 declare 
aumento decimal;
 begin
 	if (preco>99) then
	aumento = preco * 0.20;
	aumento = aumento + preco;
	elseif (preco>49)then
	aumento = preco * 0.10;
	aumento = aumento + preco;
	else
	aumento = preco * 0.05;
	aumento = aumento + preco;
 end if;
 return aumento5;
 end;
  $$ language PLPGSQL
  
update mercado set preco = aumento5 (preco)
