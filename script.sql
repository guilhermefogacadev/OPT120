
create database OPT120;
use OPT120;


create table Usuario (
        id INT AUTO_INCREMENT PRIMARY KEY,
        nome varchar(255),
        email varchar(255),
        senha varchar(255)

);

create table Atividade (
        id INT AUTO_INCREMENT PRIMARY KEY,
        titulo varchar(255),
        nota double,
        data_entrega datetime

);

create table Usuario_Atividade(
        usuario_id INT,
        atividade_id INT,
		    entrega date,
        nota double,
        FOREIGN KEY(usuario_id)references Usuario(id),
        FOREIGN KEY(atividade_id) references Atividade(id)
);







