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

-- chave estrangeira com alter table
/*
alter table caddis add
	constraint fkCodpro
    foreign key (codpro)
    references cadpro (codpro)
    on update restrict on delete restrict;
*/

-- chave estrangeira criada direto na tabela 
/*
create table caddis (
	coddis char(6) primary key not null,
    nomedis varchar(40) not null,
    codpro int (3),
	constraint fkCodpro
    foreign key (codpro)
    references cadpro (codpro)
    on update restrict on delete restrict
    );
*/

show index from cadpro;
show index from caddis;
