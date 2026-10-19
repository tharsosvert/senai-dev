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







/*https://dontpad.com/senaiJS
create database escola;
use escola;

CREATE TABLE cadpro (
	CODPRO INT(3) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	NOMEPRO VARCHAR(40) NOT NULL,
    CPF CHAR(11) NOT NULL UNIQUE);

CREATE TABLE caddis (
	CODDIS CHAR(6) NOT NULL PRIMARY KEY,
    NOMEDIS VARCHAR(40) NOT NULL, 
    CODPRO INTEGER(3));

ALTER TABLE caddis ADD 
	CONSTRAINT fkCODPRO 
    FOREIGN KEY (CODPRO) 
    REFERENCES cadpro (CODPRO)
	ON UPDATE RESTRICT ON DELETE RESTRICT;

describe cadpro;
describe caddis;
show index from caddis;
show index from cadpro;
select * from cadpro;
select * from caddis;
    
INSERT INTO cadpro VALUES (100, 'SILVANA', '11122233399');
INSERT INTO cadpro VALUES (110, 'ROBERTO', '11122244488');
INSERT INTO cadpro VALUES (120, 'RENATO', '11122244477');

INSERT INTO caddis VALUES ('CG-100', 'MATEMATICA', 100);
INSERT INTO caddis VALUES ('CG-110', 'FISICA', 100);
INSERT INTO caddis VALUES ('CG-200', 'PORTUGUES', 110);
INSERT INTO caddis VALUES ('CG-300', 'FILOSOFIA', 110);
INSERT INTO caddis VALUES ('TI-100', 'ALGORITMOS', 120);
INSERT INTO caddis VALUES ('TI-200', 'BD', 120);


### INSERÇÕES QUE DARÃO ERRO ###
INSERT INTO cadpro VALUES (120, 'CARLOS', '11122277744');
INSERT INTO cadpro VALUES (300, 'JULIA', '11122244488');
INSERT INTO caddis VALUES ('CG-400', 'BIOLOGIA', 380); -- null ao invés de 380, funciona o dado ficará pendente e sua relação com a outra tabela fica diferente*/

