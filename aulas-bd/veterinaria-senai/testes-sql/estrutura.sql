-- ============================================================================
-- ESTRUTURA DO BANCO DE DADOS (DDL)
-- ============================================================================

CREATE TABLE IF NOT EXISTS Tutor (
    cpf CHAR(11) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Pet (
    id_pet INT(5) PRIMARY KEY AUTO_INCREMENT,
    cpf CHAR(11) NOT NULL,
    especie VARCHAR(40) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    FOREIGN KEY (cpf) REFERENCES Tutor(cpf)
);

CREATE TABLE IF NOT EXISTS Veterinario (
    crm VARCHAR(20) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Consulta (
    id_consulta INT(5) PRIMARY KEY AUTO_INCREMENT,
    id_pet INT(5) NOT NULL,
    crm VARCHAR(20) NOT NULL,
    data_hora DATETIME NOT NULL,
    valor DECIMAL(10,2) DEFAULT 150.00, -- Coluna auxiliar para possibilitar operacoes aritmeticas e agregacoes financeiras
    FOREIGN KEY (id_pet) REFERENCES Pet(id_pet),
    FOREIGN KEY (crm) REFERENCES Veterinario(crm)
);

CREATE TABLE IF NOT EXISTS Exame (
    id_exame INT AUTO_INCREMENT PRIMARY KEY,
    id_consulta INT(5) NOT NULL,
    id_pet INT(5) NOT NULL,
    crm VARCHAR(20) NOT NULL,
    data_hora DATETIME NOT NULL,
    tipo VARCHAR(100) NOT NULL,
    resultado VARCHAR(100),
    custo DECIMAL(10,2) DEFAULT 80.00,
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta),
    FOREIGN KEY (id_pet) REFERENCES Pet(id_pet),
    FOREIGN KEY (crm) REFERENCES Veterinario(crm)
);

CREATE TABLE IF NOT EXISTS Procedimento (
    id_procedimento INT AUTO_INCREMENT PRIMARY KEY,
    id_consulta INT(5) NOT NULL,
    id_pet INT(5) NOT NULL,
    crm VARCHAR(20) NOT NULL,
    data_hora DATETIME NOT NULL,
    descricao VARCHAR(150) NOT NULL,
    custo DECIMAL(10,2) DEFAULT 200.00,
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta),
    FOREIGN KEY (id_pet) REFERENCES Pet(id_pet),
    FOREIGN KEY (crm) REFERENCES Veterinario(crm)
);

-- ============================================================================
-- INSERÇÃO DE DADOS (50 REGISTROS POR TABELA)
-- ============================================================================

-- 1. Tabela Tutor (50 registros)
INSERT INTO Tutor (cpf, nome, telefone) VALUES
('11111111101', 'Ana Silva', '(11) 98765-4321'),
('11111111102', 'Bruno Costa', '(11) 98765-4322'),
('11111111103', 'Carla Souza', '(11) 98765-4323'),
('11111111104', 'Daniel Oliveira', '(11) 98765-4324'),
('11111111105', 'Eduarda Pereira', '(11) 98765-4325'),
('11111111106', 'Fernando Santos', '(11) 98765-4326'),
('11111111107', 'Gabriela Lima', '(11) 98765-4327'),
('11111111108', 'Heitor Ferreira', '(11) 98765-4328'),
('11111111109', 'Isabela Rodrigues', '(11) 98765-4329'),
('11111111110', 'João Almeida', '(11) 98765-4330'),
('11111111111', 'Karen Gomes', '(11) 98765-4331'),
('11111111112', 'Lucas Ribeiro', '(11) 98765-4332'),
('11111111113', 'Mariana Carvalho', '(11) 98765-4333'),
('11111111114', 'Nicolas Martins', '(11) 98765-4334'),
('11111111115', 'Olivia Araujo', '(11) 98765-4335'),
('11111111116', 'Pedro Melo', '(11) 98765-4336'),
('11111111117', 'Quintino Barbosa', NULL),
('11111111118', 'Rafaela Rocha', '(11) 98765-4338'),
('11111111119', 'Samuel Dias', '(11) 98765-4339'),
('11111111120', 'Tatiane Castro', '(11) 98765-4340'),
('11111111121', 'Ubiratan Mendes', '(11) 98765-4341'),
('11111111122', 'Vanessa Cardoso', '(11) 98765-4342'),
('11111111123', 'Wagner Teixeira', '(11) 98765-4343'),
('11111111124', 'Xavier Marques', NULL),
('11111111125', 'Yasmin Ramos', '(11) 98765-4345'),
('11111111126', 'Zé Carlos Machado', '(11) 98765-4346'),
('11111111127', 'Alice Freitas', '(11) 98765-4347'),
('11111111128', 'Bernardo Vieira', '(11) 98765-4348'),
('11111111129', 'Camila Santana', '(11) 98765-4349'),
('11111111130', 'Diego Moreira', '(11) 98765-4350'),
('11111111131', 'Elena Nunes', '(11) 98765-4351'),
('11111111132', 'Felipe Marinho', '(11) 98765-4352'),
('11111111133', 'Giovanna Duarte', '(11) 98765-4353'),
('11111111134', 'Hugo Cavalcante', '(11) 98765-4354'),
('11111111135', 'Iris Monte', '(11) 98765-4355'),
('11111111136', 'Jonas Paiva', '(11) 98765-4356'),
('11111111137', 'Katia Aguiar', NULL),
('11111111138', 'Leonardo Farias', '(11) 98765-4358'),
('11111111139', 'Mirella Guimaraes', '(11) 98765-4359'),
('11111111140', 'Natan Franco', '(11) 98765-4360'),
('11111111141', 'Otavio Borges', '(11) 98765-4361'),
('11111111142', 'Patrícia Prado', '(11) 98765-4362'),
('11111111143', 'Queila Antunes', '(11) 98765-4363'),
('11111111144', 'Rodrigo Barros', '(11) 98765-4364'),
('11111111145', 'Sabrina Nogueira', '(11) 98765-4365'),
('11111111146', 'Tiago Siqueira', '(11) 98765-4366'),
('11111111147', 'Ursula Campos', '(11) 98765-4367'),
('11111111148', 'Vitor Pinheiro', NULL),
('11111111149', 'Wellington Bispo', '(11) 98765-4369'),
('11111111150', 'Zuleica Miranda', '(11) 98765-4370');

-- 2. Tabela Pet (50 registros)
INSERT INTO Pet (id_pet, cpf, especie, nome) VALUES
(1, '11111111101', 'Cachorro', 'Rex'),
(2, '11111111102', 'Gato', 'Mimi'),
(3, '11111111103', 'Cachorro', 'Thor'),
(4, '11111111104', 'Passaro', 'Loro'),
(5, '11111111105', 'Gato', 'Felix'),
(6, '11111111106', 'Cachorro', 'Bob'),
(7, '11111111107', 'Coelho', 'Tambor'),
(8, '11111111108', 'Cachorro', 'Mel'),
(9, '11111111109', 'Gato', 'Luna'),
(10, '11111111110', 'Cachorro', 'Max'),
(11, '11111111111', 'Gato', 'Bichinho'),
(12, '11111111112', 'Cachorro', 'Spike'),
(13, '11111111113', 'Tartaruga', 'Donatello'),
(14, '11111111114', 'Cachorro', 'Aline'),
(15, '11111111115', 'Gato', 'Garfield'),
(16, '11111111116', 'Cachorro', 'Toby'),
(17, '11111111117', 'Passaro', 'PiuPiu'),
(18, '11111111118', 'Gato', 'Tom'),
(19, '11111111119', 'Cachorro', 'Belinha'),
(20, '11111111120', 'Cachorro', 'Snoop'),
(21, '11111111121', 'Gato', 'Simba'),
(22, '11111111122', 'Cachorro', 'Marley'),
(23, '11111111123', 'Coelho', 'Pernalonga'),
(24, '11111111124', 'Gato', 'Mingau'),
(25, '11111111125', 'Cachorro', 'Billy'),
(26, '11111111126', 'Cachorro', 'Pipoca'),
(27, '11111111127', 'Gato', 'Frida'),
(28, '11111111128', 'Cachorro', 'Pandora'),
(29, '11111111129', 'Passaro', 'Kiko'),
(30, '11111111130', 'Cachorro', 'Duke'),
(31, '11111111131', 'Gato', 'Oliver'),
(32, '11111111132', 'Cachorro', 'Zeus'),
(33, '11111111133', 'Hamster', 'Chester'),
(34, '11111111134', 'Cachorro', 'Atena'),
(35, '11111111135', 'Gato', 'Marie'),
(36, '11111111136', 'Cachorro', 'Buddy'),
(37, '11111111137', 'Cachorro', 'Apollo'),
(38, '11111111138', 'Gato', 'Mia'),
(39, '11111111139', 'Cachorro', 'Chico'),
(40, '11111111140', 'Cachorro', 'Cacau'),
(41, '11111111141', 'Gato', 'Nina'),
(42, '11111111142', 'Cachorro', 'Pingo'),
(43, '11111111143', 'Reptil', 'Dino'),
(44, '11111111144', 'Cachorro', 'Loki'),
(45, '11111111145', 'Gato', 'Salem'),
(46, '11111111146', 'Cachorro', 'Amora'),
(47, '11111111147', 'Cachorro', 'Scooby'),
(48, '11111111148', 'Gato', 'Chanel'),
(49, '11111111149', 'Cachorro', 'Shiva'),
(50, '11111111150', 'Passaro', 'Blue');

-- 3. Tabela Veterinario (50 registros)
INSERT INTO Veterinario (crm, nome) VALUES
('CRM1001', 'Dr. Roberto Alves'),
('CRM1002', 'Dra. Patricia Lima'),
('CRM1003', 'Dr. Carlos Eduardo'),
('CRM1004', 'Dra. Fernanda Montenegro'),
('CRM1005', 'Dr. Marcos Paulo'),
('CRM1006', 'Dra. Camilla Pitanga'),
('CRM1007', 'Dr. Sergio Ramos'),
('CRM1008', 'Dra. Leticia Spiller'),
('CRM1009', 'Dr. Antonio Fagundes'),
('CRM1010', 'Dra. Gloria Pires'),
('CRM1011', 'Dr. Fabio Assuncao'),
('CRM1012', 'Dra. Renata Sorrah'),
('CRM1013', 'Dr. Murilo Benicio'),
('CRM1014', 'Dra. Adriana Esteves'),
('CRM1015', 'Dr. Lazaro Ramos'),
('CRM1016', 'Dra. Tais Araujo'),
('CRM1017', 'Dr. Reynaldo Gianecchini'),
('CRM1018', 'Dra. Deborah Secco'),
('CRM1019', 'Dr. Rodrigo Santoro'),
('CRM1020', 'Dra. Alice Braga'),
('CRM1021', 'Dr. Wagner Moura'),
('CRM1022', 'Dra. Juliana Paes'),
('CRM1023', 'Dr. Caua Reymond'),
('CRM1024', 'Dra. Grazi Massafera'),
('CRM1025', 'Dr. Bruno Gagliasso'),
('CRM1026', 'Dra. Giovanna Ewbank'),
('CRM1027', 'Dr. Rafael Cardoso'),
('CRM1028', 'Dra. Isis Valverde'),
('CRM1029', 'Dr. Caio Castro'),
('CRM1030', 'Dra. Marina Ruy Barbosa'),
('CRM1031', 'Dr. Arthur Aguiar'),
('CRM1032', 'Dra. Bruna Marquezine'),
('CRM1033', 'Dr. Chay Suede'),
('CRM1034', 'Dra. Sophie Charlotte'),
('CRM1035', 'Dr. Mateus Solano'),
('CRM1036', 'Dra. Alinne Moraes'),
('CRM1037', 'Dr. Alexande Nero'),
('CRM1038', 'Dra. Dira Paes'),
('CRM1039', 'Dr. Tony Ramos'),
('CRM1040', 'Dra. Lima Duarte'),
('CRM1041', 'Dr. Francisco Cuoco'),
('CRM1042', 'Dra. Laura Cardoso'),
('CRM1043', 'Dr. Reginaldo Faria'),
('CRM1044', 'Dra. Irene Ravache'),
('CRM1045', 'Dr. Jose de Abreu'),
('CRM1046', 'Dra. Cassia Kis'),
('CRM1047', 'Dr. Osmar Prado'),
('CRM1048', 'Dra. Arlete Salles'),
('CRM1049', 'Dr. Stenio Garcia'),
('CRM1050', 'Dra. Nicette Bruno');

-- 4. Tabela Consulta (50 registros)
INSERT INTO Consulta (id_consulta, id_pet, crm, data_hora, valor) VALUES
(1, 1, 'CRM1001', '2024-01-10 09:00:00', 150.00),
(2, 2, 'CRM1002', '2024-01-11 10:30:00', 180.00),
(3, 3, 'CRM1003', '2024-01-12 11:00:00', 120.00),
(4, 4, 'CRM1004', '2024-01-13 14:00:00', 200.00),
(5, 5, 'CRM1005', '2024-01-14 15:30:00', 150.00),
(6, 6, 'CRM1001', '2024-01-15 08:30:00', 150.00),
(7, 7, 'CRM1002', '2024-01-16 09:30:00', 160.00),
(8, 8, 'CRM1003', '2024-01-17 10:00:00', 130.00),
(9, 9, 'CRM1004', '2024-01-18 13:00:00', 220.00),
(10, 10, 'CRM1005', '2024-01-19 14:30:00', 150.00),
(11, 11, 'CRM1006', '2024-02-01 09:00:00', 170.00),
(12, 12, 'CRM1007', '2024-02-02 10:00:00', 190.00),
(13, 13, 'CRM1008', '2024-02-03 11:00:00', 250.00),
(14, 14, 'CRM1009', '2024-02-04 14:00:00', 150.00),
(15, 15, 'CRM1010', '2024-02-05 15:00:00', 140.00),
(16, 16, 'CRM1006', '2024-02-06 16:00:00', 150.00),
(17, 17, 'CRM1007', '2024-02-07 08:00:00', 180.00),
(18, 18, 'CRM1008', '2024-02-08 09:00:00', 150.00),
(19, 19, 'CRM1009', '2024-02-09 10:00:00', 130.00),
(20, 20, 'CRM1010', '2024-02-10 11:00:00', 150.00),
(21, 21, 'CRM1011', '2024-03-01 09:30:00', 210.00),
(22, 22, 'CRM1012', '2024-03-02 10:30:00', 150.00),
(23, 23, 'CRM1013', '2024-03-03 11:30:00', 160.00),
(24, 24, 'CRM1014', '2024-03-04 13:30:00', 150.00),
(25, 25, 'CRM1015', '2024-03-05 14:30:00', 175.00),
(26, 26, 'CRM1011', '2024-03-06 15:30:00', 150.00),
(27, 27, 'CRM1012', '2024-03-07 16:30:00', 190.00),
(28, 28, 'CRM1013', '2024-03-08 08:30:00', 150.00),
(29, 29, 'CRM1014', '2024-03-09 09:30:00', 200.00),
(30, 30, 'CRM1015', '2024-03-10 10:30:00', 150.00),
(31, 31, 'CRM1016', '2024-04-01 11:00:00', 140.00),
(32, 32, 'CRM1017', '2024-04-02 13:00:00', 150.00),
(33, 33, 'CRM1018', '2024-04-03 14:00:00', 230.00),
(34, 34, 'CRM1019', '2024-04-04 15:00:00', 150.00),
(35, 35, 'CRM1020', '2024-04-05 16:00:00', 165.00),
(36, 36, 'CRM1016', '2024-04-06 09:00:00', 150.00),
(37, 37, 'CRM1017', '2024-04-07 10:00:00', 180.00),
(38, 38, 'CRM1018', '2024-04-08 11:00:00', 150.00),
(39, 39, 'CRM1019', '2024-04-09 14:00:00', 135.00),
(40, 40, 'CRM1020', '2024-04-10 15:00:00', 150.00),
(41, 41, 'CRM1021', '2024-05-01 08:30:00', 195.00),
(42, 42, 'CRM1022', '2024-05-02 09:30:00', 150.00),
(43, 43, 'CRM1023', '2024-05-03 10:30:00', 280.00),
(44, 44, 'CRM1024', '2024-05-04 11:30:00', 150.00),
(45, 45, 'CRM1025', '2024-05-05 13:30:00', 160.00),
(46, 46, 'CRM1021', '2024-05-06 14:30:00', 150.00),
(47, 47, 'CRM1022', '2024-05-07 15:30:00', 170.00),
(48, 48, 'CRM1023', '2024-05-08 16:30:00', 150.00),
(49, 49, 'CRM1024', '2024-05-09 09:00:00', 145.00),
(50, 50, 'CRM1025', '2024-05-10 10:00:00', 150.00);

-- 5. Tabela Exame (50 registros)
INSERT INTO Exame (id_consulta, id_pet, crm, data_hora, tipo, resultado, custo) VALUES
(1, 1, 'CRM1001', '2024-01-10 09:30:00', 'Hemograma', 'Normal', 80.00),
(2, 2, 'CRM1002', '2024-01-11 11:00:00', 'Raio-X', 'Sem fraturas', 150.00),
(3, 3, 'CRM1003', '2024-01-12 11:30:00', 'Ultrassom', 'Alteracao hepatica', 120.00),
(4, 4, 'CRM1004', '2024-01-13 14:30:00', 'Fezes', 'Parasitas detectados', 50.00),
(5, 5, 'CRM1005', '2024-01-14 16:00:00', 'Urina', 'Normal', 60.00),
(6, 6, 'CRM1001', '2024-01-15 09:00:00', 'Hemograma', 'Anemia leve', 80.00),
(7, 7, 'CRM1002', '2024-01-16 10:00:00', 'Ecocardiograma', 'Normal', 200.00),
(8, 8, 'CRM1003', '2024-01-17 10:30:00', 'Hemograma', 'Normal', 80.00),
(9, 9, 'CRM1004', '2024-01-18 13:30:00', 'Raio-X', 'Desvio na coluna', 150.00),
(10, 10, 'CRM1005', '2024-01-19 15:00:00', 'Perfil Renal', 'Alterado', 110.00),
(11, 11, 'CRM1006', '2024-02-01 09:30:00', 'Hemograma', 'Normal', 80.00),
(12, 12, 'CRM1007', '2024-02-02 10:30:00', 'Ultrassom', 'Normal', 120.00),
(13, 13, 'CRM1008', '2024-02-03 11:30:00', 'Raio-X', 'Normal', 150.00),
(14, 14, 'CRM1009', '2024-02-04 14:30:00', 'Hemograma', 'Infeccao detectada', 80.00),
(15, 15, 'CRM1010', '2024-02-05 15:30:00', 'Glicemia', 'Elevada', 40.00),
(16, 16, 'CRM1006', '2024-02-06 16:30:00', 'Fezes', 'Normal', 50.00),
(17, 17, 'CRM1007', '2024-02-07 08:30:00', 'Hemograma', 'Normal', 80.00),
(18, 18, 'CRM1008', '2024-02-08 09:30:00', 'Perfil Hepatico', 'Normal', 100.00),
(19, 19, 'CRM1009', '2024-02-09 10:30:00', 'Ultrassom', 'Gestacao confirmada', 130.00),
(20, 20, 'CRM1010', '2024-02-10 11:30:00', 'Hemograma', 'Normal', 80.00),
(21, 21, 'CRM1011', '2024-03-01 10:00:00', 'Raio-X', 'Fratura em pata', 160.00),
(22, 22, 'CRM1012', '2024-03-02 11:00:00', 'Hemograma', 'Normal', 80.00),
(23, 23, 'CRM1013', '2024-03-03 12:00:00', 'Urina', 'Infeccao urinaria', 65.00),
(24, 24, 'CRM1014', '2024-03-04 14:00:00', 'Eletrocardiograma', 'Normal', 180.00),
(25, 25, 'CRM1015', '2024-03-05 15:00:00', 'Hemograma', 'Normal', 80.00),
(26, 26, 'CRM1011', '2024-03-06 16:00:00', 'Ultrassom', 'Normal', 120.00),
(27, 27, 'CRM1012', '2024-03-07 17:00:00', 'Hemograma', 'Leucocitose', 80.00),
(28, 28, 'CRM1013', '2024-03-08 09:00:00', 'Perfil Lipidico', 'Normal', 90.00),
(29, 29, 'CRM1014', '2024-03-09 10:00:00', 'Raio-X', 'Normal', 150.00),
(30, 30, 'CRM1015', '2024-03-10 11:00:00', 'Hemograma', 'Normal', 80.00),
(31, 31, 'CRM1016', '2024-04-01 11:30:00', 'Raspado de Pele', 'Fungos detectados', 70.00),
(32, 32, 'CRM1017', '2024-04-02 13:30:00', 'Hemograma', 'Normal', 80.00),
(33, 33, 'CRM1018', '2024-04-03 14:30:00', 'Ultrassom', 'Cálculo renal', 140.00),
(34, 34, 'CRM1019', '2024-04-04 15:30:00', 'Hemograma', 'Normal', 80.00),
(35, 35, 'CRM1020', '2024-04-05 16:30:00', 'Tomografia', 'Normal', 450.00),
(36, 36, 'CRM1016', '2024-04-06 09:30:00', 'Hemograma', 'Normal', 80.00),
(37, 37, 'CRM1017', '2024-04-07 10:30:00', 'Raio-X', 'Normal', 150.00),
(38, 38, 'CRM1018', '2024-04-08 11:30:00', 'Fezes', 'Normal', 50.00),
(39, 39, 'CRM1019', '2024-04-09 14:30:00', 'Hemograma', 'Anemia', 80.00),
(40, 40, 'CRM1020', '2024-04-10 15:30:00', 'Ecocardiograma', 'Sopro leve', 210.00),
(41, 41, 'CRM1021', '2024-05-01 09:00:00', 'Hemograma', 'Normal', 80.00),
(42, 42, 'CRM1022', '2024-05-02 10:00:00', 'Ultrassom', 'Normal', 120.00),
(43, 43, 'CRM1023', '2024-05-03 11:00:00', 'Raio-X', 'Corpo estranho no estomago', 160.00),
(44, 44, 'CRM1024', '2024-05-04 12:00:00', 'Hemograma', 'Normal', 80.00),
(45, 45, 'CRM1025', '2024-05-05 14:00:00', 'Urina', 'Normal', 60.00),
(46, 46, 'CRM1021', '2024-05-06 15:00:00', 'Hemograma', 'Normal', 80.00),
(47, 47, 'CRM1022', '2024-05-07 16:00:00', 'Biopsia', 'Benigno', 300.00),
(48, 48, 'CRM1023', '2024-05-08 17:00:00', 'Hemograma', 'Normal', 80.00),
(49, 49, 'CRM1024', '2024-05-09 09:30:00', 'Raio-X', 'Normal', 150.00),
(50, 50, 'CRM1025', '2024-05-10 10:30:00', 'Perfil Tireoidiano', 'Alterado', 130.00);

-- 6. Tabela Procedimento (50 registros)
INSERT INTO Procedimento (id_consulta, id_pet, crm, data_hora, descricao, custo) VALUES
(1, 1, 'CRM1001', '2024-01-10 10:00:00', 'Vacina V10', 90.00),
(2, 2, 'CRM1002', '2024-01-11 11:30:00', 'Limpeza de Tartaro', 250.00),
(3, 3, 'CRM1003', '2024-01-12 12:00:00', 'Administracao de Medicamento', 40.00),
(4, 4, 'CRM1004', '2024-01-13 15:00:00', 'Corte de unhas e penas', 35.00),
(5, 5, 'CRM1005', '2024-01-14 16:30:00', 'Castracao', 350.00),
(6, 6, 'CRM1001', '2024-01-15 09:30:00', 'Curativo', 50.00),
(7, 7, 'CRM1002', '2024-01-16 10:30:00', 'Sutura de Ferimento', 120.00),
(8, 8, 'CRM1003', '2024-01-17 11:00:00', 'Vacina Antirrabica', 60.00),
(9, 9, 'CRM1004', '2024-01-18 14:00:00', 'Imobilizacao de membro', 110.00),
(10, 10, 'CRM1005', '2024-01-19 15:30:00', 'Fluidoterapia', 80.00),
(11, 11, 'CRM1006', '2024-02-01 10:00:00', 'Vacina Antirrabica', 60.00),
(12, 12, 'CRM1007', '2024-02-02 11:00:00', 'Remocao de Carrapato', 30.00),
(13, 13, 'CRM1008', '2024-02-03 12:00:00', 'Limpeza de Ouvido', 45.00),
(14, 14, 'CRM1009', '2024-02-04 15:00:00', 'Administracao de Antibiotico', 50.00),
(15, 15, 'CRM1010', '2024-02-05 16:00:00', 'Castracao', 300.00),
(16, 16, 'CRM1006', '2024-02-06 17:00:00', 'Vermifugacao', 25.00),
(17, 17, 'CRM1007', '2024-02-07 09:00:00', 'Corte de Bico', 40.00),
(18, 18, 'CRM1008', '2024-02-08 10:00:00', 'Drenagem de Abscesso', 150.00),
(19, 19, 'CRM1009', '2024-02-09 11:00:00', 'Acompanhamento de Parto', 400.00),
(20, 20, 'CRM1010', '2024-02-10 12:00:00', 'Vacina V10', 90.00),
(21, 21, 'CRM1011', '2024-03-01 10:30:00', 'Cirurgia Ortopedica', 1200.00),
(22, 22, 'CRM1012', '2024-03-02 11:30:00', 'Limpeza de Tartaro', 250.00),
(23, 23, 'CRM1013', '2024-03-03 12:30:00', 'Administracao de Medicamento', 40.00),
(24, 24, 'CRM1014', '2024-03-04 14:30:00', 'Oxigenioterapia', 100.00),
(25, 25, 'CRM1015', '2024-03-05 15:30:00', 'Vacina Antirrabica', 60.00),
(26, 26, 'CRM1011', '2024-03-06 16:30:00', 'Curativo', 50.00),
(27, 27, 'CRM1012', '2024-03-07 17:30:00', 'Sutura de Ferimento', 130.00),
(28, 28, 'CRM1013', '2024-03-08 09:30:00', 'Vermifugacao', 25.00),
(29, 29, 'CRM1014', '2024-03-09 10:30:00', 'Vacina V10', 90.00),
(30, 30, 'CRM1015', '2024-03-10 11:30:00', 'Castracao', 380.00),
(31, 31, 'CRM1016', '2024-04-01 12:00:00', 'Tratamento Dermatologico', 150.00),
(32, 32, 'CRM1017', '2024-04-02 14:00:00', 'Vacina V10', 90.00),
(33, 33, 'CRM1018', '2024-04-03 15:00:00', 'Sondagem Uretral', 180.00),
(34, 34, 'CRM1019', '2024-04-04 16:00:00', 'Limpeza de Ouvido', 45.00),
(35, 35, 'CRM1020', '2024-04-05 17:00:00', 'Sedacao para Exame', 120.00),
(36, 36, 'CRM1016', '2024-04-06 10:00:00', 'Vacina Antirrabica', 60.00),
(37, 37, 'CRM1017', '2024-04-07 11:00:00', 'Curativo', 50.00),
(38, 38, 'CRM1018', '2024-04-08 12:00:00', 'Fluidoterapia', 80.00),
(39, 39, 'CRM1019', '2024-04-09 15:00:00', 'Transfusao de Sangue', 500.00),
(40, 40, 'CRM1020', '2024-04-10 16:00:00', 'Acompanhamento Cardiologico', 150.00),
(41, 41, 'CRM1021', '2024-05-01 09:30:00', 'Vacina V10', 90.00),
(42, 42, 'CRM1022', '2024-05-02 10:30:00', 'Castracao', 350.00),
(43, 43, 'CRM1023', '2024-05-03 11:30:00', 'Endoscopia / Remocao', 600.00),
(44, 44, 'CRM1024', '2024-05-04 12:30:00', 'Vermifugacao', 25.00),
(45, 45, 'CRM1025', '2024-05-05 14:30:00', 'Limpeza de Tartaro', 250.00),
(46, 46, 'CRM1021', '2024-05-06 15:30:00', 'Curativo', 50.00),
(47, 47, 'CRM1022', '2024-05-07 16:30:00', 'Remocao de Nódulo', 400.00),
(48, 48, 'CRM1023', '2024-05-08 17:30:00', 'Vacina Antirrabica', 60.00),
(49, 49, 'CRM1024', '2024-05-09 10:00:00', 'Sutura de Ferimento', 120.00),
(50, 50, 'CRM1025', '2024-05-10 11:00:00', 'Ajuste Medicamentoso', 50.00);


-- ============================================================================
-- PARTE 3: CONSULTAS
-- ============================================================================

-- ----------------------------------------------------------------------------
-- Requisito 1: 3 consultas com SELECT e WHERE (10 pts)
-- ----------------------------------------------------------------------------
-- 1.1 Listar todos os pets que são da espécie 'Cachorro'
SELECT id_pet, nome, especie, cpf 
FROM Pet 
WHERE especie = 'Cachorro';

-- 1.2 Selecionar exames cujo resultado seja 'Normal'
SELECT id_exame, id_consulta, tipo, resultado 
FROM Exame 
WHERE resultado = 'Normal';

-- 1.3 Buscar tutores que possuem o DDD (11) cadastrado
SELECT cpf, nome, telefone 
FROM Tutor 
WHERE telefone LIKE '(11)%';


-- ----------------------------------------------------------------------------
-- Requisito 2: 3 consultas com GROUP BY e ORDER BY com funções de agregação (10 pts)
-- ----------------------------------------------------------------------------
-- 2.1 Contar quantos pets existem por espécie, ordenando do maior para o menor
SELECT especie, COUNT(*) AS total_pets
FROM Pet
GROUP BY especie
ORDER BY total_pets DESC;

-- 2.2 Calcular a média do valor gasto em procedimentos por tipo de descrição, ordenando por média descrescente
SELECT descricao, AVG(custo) AS media_custo
FROM Procedimento
GROUP BY descricao
ORDER BY media_custo DESC;

-- 2.3 Contar o total de consultas realizadas por cada veterinário (CRM), ordenado pelo número de consultas
SELECT crm, COUNT(id_consulta) AS total_consultas
FROM Consulta
GROUP BY crm
ORDER BY total_consultas DESC;


-- ----------------------------------------------------------------------------
-- Requisito 3: 3 consultas com operadores aritméticos (+, -, *, /) (5 pts)
-- ----------------------------------------------------------------------------
-- 3.1 Exibir valor da consulta com acréscimo de taxa de emergência (+ 10%)
SELECT id_consulta, valor, (valor * 1.10) AS valor_com_taxa
FROM Consulta;

-- 3.2 Exibir custo do exame com desconto especial de R$ 15,00 (-)
SELECT id_exame, tipo, custo, (custo - 15.00) AS custo_com_desconto
FROM Exame;

-- 3.3 Estimar o custo diário de um procedimento dividindo o valor total por 30 dias (/)
SELECT id_procedimento, descricao, custo, (custo / 30) AS custo_diario_estimado
FROM Procedimento;


-- ----------------------------------------------------------------------------
-- Requisito 4: 3 consultas com operadores de comparação (=, !=, <, >, etc.) (5 pts)
-- ----------------------------------------------------------------------------
-- 4.1 Selecionar consultas com valor estritamente maior que R$ 180,00 (>)
SELECT id_consulta, data_hora, valor 
FROM Consulta 
WHERE valor > 180.00;

-- 4.2 Buscar procedimentos com custo menor ou igual a R$ 50,00 (<=)
SELECT id_procedimento, descricao, custo 
FROM Procedimento 
WHERE custo <= 50.00;

-- 4.3 Listar exames cujo tipo seja diferente de 'Hemograma' (!=)
SELECT id_exame, tipo, resultado 
FROM Exame 
WHERE tipo != 'Hemograma';


-- ----------------------------------------------------------------------------
-- Requisito 5: 3 consultas com operadores lógicos (AND, OR) (5 pts)
-- ----------------------------------------------------------------------------
-- 5.1 Buscar pets da espécie 'Gato' E que se chamam 'Luna' (AND)
SELECT * FROM Pet 
WHERE especie = 'Gato' AND nome = 'Luna';

-- 5.2 Buscar procedimentos com custo maior que R$ 300,00 OU descrição contendo 'Cirurgia' (OR)
SELECT * FROM Procedimento 
WHERE custo > 300.00 OR descricao LIKE '%Cirurgia%';

-- 5.3 Buscar consultas do veterinário CRM1001 com valor maior que R$ 140,00 (AND)
SELECT * FROM Consulta 
WHERE crm = 'CRM1001' AND valor > 140.00;


-- ----------------------------------------------------------------------------
-- Requisito 6: 2 consultas com operadores lógicos e negação (NOT) (3 pts)
-- ----------------------------------------------------------------------------
-- 6.1 Selecionar todos os pets que NÃO são da espécie 'Cachorro'
SELECT * FROM Pet 
WHERE NOT (especie = 'Cachorro');

-- 6.2 Selecionar todos os exames cujo resultado NÃO seja 'Normal'
SELECT * FROM Exame 
WHERE NOT (resultado = 'Normal');


-- ----------------------------------------------------------------------------
-- Requisito 7: 5 consultas com operadores auxiliares (IS NULL, BETWEEN, LIKE, IN) (10 pts)
-- ----------------------------------------------------------------------------
-- 7.1 Selecionar tutores que NÃO possuem telefone cadastrado (IS NULL)
SELECT * FROM Tutor 
WHERE telefone IS NULL;

-- 7.2 Selecionar consultas com valores ENTRE R$ 150,00 e R$ 200,00 (BETWEEN)
SELECT * FROM Consulta 
WHERE valor BETWEEN 150.00 AND 200.00;

-- 7.3 Buscar tutores cujo nome começa com a letra 'A' (LIKE)
SELECT * FROM Tutor 
WHERE nome LIKE 'A%';

-- 7.4 Selecionar pets que sejam 'Coelho', 'Passaro' ou 'Hamster' (IN)
SELECT * FROM Pet 
WHERE especie IN ('Coelho', 'Passaro', 'Hamster');

-- 7.5 Buscar exames que contêm a palavra 'Ultra' no tipo (LIKE)
SELECT * FROM Exame 
WHERE tipo LIKE '%Ultra%';


-- ----------------------------------------------------------------------------
-- Requisito 8: 3 consultas com funções de agregação (SUM(), AVG(), etc.) (5 pts)
-- ----------------------------------------------------------------------------
-- 8.1 Calcular o valor TOTAL de todas as consultas realizadas (SUM)
SELECT SUM(valor) AS faturamento_total_consultas 
FROM Consulta;

-- 8.2 Calcular a MÉDIA de custo de todos os procedimentos (AVG)
SELECT AVG(custo) AS media_custo_procedimentos 
FROM Procedimento;

-- 8.3 Retornar o valor MÁXIMO e MÍNIMO cobrado por um exame (MAX, MIN)
SELECT MAX(custo) AS exame_mais_caro, MIN(custo) AS exame_mais_barato 
FROM Exame;


-- ----------------------------------------------------------------------------
-- Requisito 9: 3 consultas com funções de datas (NOW(), DATE(), YEAR(), etc.) (5 pts)
-- ----------------------------------------------------------------------------
-- 9.1 Selecionar a data atual do sistema e a hora das consultas (NOW, DATE)
SELECT id_consulta, DATE(data_hora) AS data_consulta, NOW() AS consulta_executada_em 
FROM Consulta;

-- 9.2 Selecionar consultas realizadas no ANO de 2024 (YEAR)
SELECT id_consulta, data_hora 
FROM Consulta 
WHERE YEAR(data_hora) = 2024;

-- 9.3 Selecionar exames realizados no MÊS de Fevereiro (MONTH)
SELECT id_exame, tipo, data_hora 
FROM Exame 
WHERE MONTH(data_hora) = 2;


-- ----------------------------------------------------------------------------
-- Requisito 10: 3 sub-consultas com agrupamento e união de dados (10 pts)
-- ----------------------------------------------------------------------------
-- 10.1 Subconsulta para listar os nomes dos tutores cujos pets têm média de gasto com exames maior que a média geral
SELECT T.nome, T.cpf 
FROM Tutor T
WHERE T.cpf IN (
    SELECT P.cpf 
    FROM Pet P
    JOIN Exame E ON P.id_pet = E.id_pet
    GROUP BY P.cpf
    HAVING AVG(E.custo) > (SELECT AVG(custo) FROM Exame)
);

-- 10.2 União (UNION) dos atendimentos (Exames e Procedimentos) de valor/custo acima de R$ 150,00 agrupados por id_pet
SELECT id_pet, 'Exame' AS tipo_atendimento, SUM(custo) AS total_gasto
FROM Exame
WHERE custo > 150.00
GROUP BY id_pet
UNION
SELECT id_pet, 'Procedimento' AS tipo_atendimento, SUM(custo) AS total_gasto
FROM Procedimento
WHERE custo > 150.00
GROUP BY id_pet;

-- 10.3 Subconsulta com UNION ALL e Agrupamento para consolidar o total de atendimentos por veterinário
SELECT crm, SUM(total) AS total_atendimentos
FROM (
    SELECT crm, COUNT(*) AS total FROM Exame GROUP BY crm
    UNION ALL
    SELECT crm, COUNT(*) AS total FROM Procedimento GROUP BY crm
) AS AtendimentosPorVet
GROUP BY crm
ORDER BY total_atendimentos DESC;
