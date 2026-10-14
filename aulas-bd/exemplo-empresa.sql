show databases; -- hello world

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



-- october14
INSERT INTO cliente (
	matricula,
    nome,
    telefone,
    email,
    nascimento) 
    
    VALUES ( 
    null,
    "Ayrton Bueno",
    "(21)8511-9876",
    "abueno@email.com",
    "1990-10-25"
);

/*Inserir vários de uma só vez
INSERT INTO cliente (
	matricula,
    nome,
    telefone,
    email,
    nascimento) 
    
VALUES 
    (null,"Zanon","(11)3124-8335","zanon@email.com","1993-11-12"),
    ();
*/

-- visualizar todos os clientes da tabela
select * from cliente;
