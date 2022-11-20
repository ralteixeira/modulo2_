create database db_cidade_dos_veganos;

use db_cidade_dos_veganos;

create table tb_categorias(
id bigint auto_increment,
verdura varchar(255),
legumes varchar (255),
primary key(id)
);

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
preco int,
tipo varchar(255),
validade date,
id_second bigint,
primary key(id),
foreign key (id_second) references tb_produtos(id) 

);

insert into tb_categorias(verdura, legumes) values("Alface","Cenoura");
insert into tb_categorias(verdura, legumes) values("Repolho","Batata");
insert into tb_categorias(verdura, legumes) values("Couve","Mandioca");
insert into tb_categorias(verdura, legumes) values("Rucula","Bata Baroa");
insert into tb_categorias(verdura, legumes) values("Acelga","Aipim");


insert into tb_produtos (nome,preco,tipo,validade, id_second) values("Alface", 5, "Verduras",'2022-12-04',1);
insert into tb_produtos (nome,preco,tipo,validade,id_second) values("Cenoura", 6, "Legumes",'2022-12-04',2);
insert into tb_produtos (nome,preco,tipo,validade,id_second) values("Mandioca", 10, "Raizes",'2022-12-04',3);
insert into tb_produtos (nome,preco,tipo,validade,id_second) values("Aipim", 10, "Legumes",'2022-12-04',4);
insert into tb_produtos (nome,preco,tipo,validade,id_second) values("Batata", 8, "Legumes",'2022-12-04',5);
insert into tb_produtos (nome,preco,tipo,validade,id_second) values("Couve", 7, "Verduras",'2022-12-04',6);
insert into tb_produtos (nome,preco,tipo,validade,id_second) values("Repolho", 7, "Verduras",'2022-12-04',7);
insert into tb_produtos (nome,preco,tipo,validade,id_second) values("Tomate", 15, "Legumes",'2022-12-04',8);

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 5.00 and 60.00;

select * from tb_produtos where nome like "%C%";

select * from tb_categorias inner join tb_produtos on tb_produtos.id_second = tb_categorias.id where tipo = "Raizes";








