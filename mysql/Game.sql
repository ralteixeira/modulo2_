CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;


create table tb_classes(

id_classe bigint auto_increment,
atributos varchar(255) not null,
categoria varchar(255),
primary key (id_classe)

);


create table tb_personagens(

id bigint auto_increment,
nome varchar(255),
ataque int not null,
sexo varchar(255) not null,
defesa int not null,
id_personagem bigint,
primary key(id),
foreign key(id_personagem)references tb_classes(id_classe)

);

-- Inserindo na tabela_classes

insert into tb_classes(atributos, categoria) values ("Guerreiro","Orc");
insert into tb_classes(atributos, categoria) values ("Mago","Undead");
insert into tb_classes(atributos, categoria) values ("Soldado","Humano");
insert into tb_classes(atributos, categoria) values ("Arqueiro","Elfo");
insert into tb_classes(atributos, categoria) values ("Assassino","Range");


-- inserindo na tb_personagens

insert into tb_personagens(nome, ataque, defesa, sexo, id_personagem) value ("Petrus", 3000, 900, "Masculino", 3);
insert into tb_personagens(nome, ataque, defesa, sexo, id_personagem) value ("Bortre", 5000, 400, "Masculino", 4);
insert into tb_personagens(nome, ataque, defesa, sexo, id_personagem) value ("Robertaum", 5300, 500, "Masculino", 5);
insert into tb_personagens(nome, ataque, defesa, sexo, id_personagem) value ("Bruxilirios", 200, 1000, "Masculino",2);
insert into tb_personagens(nome, ataque, defesa, sexo, id_personagem) value ("Juvenal", 1200, 400, "Masculino",5);
insert into tb_personagens(nome, ataque, defesa, sexo, id_personagem) value ("Grorc", 1200, 400, "Masculino",1);
insert into tb_personagens(nome, ataque, defesa, sexo, id_personagem) value ("Brucnildes", 1200, 400, "Feminino",2);
insert into tb_personagens(nome, ataque, defesa, sexo, id_personagem) value ("Grorca", 1200, 400, "Feminino",1);


select * from tb_personagens where ataque> 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%C%";

select * from tb_personagens inner join tb_classes on tb_personagens.id_personagem = tb_classes.id_classe;

select * from tb_classes inner join tb_personagens on tb_personagens.id_personagem = tb_classes.id_classe where atributos = "arqueiro";
















