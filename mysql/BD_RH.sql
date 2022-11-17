CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaborador(
reg BIGINT AUTO_INCREMENT,
nome VARCHAR(255) not null,
salario DECIMAL NOT NULL,
turnoTrabalho VARCHAR(255),
telefone VARCHAR(255),
PRIMARY KEY (reg)

);

ALTER TABLE tb_colaborador MODIFY salario DECIMAL(8,2);

INSERT INTO tb_colaborador(nome,salario,turnoTrabalho,telefone) VALUES("Ruan da Massa", 4000, "Noturno", "(011) 4011 - 6940" );

INSERT INTO tb_colaborador(nome,salario,turnoTrabalho,telefone) VALUES("Guilherme Chineisi", 1590, "Diurno", "(031) 5677 - 6440" );

INSERT INTO tb_colaborador(nome,salario,turnoTrabalho,telefone) VALUES("Ralph Angeli", 1300, "Noturno", "(012) 54611 - 8340" );

INSERT INTO tb_colaborador(nome,salario,turnoTrabalho,telefone) VALUES("Bora Bill", 4000, "Noturno", "(011) 4011 -  6456" );

INSERT INTO tb_colaborador(nome,salario,turnoTrabalho,telefone) VALUES("Bora Filho do Bill", 2000, "Diurno", "(011) 4011 - 66543" );

SELECT * FROM tb_colaborador WHERE salario >= 2000;


SELECT * FROM tb_colaborador WHERE salario < 2000;

UPDATE tb_colaborador set telefone = "(012) 5511 - 4098" WHERE reg = 3;





