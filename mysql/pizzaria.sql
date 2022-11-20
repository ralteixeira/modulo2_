create database db_pizzaria_legal;


use db_pizzaria_legal;


create table tb_categorias(
 
 id bigint auto_increment,
 tamanho varchar(255),
 tipo varchar(255),
 primary key(id)

);


create table tb_pizzas(
id bigint auto_increment,
quantidade int,
sabor varchar(255),
tipoMassa varchar(255),
preco decimal, 
id_secundario bigint, 
primary key (id), 
foreign key (id_secundario) references tb_categorias(id) 
);
alter table tb_pizzas modify preco decimal (8, 2);
insert into tb_categorias (tamanho, tipo) values("Grande", "Gourmet");
insert into tb_categorias (tamanho, tipo) values("Media", "Normal");
insert into tb_categorias (tamanho, tipo) values("Grande", "Normal");
insert into tb_categorias (tamanho, tipo) values("Pequena", "Gourmet");
insert into tb_categorias (tamanho, tipo) values("Media", "Gourmet");

select * from tb_categorias;

insert into tb_pizzas (quantidade,sabor, tipoMassa, preco,id_secundario) values(5, "Portuguesa","Massa Fina", 75.50, 1 );
insert into tb_pizzas (quantidade,sabor, tipoMassa, preco,id_secundario) values(2, "Mussarela","Massa grossa", 68.90 ,3);
insert into tb_pizzas (quantidade,sabor, tipoMassa, preco,id_secundario) values(1, "Atum","Massa Media", 98.90 ,2);
insert into tb_pizzas (quantidade,sabor, tipoMassa, preco,id_secundario) values(6, "Napolitana","Massa Grossa", 78.00,5 );
insert into tb_pizzas (quantidade,sabor, tipoMassa, preco,id_secundario) values(3, "Marguerita","Massa Grossa", 65.00,4 );
insert into tb_pizzas (quantidade,sabor, tipoMassa, preco,id_secundario) values(1, "Calabreza","Massa Media", 55.00,1 );
insert into tb_pizzas (quantidade,sabor, tipoMassa, preco,id_secundario) values(1, "Quatro Queijos","Massa Media", 65.00, 2 );
insert into tb_pizzas (quantidade,sabor, tipoMassa, preco,id_secundario) values(1, "Primavera","Massa Media", 87.00, 5 );

select * from tb_pizzas where preco > 45.00;

select * from tb_pizzas where preco between 50.00 and 100.00;

select * from tb_pizzas where sabor like "%M%";

select * from tb_pizzas inner join tb_categorias on tb_pizzas.id_secundario = tb_categorias.id;

select * from tb_categorias inner join tb_pizzas on tb_pizzas.id_secundario = tb_categorias.id where tipo = "Normal";







