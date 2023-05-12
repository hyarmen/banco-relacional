CREATE DATABASE db_funcionarios;

USE db_funcionarios;

CREATE TABLE tb_infoFuncionarios(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
nivel VARCHAR(255) NOT NULL,
salario DECIMAL(6,2),
PRIMARY KEY (id)
);

INSERT INTO tb_infoFuncionarios(nome, cargo, nivel, salario) VALUES ("Ana", "Desenvolvedor Java Fullstack", "Júnior", 3500.00);
INSERT INTO tb_infoFuncionarios(nome, cargo, nivel, salario) VALUES ("Deborah", "Desenvolvedor Java Fullstack", "Júnior", 3500.00);
INSERT INTO Tb_infoFuncionarios(nome, cargo, nivel, salario) VALUES ("Rosa", "Desenvolvedor Java Fullstack", "Sênior", 5500.00);
INSERT INTO TB_infoFuncionarios(nome, cargo, nivel, salario) VALUES ("HYarmen", "DevOps", "Pleno", 4500.00);
INSERT INTO TB_infoFuncionarios(nome, cargo, nivel, salario) VALUES ("HYarteira", "UI Design", "Júnior", 3000.00);

SELECT * FROM TB_infoFuncionarios;

SELECT * FROM TB_infoFuncionarios WHERE SALario >= 2000;
SELECT * FROM TB_infoFuncionarios WHERE SALario < 2000;

UPDATE TB_infoFuncionarios SET SALario = 3100.00 WHERE ID = 5;

