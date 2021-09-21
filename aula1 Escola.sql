CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_alunos(
id_alunos INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cpf VARCHAR(255) NOT NULL,
matricula BIGINT NOT NULL,
email VARCHAR(255) NOT NULL,
nota DECIMAL NOT NULL,
UNIQUE (cpf),
UNIQUE (matricula),
PRIMARY KEY (id_alunos)
);

INSERT INTO tb_alunos (nome, cpf, matricula, email, nota)
VALUES
("Italo S Vieira", "123.456.789-88", 789456, "italo@gmail.com", 10.0),
("Heloisa B Oliveira", "987.654.321-55", 123456, "heloisa@gmail.com", 10.0),
("Iago S Vieira", "456.789.123-88", 456789, "iago@gmail.com", 9.5),
("Raul S Vieira", "123.789.456-33", 456654, "raul@gmail.com", 5.0),
("Marcos S Vieira", "789.654.123-44", 741258, "marcos@hotmail.com", 8.0),
("Luciana Ap da Silva", "963.258.741-99", 456951, "luciana@yahoo.com.br", 6.5),
("Luciano Huck", "159.357.852-88", 753159, "luciano@hotmail.com", 3.0),
("Rogério Skylab", "148.953.258-51", 159753, "rogerio@hotmail", 0.0);

SELECT * FROM db_escola.tb_alunos WHERE nota < 7;
SELECT * FROM db_escola.tb_alunos WHERE nota > 7;

UPDATE tb_alunos
SET nota = 10
WHERE id_alunos = 8;
