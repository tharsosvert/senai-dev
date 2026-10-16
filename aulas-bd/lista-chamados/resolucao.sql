-- ao iniciar: 
use hospital_senai;

-- Cenário 1:
-- A: 
select crm from medico where nome = "Dr. Carlos Andrade";
select data_hora, matricula from consulta where crm = "CRM/RJ 12345-6" and date(data_hora) = "2024-05-21";
select nome from paciente where matricula = 1006;
-- Dr. Carlos Andrade de CRM/RJ 12345-6 possui consulta em 2024-05-21 14:30:00 com paciente de matricula 1006, que é a Gabriela Santos

-- B:
select matricula from paciente where nome = "Beatriz Ribeiro"; --1004
select data_hora, crm from consulta where matricula = 1004; --'2024-05-11 11:30:00', 'CRM/RJ 90123-4' e '2024-05-20 11:00:00', 'CRM/SP 78901-2'
select nome from medico where crm = "CRM/RJ 90123-4"; -- 'Dra. Fernanda Lima'
select nome from medico where crm = "CRM/SP 78901-2"; -- 'Dra. Ana Beatriz Costa'
-- Suas consultas estavam marcadas para dia 2024-05-11 11:30:00 com Dra. Fernanda Lima e 2024-05-20 11:00:00 com Dra. Ana Beatriz Costa

-- C: 
select matricula from paciente where nome = "Fernando Alves"; -- 1003
select data_hora from consulta where matricula = 1003; -- 2024-05-11 09:00:00
-- Última consulta do Fernando Alves foi em 2024-05-11 09:00:00

-- D: 
select nome from paciente where telefone = "(11) 95544-3322";
-- O paciente com este número é o Lucas Ferreira

-- Cenário 2:
-- A: 
select matricula from paciente; -- o próximo será 1011
insert into paciente (matricula, nome, telefone) values (1011, "Roberto Dias", "(21) 91212-3434"); -- paciente adicionado

select crm, nome from medico where especializacao = "Clínico Geral"; -- CRM/SP 56789-0
select id_consulta from consulta order by id_consulta; -- o próximo id será 16

insert into consulta (id_consulta, data_hora, crm, matricula) values ("16", "2024-05-23", "CRM/SP 56789-0", "1011"); -- solicitar dados para marcar a consulta, coloquei próxima data do cenário atual

-- Cenário 3:
-- A: 
/* verificações antes de deletar
select matricula, nome from paciente where nome = "Larissa Mendes"; --  (matrícula 1008)
select * from consulta where matricula = "1008"; -- (2024-05-22) / (id_consulta 15)*/
delete from consulta where id_consulta = 15;
select * from consulta; -- check de todas as consultas

-- B: 
select nome, telefone from paciente where matricula = "1001"; -- check para confirmar se este é o dado que desejamos alterar
update paciente set telefone = "(21) 99999-8888" where matricula = "1001";

-- C: 
-- conferindo os dados
select * from paciente where matricula = 1001;
select * from consulta where matricula = 1001;

-- apagando inversamente
delete from consulta where matricula = 1001;
delete from paciente where matricula = 1001;


-- Cenário 4:
-- A: 
alter table paciente add email varchar(100) after nome;
select * from paciente; -- check

-- B:
alter table medico modify especializacao varchar(50);
