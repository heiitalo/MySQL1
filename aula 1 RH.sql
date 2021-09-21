CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_funcionarios(
id_funcionario INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
filial VARCHAR(255) NOT NULL,
data_inicio DATE NOT NULL,
salario FLOAT NOT NULL,
cpf VARCHAR(50) NOT NULL,
UNIQUE (id_funcionario),
UNIQUE (cpf),
PRIMARY KEY (id_funcionario)
);

INSERT INTO tb_funcionarios (nome, email, filial, data_inicio, salario, cpf)
VALUES
("Italo S Vieira", "italovieira@yahoo.com", "Aruja", '1994-08-24', 8600.0, "479.678.728-21"),
("Heloisa B Oliveira", "heloisa@gmail.com", "Aruja", '1997-05-17', 8400.0, "728.431.657-25"),
("Iado S Vieira", "iagovieira@hotmail.com", "Itaqua", '2000-04-21', 5500.0,"665.578.628-22"),
("Raul S Vieira", "raulvieira@gmail.com", "Itaqua", '2002-06-30', 1800.0, "789.456.123-11"),
("Marcos S Vieira", "marcosvieira@hotmail.com", "Aruja", '1994-06-15', 5500.0, "123.456.789-77");

SELECT * FROM db_rh.tb_funcionarios WHERE salario < 2000;
SELECT * FROM db_rh.tb_funcionarios WHERE salario > 2000;

UPDATE tb_funcionarios
SET nome = "Iago S Vieira"
WHERE id_funcionario = 3;