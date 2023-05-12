create database db_generation_game_online;

use db_generation_game_online;

create table tb_personagens(
id bigint auto_increment,
nome varchar(255),
genero varchar(255),
altura float,
raca varchar(255),
PRIMARY KEY (id),
id_classes bigint
);

create table tb_classes(
id bigint auto_increment,
classe varchar(255),
hp bigint,
PRIMARY KEY(id)
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_id_classes FOREIGN KEY (id_classes) REFERENCES tb_classes (id) ;

ALTER TABLE tb_personagens ADD ataque bigint;
ALTER TABLE tb_personagens ADD defesa bigint;

insert into tb_classes (classe, hp) values ("Mago", 1000);
insert into tb_classes (classe, hp) values ("Arqueiro", 1500);
insert into tb_classes (classe, hp) values ("Guerreiro", 2000);
insert into tb_classes (classe, hp) values ("Ladino", 1300);
insert into tb_classes (classe, hp) values ("Berserk", 3000);

select * from tb_classes;

insert into tb_personagens (nome, genero, altura,raca, id_classes, ataque, defesa) values ("Avanwa", "F", 1.73, "Elfo", 2, 800, 500);
insert into tb_personagens (nome, genero, altura,raca, id_classes, ataque, defesa) values ("Hyar", "F", 1.65, "Elfo", 1, 1000, 300);
insert into tb_personagens (nome, genero, altura,raca, id_classes, ataque, defesa) values ("Sangwa", "F", 1.70, "Humano", 4, 850, 600);
insert into tb_personagens (nome, genero, altura,raca, id_classes, ataque, defesa) values ("Ana", "F", 1.80, "Elfo Negro", 5, 600, 800);
insert into tb_personagens (nome, genero, altura,raca, id_classes, ataque, defesa) values ("Rosa", "F", 1.90, "Elfo Negro", 3, 500, 1000);
insert into tb_personagens (nome, genero, altura,raca, id_classes, ataque, defesa) values ("Hyarmen", "M", 1.50, "Fada", 1, 1000, 300);
insert into tb_personagens (nome, genero, altura,raca, id_classes, ataque, defesa) values ("Graham Elliot", "M", 1.80, "Humano", 5, 600, 800);
insert into tb_personagens (nome, genero, altura,raca, id_classes, ataque, defesa) values ("Morë Elen", "F", 1.80, "Elfo", 3, 500, 1000);

select * from tb_personagens;

select * from tb_personagens where ataque > 800;
select * from tb_personagens where defesa between 400 and 1000;
select * from tb_personagens where nome like "a%";
select * from tb_personagens inner join tb_classes;
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.id_classes where tb_classes.classe = "Arqueiro";

