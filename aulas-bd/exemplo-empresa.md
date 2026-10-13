show databases; #hello world

create database empresa_tharsosvert;

use empresa_tharsosvert;

create table cliente (
	matricula int(11) not null primary key auto_increment,
    nome varchar(60) not null,
    telefone char(13),
    email varchar(30),
    nascimento date not null
);

show tables;
describe cliente;
