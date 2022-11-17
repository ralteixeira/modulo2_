CREATE DATABASE db_escola;

use db_escola;

CREATE TABLE tb_escola(

id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
idade INT,
periodo VARCHAR(255) NOT NULL,
nota DECIMAL,
PRIMARY KEY(id)

);

ALTER TABLE tb_escola MODIFY nota decimal(4,2);

INSERT INTO tb_escola(nome, idade, periodo, nota) VALUE("João Paulo", 12, "Tarde", 4.5);

INSERT INTO tb_escola(nome, idade, periodo, nota) VALUE("Maria Joana", 10, "Manhã", 8);

INSERT INTO tb_escola(nome, idade, periodo, nota) VALUE("José Maria", 11, "Tarde", 6.5);

INSERT INTO tb_escola(nome, idade, periodo, nota) VALUE("Maria Jose", 09, "Manhã", 9);

INSERT INTO tb_escola(nome, idade, periodo, nota) VALUE("Mario Silva", 15, "Tarde", 5);

SELECT * FROM tb_escola WHERE nota > 7;

SELECT * FROM tb_escola WHERE nota < 7;

UPDATE tb_escola set periodo = "NOTURNO " WHERE id = 5;


