show databases; #hello world

/* comments
create database tharsosvert;
drop database tharsosvert;
use tharsosvert;

-- example comment 1
# example comment 2
*/

# create database senai_dev;
use senai_dev;

create table alunos (
	matricula int not null, 
    nome varchar(64) not null, 
    primary key (matricula)
    );

show tables;

describe alunos;
