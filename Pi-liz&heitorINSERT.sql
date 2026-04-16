
-- LIMPAR TABELAS 
-- =========================
DROP TABLE IF EXISTS Candidatura;
DROP TABLE IF EXISTS Orientador;
DROP TABLE IF EXISTS Empresa;
DROP TABLE IF EXISTS Vaga;
DROP TABLE IF EXISTS Aluno;

-- =========================
-- TABELA ALUNO
-- =========================
CREATE TABLE Aluno (
    id_aluno INTEGER PRIMARY KEY,
    nome varchar(40) NOT NULL,
    email varchar(40) NOT NULL,
    senha varchar(255) NOT NULL,
    curso varchar(20) NOT NULL,
    matricula INTEGER NOT NULL,
    curriculo varchar(255)
);

-- =========================
-- TABELA EMPRESA
-- =========================
CREATE TABLE Empresa (
    id_empresa INTEGER PRIMARY KEY,
    nome varchar(40) NOT NULL,
    descricao varchar(255),
    endereco varchar(255),
    email varchar(40) NOT NULL,
    senha varchar(255) NOT NULL
);

-- =========================
-- TABELA VAGA
-- =========================
CREATE TABLE Vaga (
    id_vaga INTEGER PRIMARY KEY,
    titulo varchar(40) NOT NULL,
    requisitos varchar(255) NOT NULL,
    bolsa INTEGER NOT NULL,
    data_publicacao DATE,
    carga_horaria INTEGER,
    id_empresa_fk INTEGER,
    FOREIGN KEY (id_empresa_fk) REFERENCES Empresa(id_empresa)
);

-- =========================
-- TABELA ORIENTADOR
-- =========================
CREATE TABLE Orientador (
    id_orientador INTEGER PRIMARY KEY,
    nome varchar(40) NOT NULL,
    email varchar(40) NOT NULL,
    senha varchar(255) NOT NULL,
    matricula INTEGER,
    materia varchar(40)
);

-- =========================
-- TABELA CANDIDATURA
-- =========================
CREATE TABLE Candidatura (
    id_candidatura INTEGER PRIMARY KEY,
    id_aluno_fk INTEGER,
    id_vaga_fk INTEGER, 
    status_ varchar(255),
    data_candidatura DATE,
    FOREIGN KEY (id_aluno_fk) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_vaga_fk) REFERENCES Vaga(id_vaga)
);

-- =========================
-- INSERTS (DADOS)
-- =========================

-- Alunos
INSERT INTO Aluno VALUES (1, 'João', 'joao@email.com', '101', 'Informática', 20261001, '');
INSERT INTO Aluno VALUES (2, 'Maria', 'maria@email.com', '102', 'Edificações', 20261002, '');
INSERT INTO Aluno VALUES (3, 'José', 'jose@email.com', '103', 'Controle Ambiental', 20261003, '');
INSERT INTO Aluno VALUES (4, 'Pedro', 'pedro@email.com', '104', 'Eletrotécnica', 20261004, '');
INSERT INTO Aluno VALUES (5, 'Ana', 'ana@email.com', '105', 'Informática', 20261005, '');
INSERT INTO Aluno VALUES (6, 'Carlos', 'carlos@email.com', '106', 'Mecânica', 20261006, '');
INSERT INTO Aluno VALUES (7, 'Beatriz', 'beatriz@email.com', '107', 'Instrumento Musical', 20261007, '');
INSERT INTO Aluno VALUES (8, 'Lucas', 'lucas@email.com', '108', 'Edificações', 20261008, '');
INSERT INTO Aluno VALUES (9, 'Fernanda', 'fernanda@email.com', '109', 'Eletrônica', 20261009, '');
INSERT INTO Aluno VALUES (10, 'Rafael', 'rafael@email.com', '110', 'Eletrotécnica', 20261010, '');
INSERT INTO Aluno VALUES (11, 'Juliana', 'juliana@email.com', '111', 'Instrumento Musical', 20261011, '');
INSERT INTO Aluno VALUES (12, 'Marcos', 'marcos@email.com', '112', 'Edificações', 20261012, '');
INSERT INTO Aluno VALUES (13, 'Camila', 'camila@email.com', '113', 'Contabilidade', 20261013, '');
INSERT INTO Aluno VALUES (14, 'Rodrigo', 'rodrigo@email.com', '114', 'Mecânica', 20261014, '');
INSERT INTO Aluno VALUES (15, 'Letícia', 'leticia@email.com', '115', 'Eletrotécnica', 20261015, '');

-- EmpresasS
INSERT INTO Empresa VALUES (1, 'Tech Solutions', 'Empresa de TI', 'Rua A', 'tech@email.com', '123');
INSERT INTO Empresa VALUES (2, 'Construtora BR', 'Empresa de Construção', 'Rua B', 'const@email.com', '456');
INSERT INTO Empresa VALUES (3, 'Inova Soft', 'Desenvolvimento de Software', 'Avenida C', 'contato@inovasoft.com', '789');
INSERT INTO Empresa VALUES (4, 'Eletrônica Master', 'Manutenção Eletroeletrônica', 'Rua D', 'rh@eletronicamaster.com', '101');
INSERT INTO Empresa VALUES (5, 'Gestão e Cia', 'Consultoria Administrativa', 'Avenida E', 'vagas@gestaoecia.com', '112');
INSERT INTO Empresa VALUES (6, 'Robótica Industrial S.A.', 'Automação e Mecatrônica', 'Travessa F', 'talentos@robotica.com', '131');
INSERT INTO Empresa VALUES (7, 'Edifica Mais', 'Projetos e Construção Civil', 'Rua G', 'contato@edificamais.com', '141');
INSERT INTO Empresa VALUES (8, 'Data Analytics BR', 'Análise de Dados e IA', 'Avenida H', 'jobs@dataanalytics.com', '151');
INSERT INTO Empresa VALUES (9, 'Eletro Voltz', 'Instalações Elétricas', 'Rua I', 'rh@eletrovoltz.com', '161');
INSERT INTO Empresa VALUES (10, 'Admin Prime', 'Terceirização de RH e Adm', 'Praça J', 'contato@adminprime.com', '171');
INSERT INTO Empresa VALUES (11, 'Mecânica Precision', 'Usinagem e Mecatrônica', 'Rodovia K', 'rh@precision.com', '181');
INSERT INTO Empresa VALUES (12, 'Cloud Networks', 'Infraestrutura de Redes', 'Rua L', 'vagas@cloudnetworks.com', '191');
INSERT INTO Empresa VALUES (13, 'Concreto Seguro', 'Engenharia Estrutural', 'Avenida M', 'contato@concretoseguro.com', '202');
INSERT INTO Empresa VALUES (14, 'Smart Energy', 'Projetos de Energia Solar', 'Rua N', 'rh@smartenergy.com', '212');
INSERT INTO Empresa VALUES (15, 'Tech Finance', 'Finanças e Tecnologia', 'Avenida O', 'talentos@techfinance.com', '222');

-- Vagas
INSERT INTO Vaga VALUES (1, 'Estágio em TI', 'Programação básica', 1000, '2026-03-01', 30, 1);
INSERT INTO Vaga VALUES (2, 'Estágio em Construção', 'AutoCAD', 800, '2026-03-05', 20, 2);
INSERT INTO Vaga VALUES (3, 'Estágio em Desenvolvimento', 'Lógica e Java', 1200, '2026-03-10', 30, 3);
INSERT INTO Vaga VALUES (4, 'Técnico em Eletrônica', 'Soldagem e circuitos', 1500, '2026-03-12', 40, 4);
INSERT INTO Vaga VALUES (5, 'Estágio em Administração', 'Pacote Office', 900, '2026-03-15', 30, 5);
INSERT INTO Vaga VALUES (6, 'Auxiliar de Mecatrônica', 'CLP e pneumática', 1400, '2026-03-18', 40, 6);
INSERT INTO Vaga VALUES (7, 'Estágio em Edificações', 'Leitura de projetos e Revit', 1000, '2026-03-20', 30, 7);
INSERT INTO Vaga VALUES (8, 'Analista de Dados Júnior', 'SQL e Python', 2500, '2026-03-22', 40, 8);
INSERT INTO Vaga VALUES (9, 'Eletricista Predial', 'NR10 e instalações', 1800, '2026-03-25', 40, 9);
INSERT INTO Vaga VALUES (10, 'Assistente de RH', 'Rotinas de DP', 1600, '2026-03-26', 40, 10);
INSERT INTO Vaga VALUES (11, 'Operador de Torno CNC', 'Metrologia e usinagem', 2000, '2026-03-27', 40, 11);
INSERT INTO Vaga VALUES (12, 'Estágio em Redes', 'Configuração de roteadores', 1100, '2026-03-28', 30, 12);
INSERT INTO Vaga VALUES (13, 'Estagiário de Estruturas', 'Cálculo estrutural básico', 1300, '2026-03-29', 30, 13);
INSERT INTO Vaga VALUES (14, 'Auxiliar de Energia Solar', 'Montagem de painéis', 1700, '2026-03-30', 40, 14);
INSERT INTO Vaga VALUES (15, 'Estágio em Finanças TI', 'Excel avançado e análise', 1200, '2026-04-01', 30, 15);

-- Orientador
INSERT INTO Orientador VALUES (1, 'Carlos', 'carlos@email.com', '123', 111, 'Banco de Dados');
INSERT INTO Orientador VALUES (2, 'Fernanda', 'fernanda@email.com', '124', 112, 'Programação');
INSERT INTO Orientador VALUES (3, 'Ricardo', 'ricardo@email.com', '125', 113, 'Fundamento de Redes');
INSERT INTO Orientador VALUES (4, 'Aline', 'aline@email.com', '126', 114, 'Gestão de Projetos');
INSERT INTO Orientador VALUES (5, 'Roberto', 'roberto@email.com', '127', 115, 'Cálculo Estrutural');
INSERT INTO Orientador VALUES (6, 'Sofia', 'sofia@email.com', '128', 116, 'Algoritmos');
INSERT INTO Orientador VALUES (7, 'Marcelo', 'marcelo@email.com', '129', 117, 'Automação Industrial');
INSERT INTO Orientador VALUES (8, 'Tatiana', 'tatiana@email.com', '130', 118, 'Desenho Técnico');
INSERT INTO Orientador VALUES (9, 'Eduardo', 'eduardo@email.com', '131', 119, 'Matemática Financeira');
INSERT INTO Orientador VALUES (10, 'Luciana', 'luciana@email.com', '132', 120, 'Redes de Computadores');
INSERT INTO Orientador VALUES (11, 'Fábio', 'fabio@email.com', '133', 121, 'Sistemas Operacionais');
INSERT INTO Orientador VALUES (12, 'Marta', 'marta@email.com', '134', 122, 'Recursos Humanos');
INSERT INTO Orientador VALUES (13, 'Thiago', 'thiago@email.com', '135', 123, 'Física Aplicada');
INSERT INTO Orientador VALUES (14, 'Patrícia', 'patricia@email.com', '136', 124, 'Instalações Elétricas');
INSERT INTO Orientador VALUES (15, 'Daniel', 'daniel@email.com', '137', 125, 'Empreendedorismo');

-- Candidaturas
INSERT INTO Candidatura VALUES (1, 1, 1, 'Em Análise', '2026-03-10');
INSERT INTO Candidatura VALUES (2, 2, 2, 'Candidato', '2026-03-12');
INSERT INTO Candidatura VALUES (3, 5, 3, 'Em Análise', '2026-03-15'); 
INSERT INTO Candidatura VALUES (4, 6, 6, 'Entrevista', '2026-03-20'); 
INSERT INTO Candidatura VALUES (5, 7, 8, 'Candidato', '2026-03-23'); 
INSERT INTO Candidatura VALUES (6, 8, 7, 'Aprovado', '2026-03-25');    
INSERT INTO Candidatura VALUES (7, 9, 5, 'Em Análise', '2026-03-26'); 
INSERT INTO Candidatura VALUES (8, 10, 9, 'Entrevista', '2026-03-28');
INSERT INTO Candidatura VALUES (9, 11, 12, 'Candidato', '2026-03-29'); 
INSERT INTO Candidatura VALUES (10, 12, 13, 'Em Análise', '2026-03-30');
INSERT INTO Candidatura VALUES (11, 13, 10, 'Aprovado', '2026-04-02'); 
INSERT INTO Candidatura VALUES (12, 14, 11, 'Rejeitado', '2026-04-05');
INSERT INTO Candidatura VALUES (13, 15, 14, 'Entrevista', '2026-04-08');
INSERT INTO Candidatura VALUES (14, 1, 15, 'Candidato', '2026-04-10'); 
INSERT INTO Candidatura VALUES (15, 3, 13, 'Em Análise', '2026-04-12');

-- =========================
-- SELECT FINAL (RESULTADO)
-- =========================
SELECT 
    Aluno.nome,
    Aluno.curso,
    Vaga.titulo,
    Empresa.nome AS empresa,
    Candidatura.status
FROM Candidatura
JOIN Aluno ON Candidatura.id_aluno_fk = Aluno.id_aluno
JOIN Vaga ON Candidatura.id_vaga_fk = Vaga.id_vaga
JOIN Empresa ON Vaga.id_empresa_fk = Empresa.id_empresa;