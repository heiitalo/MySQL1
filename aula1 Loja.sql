CREATE DATABASE db_loja;
USE db_loja;

CREATE TABLE tb_produtos(
id_produtos INT NOT NULL AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
marca VARCHAR(255) NOT NULL,
preco FLOAT NOT NULL,
categoria VARCHAR(255) NOT NULL,
edicao VARCHAR(255) NOT NULL,
PRIMARY KEY (id_produtos)
);

INSERT INTO tb_produtos (tipo, marca, preco, categoria, edicao)
VALUES
("Camiseta", "Nike", 150.00, "Casual", "Verão 2021"),
("Moletom", "Adidas", 500.00, "Casual", "Inveno 2020"),
("Chuteira", "Adidas", 7500.00, "Futebol", "Messi 2019"),
("Camisa", "Vans", 180.00, "Casual", "Verão 2020"),
("Jaqueta", "Lacoste", 950.00, "Esporte fino", "Inverno 2021"),
("Bermuda", "Mizuno", 250.00, "Casual", "Verão 2021"),
("Toca", "Puma", 95.00, "Casual", "Inverno 2020");

INSERT INTO tb_produtos (tipo, marca, preco, categoria, edicao)
VALUES
("Tênis", "Rebook", 450.00, "Basket", "Bulls 2018"),("Tênis", "Rebook", 450.00, "Basket", "Bulls 2018");

SELECT * FROM db_loja. tb_produtos WHERE preco > 200;
SELECT * FROM db_loja. tb_produtos WHERE preco < 200;

UPDATE tb_produtos
SET preco = 750.0
WHERE id_produtos = 9;