-- INSTRUÇÕES INICIAIS 

-- ############INICIO SQL#################

CREATE DATABASE HOSPITAL_SENAI;
USE HOSPITAL_SENAI;


create table paciente (
    matricula int(9) primary key,
    nome varchar(50),
    telefone varchar(15)
    );

create table medico (
    crm varchar(20) primary key,
    nome varchar(50),
    especializacao varchar(15)
);

create table consulta (
    id_consulta int(9) primary key,
    data_hora datetime,
    crm varchar(20),
    matricula int(9),
   
    constraint fkCRM
    foreign key (crm) references Medico(crm)
        on delete restrict on update restrict,
    constraint fkMatricula
    foreign key (Matricula) references Paciente(Matricula)
       on update restrict on delete restrict
    );
   


describe medico;
describe consulta;
describe paciente;

SHOW INDEX FROM medico;
SHOW INDEX FROM consulta;
SHOW INDEX FROM paciente;

SELECT * FROM medico;
SELECT * FROM consulta;


-- Inserindo registros na tabela 'medico' (5 médicos)
INSERT INTO medico (crm, nome, especializacao) VALUES ('CRM/RJ 12345-6', 'Dr. Carlos Andrade', 'Cardiologia');
INSERT INTO medico (crm, nome, especializacao) VALUES ('CRM/SP 78901-2', 'Dra. Ana Beatriz Costa', 'Dermatologia');
INSERT INTO medico (crm, nome, especializacao) VALUES ('CRM/MG 34567-8', 'Dr. Ricardo Oliveira', 'Ortopedia');
INSERT INTO medico (crm, nome, especializacao) VALUES ('CRM/RJ 90123-4', 'Dra. Fernanda Lima', 'Pediatria');
INSERT INTO medico (crm, nome, especializacao) VALUES ('CRM/SP 56789-0', 'Dr. João Pedro Martins', 'Clínico Geral');

-- Inserindo registros na tabela 'paciente' (10 pacientes)
INSERT INTO paciente (matricula, nome, telefone) VALUES (1001, 'Marcos Paulo', '(21) 98877-6655');
INSERT INTO paciente (matricula, nome, telefone) VALUES (1002, 'Juliana Souza', '(11) 91234-5678');
INSERT INTO paciente (matricula, nome, telefone) VALUES (1003, 'Fernando Alves', '(31) 99988-7766');
INSERT INTO paciente (matricula, nome, telefone) VALUES (1004, 'Beatriz Ribeiro', '(21) 98765-4321');
INSERT INTO paciente (matricula, nome, telefone) VALUES (1005, 'Lucas Ferreira', '(11) 95544-3322');
INSERT INTO paciente (matricula, nome, telefone) VALUES (1006, 'Gabriela Santos', '(21) 98888-9999');
INSERT INTO paciente (matricula, nome, telefone) VALUES (1007, 'Thiago Rocha', '(31) 97777-8888');
INSERT INTO paciente (matricula, nome, telefone) VALUES (1008, 'Larissa Mendes', '(11) 96666-5555');
INSERT INTO paciente (matricula, nome, telefone) VALUES (1009, 'Rafael Pereira', '(21) 95432-1098');
INSERT INTO paciente (matricula, nome, telefone) VALUES (1010, 'Amanda Correia', '(11) 91122-3344');

-- Inserindo os 15 registros de 'consulta', relacionando médicos e pacientes
INSERT INTO consulta (id_consulta, data_hora, crm, matricula) VALUES (1, '2024-05-10 08:30:00', 'CRM/RJ 12345-6', 1001);
INSERT INTO consulta (id_consulta, data_hora, crm, matricula) VALUES (2, '2024-05-10 10:00:00', 'CRM/SP 78901-2', 1002);
INSERT INTO consulta (id_consulta, data_hora, crm, matricula) VALUES (3, '2024-05-11 09:00:00', 'CRM/MG 34567-8', 1003);
INSERT INTO consulta (id_consulta, data_hora, crm, matricula) VALUES (4, '2024-05-11 11:30:00', 'CRM/RJ 90123-4', 1004);
INSERT INTO consulta (id_consulta, data_hora, crm, matricula) VALUES (5, '2024-05-12 14:00:00', 'CRM/SP 56789-0', 1005);
INSERT INTO consulta (id_consulta, data_hora, crm, matricula) VALUES (6, '2024-05-12 15:00:00', 'CRM/RJ 12345-6', 1006);
INSERT INTO consulta (id_consulta, data_hora, crm, matricula) VALUES (7, '2024-05-13 16:30:00', 'CRM/SP 78901-2', 1007);
INSERT INTO consulta (id_consulta, data_hora, crm, matricula) VALUES (8, '2024-05-14 08:00:00', 'CRM/RJ 90123-4', 1008);
INSERT INTO consulta (id_consulta, data_hora, crm, matricula) VALUES (9, '2024-05-15 13:45:00', 'CRM/SP 56789-0', 1009);
INSERT INTO consulta (id_consulta, data_hora, crm, matricula) VALUES (10, '2024-05-15 17:00:00', 'CRM/RJ 12345-6', 1010);
INSERT INTO consulta (id_consulta, data_hora, crm, matricula) VALUES (11, '2024-05-16 10:30:00', 'CRM/MG 34567-8', 1001); -- Paciente 1001 retorna
INSERT INTO consulta (id_consulta, data_hora, crm, matricula) VALUES (12, '2024-05-17 09:15:00', 'CRM/RJ 90123-4', 1002); -- Paciente 1002 retorna
INSERT INTO consulta (id_consulta, data_hora, crm, matricula) VALUES (13, '2024-05-20 11:00:00', 'CRM/SP 78901-2', 1004); -- Paciente 1004 retorna
INSERT INTO consulta (id_consulta, data_hora, crm, matricula) VALUES (14, '2024-05-21 14:30:00', 'CRM/RJ 12345-6', 1006); -- Paciente 1006 retorna
INSERT INTO consulta (id_consulta, data_hora, crm, matricula) VALUES (15, '2024-05-22 08:45:00', 'CRM/SP 56789-0', 1008); -- Paciente 1008 retorna


-- #################FIM SQL####################

/*Cenário 1: A Rotina da Recepção (Comandos SELECT)

História: A recepcionista, Joana, chega para trabalhar na segunda-feira. O telefone não para de tocar. Ela precisa rapidamente de algumas informações para organizar o dia e responder aos pacientes.
Desafios para os alunos:
A- "Preciso da agenda do dia!"
Situação: A primeira tarefa de Joana é imprimir a agenda de consultas do Dr. Carlos Andrade para hoje (vamos imaginar que hoje é dia 21 de Maio de 2024). Ela precisa saber o nome do paciente e o horário da consulta.
Pergunta para a turma: Como podemos buscar no banco de dados apenas as informações que a Joana precisa? Qual comando usamos para selecionar e juntar dados da tabela de consulta e da tabela de paciente?
B- "Quem é o próximo paciente?"
Situação: Um paciente chega e diz: "Eu tenho uma consulta agora, mas esqueci o nome do médico. Meu nome é Beatriz Ribeiro". Joana precisa descobrir com qual médico e em qual horário é a consulta dela.
Pergunta para a turma: Como podemos encontrar os detalhes da consulta (nome do médico e especialização) a partir do nome da paciente? Teremos que consultar as três tabelas ao mesmo tempo?
C- "quero verificar a data da minha ultima consulta com o Ortopedista"
 a paciente Fernando Alves quer saber quando foi o ultimo encontro com o Ortopedista da clinica.
D-" quem é o paciente de telefone (11) 95544-3322"


Cenário 2: Novos Clientes e Agendamentos (Comando INSERT)

História: A clínica está crescendo! Um novo paciente ligou e um médico novo foi contratado.
Desafios para os alunos:
A- "Paciente novo na área!"
Situação: Roberto Dias ligou para a clínica. Ele nunca foi atendido antes e quer marcar uma consulta com o Clínico Geral. O telefone dele é (21) 91212-3434. O sistema precisa primeiro cadastrá-lo para depois marcar a consulta.
Pergunta para a turma: Qual é a ordem correta das operações? O que precisa ser feito primeiro? Quais comandos usamos para inserir esses novos dados no sistema?

Cenário 3: Imprevistos e Despedidas (Comandos DELETE e UPDATE)

História: Como em toda clínica, imprevistos acontecem. Consultas são canceladas e informações precisam ser corrigidas.
Desafios para os alunos:
A- "Cancelamento de última hora."
Situação: A paciente Larissa Mendes (matrícula 1008) ligou e disse que não poderá comparecer à sua consulta do dia 22/05 (id_consulta 15). Ela não quer remarcar agora, apenas cancelar.
Pergunta para a turma: Como podemos remover essa consulta do banco de dados sem apagar os dados da paciente? Qual o cuidado que devemos ter?
B- "Telefone errado!"
Situação: O paciente Marcos Paulo (matrícula 1001) informa que seu número de telefone mudou para (21) 99999-8888.
Pergunta para a turma: Não queremos apagar e inserir de novo. Qual comando usamos para apenas atualizar uma informação que já existe?

C- O Paciente se Mudou (Discussão sobre ON DELETE RESTRICT)
Situação: O paciente 'Marcos Paulo' (matrícula 1001) vai se mudar de país e pediu para que seu cadastro fosse removido da clínica.
Pergunta para a turma: O que acontece se tentarmos executar DELETE FROM paciente WHERE matricula = 1001; diretamente? Por que o banco de dados daria um erro? Qual é a ordem correta para apagar completamente os registros de um paciente que já tem consultas marcadas?

Cenário 4: A Evolução do Sistema (Comando ALTER TABLE)

História: A gerência da clínica percebeu que o sistema precisa de melhorias para se adaptar a novas necessidades.
Desafios para os alunos:
A- "Precisamos do e-mail dos pacientes!"
Situação: A clínica quer começar a enviar lembretes de consulta por e-mail, mas quando a tabela paciente foi criada, ninguém pensou em um campo para isso.
Pergunta para a turma: Como podemos adicionar uma nova coluna chamada email na tabela paciente que já existe e está cheia de dados?
B- "A especialização não cabe!"
Situação: A Dra. Ana Beatriz Costa fez uma nova especialização e agora sua descrição de cargo é "Dermatologia e Estética Avançada". O campo especializacao na tabela medico só permite 15 caracteres e isso não é suficiente.
Pergunta para a turma: Como podemos modificar a estrutura da coluna especializacao para permitir mais caracteres, sem perder os dados que já estão lá?*/
