create database escola_senai;
use escola_senai;

create table cadpro (
	codpro int (3) primary key not null auto_increment,
    nomepro varchar(40) not null,
    cpf char(11) unique not null
    );

create table caddis (
	coddis char(6) primary key not null,
    nomedis varchar(40) not null,
    codpro int (3)
	);
    
describe cadpro;
describe caddis;
