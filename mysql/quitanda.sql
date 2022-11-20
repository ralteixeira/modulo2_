CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(

id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
data_validade DATE,
preco DECIMAL NOT NULL,
PRIMARY KEY (id)

);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUE("tomate", 100, "2022-11-14",8.00 );

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUE("macã", 20, "2022-11-14",3.00 );

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUE("banana", 200, "2022-11-14",12.00 );

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUE("pêra", 100, "2022-11-14",2.90 );

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUE("laranja", 50, "2022-11-14",10.00 );


ALTER TABLE tb_produtos ADD descricao VARCHAR(255);

ALTER TABLE td_produtos MODIFY preco DECIMAL(6,2);

ALTER TABLE tb_produtos DROP descricao;

SELECT * FROM tb_produtos;



SELECT nome, quantidade FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1;

SELECT * FROM tb_produtos WHERE nome = "macã";

SELECT * FROM tb_produtos WHERE preco > 5.00;















