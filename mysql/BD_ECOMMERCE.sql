CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_ecommerce(

codProd VARCHAR(255),
nomeProd VARCHAR(255),
tipoProd VARCHAR(255),
valorProd DECIMAL NOT NULL,
dataCadastro DATE,
PRIMARY KEY(codProd)

);
ALTER TABLE tb_ecommerce MODIFY valorProd DECIMAL(8,2);

INSERT INTO tb_ecommerce(codProd,nomeProd,tipoProd,valorProd, dataCadastro) VALUES("gen3476#27", "Video Game", "Games", 4000, '2022-11-16');

INSERT INTO tb_ecommerce(codProd,nomeProd,tipoProd,valorProd, dataCadastro) VALUES("meli3476#27", "MacBook", "Computadores", 20000, '2022-11-16');

INSERT INTO tb_ecommerce(codProd,nomeProd,tipoProd,valorProd, dataCadastro) VALUES("tre347457", "Tv Sony 85 Polegadas", "TV's", 2000, '2022-11-16');

INSERT INTO tb_ecommerce(codProd,nomeProd,tipoProd,valorProd, dataCadastro) VALUES("grtg476#27", "Liquidificador", "Eletrodomesticos", 200, '2022-11-16');

INSERT INTO tb_ecommerce(codProd,nomeProd,tipoProd,valorProd, dataCadastro) VALUES("hgf476#27", "Sabão de coco", "Produtos Limpeza", 50, '2022-11-16');

INSERT INTO tb_ecommerce(codProd,nomeProd,tipoProd,valorProd, dataCadastro) VALUES("gen56927", "Desodorante Avanço", "Produtos Beleza", 2, '2022-11-16');

INSERT INTO tb_ecommerce(codProd,nomeProd,tipoProd,valorProd, dataCadastro) VALUES("gfg566#27", "Espada Thundercats", "Brinquedos", 4000, '2022-11-16');

INSERT INTO tb_ecommerce(codProd,nomeProd,tipoProd,valorProd, dataCadastro) VALUES("genmn64327", "Placa de Video", "Hardware", 4000, '2022-11-16');

SELECT * FROM tb_ecommerce WHERE valorProd > 2000;

SELECT * FROM tb_ecommerce WHERE valorProd < 2000;

UPDATE tb_ecommerce set nomeProd = "Sabao em Pó " WHERE codProd = 'hgf476#27';









