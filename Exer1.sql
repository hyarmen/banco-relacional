CREATE DATABASE db_funcionarios;

USE db_funcionarios;

CREATE TABLE tb_infoFuncionarios(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
nivel varchar(255) not null,
salario decimal(6,2),
PRIMARY KEY (id)
);

INSERT INTO tb_infoFuncionarios(nome, cargo, nivel, salario) VALUES ("Ana", "Desenvolvedor Java Fullstack", "Júnior", 3500.00);
INSERT INTO tb_infoFuncionarios(nome, cargo, nivel, salario) VALUES ("Deborah", "Desenvolvedor Java Fullstack", "Júnior", 3500.00);
INSERT INTO tb_infoFuncionarios(nome, cargo, nivel, salario) VALUES ("Rosa", "Desenvolvedor Java Fullstack", "Sênior", 5500.00);
INSERT INTO tb_infoFuncionarios(nome, cargo, nivel, salario) VALUES ("Hyarmen", "DevOps", "Pleno", 4500.00);
INSERT INTO tb_infoFuncionarios(nome, cargo, nivel, salario) VALUES ("Hyarteira", "UI Design", "Júnior", 3000.00);

SELECT * FROM tb_infoFuncionarios;

SELECT * FROM tb_infoFuncionarios WHERE salario >= 2000;
SELECT * FROM tb_infoFuncionarios WHERE salario < 2000;

UPDATE tb_infoFuncionarios SET salario = 3100.00 WHERE id = 5;

