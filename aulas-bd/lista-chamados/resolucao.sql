-- Cenário 1:
-- A: 
select crm, nome from medico where nome = "Dr. Carlos Andrade";
select data_hora, matricula from consulta where crm = "CRM/RJ 12345-6" and date(data_hora) = "2024-05-21";
select nome from paciente where matricula = 1006;
