create database db_construindo_vidas;

use db_construindo_vidas;


create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
valor varchar(255),
tipoMaterial varchar(255),
quantidade decimal,
primary key(id)

);


create table tb_categorias(
id bigint auto_increment,
ferragens varchar(255),
material varchar(255),
id_categ bigint,
primary key(id),
foreign key(id_categ) references tb_produtos(id)
);

insert into tb_categorias(ferragens,material) values("Ferragens","Vergalhao");
insert into tb_categorias(ferragens,material) values("Material Construcao","Cimento");
insert into tb_categorias(ferragens,material) values("Material Construcao","Piso Lamindo");
insert into tb_categorias(ferragens,material) values("Ferragens","Pregos");
insert into tb_categorias(ferragens,material) values("Material Construcao","Areia fina");

insert into tb_produtos(nome, valor, tipoMaterial,quantidade) values("Areia fina", 40, "Construcao", 100);
insert into tb_produtos(nome, valor, tipoMaterial,quantidade) values("Areia grossa", 30, "Construcao", 50);
insert into tb_produtos(nome, valor, tipoMaterial,quantidade) values("Vergalhao 3/8", 20, "Ferragens", 20);
insert into tb_produtos(nome, valor, tipoMaterial,quantidade) values("Cimento", 20, "Construcao", 10);
insert into tb_produtos(nome, valor, tipoMaterial,quantidade) values("Piso Laminado", 40, "Construcao", 415);
insert into tb_produtos(nome, valor, tipoMaterial,quantidade) values("Azulejo", 30, "Construcao", 134);
insert into tb_produtos(nome, valor, tipoMaterial,quantidade) values("Prego", 20, "Ferragens", 20);
insert into tb_produtos(nome, valor, tipoMaterial,quantidade) values("Massa corrida", 20, "Construcao", 150);

select * from tb_produtos where valor > 100;

select * from tb_produtos;

select * from tb_produtos where valor between 70 and 150;

select * from tb_produtos where nome like "%C%";

select * from tb_categorias inner join tb_produtos on tb_produtos.id_categ = tb_categorias.id where material = "Cimento";

select * from tb_produtos inner join tb_categorias 
on tb_produtos.categoria_id = tb_categorias.id 
where td_categorias.tipo = "aventura" 
order by td_produtos.nome;


select * from produto inner join tb_usuarios 
on tb_produtos.usuarios_id = tb_usuarios.id;














