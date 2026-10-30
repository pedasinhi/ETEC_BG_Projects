-- Criando as base de dados --
create database dbVeterinaria;
create database dbOficina;
create database dbEscolaIdiomas;
create database dbMateriais;

-- Verificando se os quatro ambientes foram criados --
show databases;

-- Deixando o Projeto preparado para receber comandos --
USE dbOficina; 

-- Criando um novo banco chamado dbAcademia 
create database dbAcademia; 
SHOW DATABASES;
USE dbAcademia;

-- Exerccício Prático 03 - Lendo o Projeto da Oficina 
CREATE TABLE tbVeiculo (
id_veitculo INT AUTO_INCREMENT PRIMARY KEY,
placa VARCHAR(10) NOT NULL UNIQUE, 
modelo VARCHAR(100) NOT NULL,
ano YEAR,
valor_estimado float (12,2),
ativo boolean default true );

DESCRIBE tbVeiculo;

-- Exercicio Prático 04 - Projeto x Implementaçãoptimize
USE dbOficina;
Describe tbVeiculo; 

-- Exercicio Prático 05 Mudança nas Regras de Negócio
ALTER TABLE tbVeiculo ADD marca VARCHAR(50) NOT NULL;
ALTER TABLE tbVeiculo ADD cor VARCHAR(30) NOT NULL;
ALTER TABLE tbVeiculo MODIFY modelo VARCHAR(150);
ALTER TABLE tbVeiculo RENAME COLUMN valor_estimado TO valor_mercado;
ALTER TABLE tbVeiculo RENAME COLUMN id_veitculo TO id_veiculo;

DESCRIBE tbVeiculo;

-- Exercicio Prático 06 - Projeto Cancelado 
DROP DATABASE IF EXISTS dbVeterinaria;
SHOW DATABASES;

-- Exercicio Prático 07 - Ambientes de Homologaçãoptimize
CREATE DATABASE dbOficinaHomologacao;
CREATE DATABASE dbEscolaHomologacao;

SHOW DATABASES;

DROP DATABASE IF EXISTS dbOficinaHomologacao;
DROP DATABASE IF EXISTS dbEscolaHomologacao;

-- Exercicio Prático 08 - Primeira Auditoria
SHOW DATABASES;
USE dbOFicina;
SHOW TABLES;
DESCRIBE tbVeiculo;
USE dbEscolaIdiomas;
SHOW TABLES;
USE dbOficina;

-- ETAPA 2 -- Projeto da Escola de Idiomas
-- Exercicio Prático 09 - Projeto de Idiomas

USE dbEscolaIdiomas;

CREATE TABLE tbCurso (
id_curso INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL UNIQUE,
carga_horaria INT NOT NULL,
valor DECIMAL (10.2) NOT NULL CHECK (valor >=0),
ativo BOOLEAN DEFAULT TRUE );

CREATE TABLE tbProfessor (
id_professor INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(120) NOT NULL,
email VARCHAR(150) NOT NULL UNIQUE,
data_admissao DATE NOT NULL,
ativo BOOLEAN DEFAULT TRUE );

DESCRIBE tbCurso;
DESCRIBE tbProfessor;
SHOW TABLES;

-- Exercício Prático 10 - Do Relacionamento 1:N para o Banco Físico

USE dbEscolaIdiomas; 

CREATE TABLE tbTurma (
id_turma INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
data_inicio DATE NOT NULL,
horario TIME NOT NULL,
id_curso INT NOT NULL,
FOREIGN KEY (id_curso) REFERENCES tbCurso (id_curso) );

DESCRIBE tbTurma;

-- Exercicio Prático 11 - Professor Responsável 

USE dbEscolaIdiomas;

ALTER TABLE tbTurma
ADD id_professor INT NOT NULL, 
ADD CONSTRAINT FkTurmaProfessor
FOREIGN KEY (id_professor) REFERENCES tbProfessor (id_professor);

DESCRIBE tbTurma;

-- EXERCICIO Prático 12 - Cadastro de Alunos 

CREATE TABLE tbAluno (
id_aluno INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(150) NOT NULL,
cpf CHAR(11) NOT NULL UNIQUE,
data_nascimento DATE,
email VARCHAR(150) UNIQUE,
data_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, 
ativo BOOLEAN DEFAULT TRUE );

DESCRIBE tbAluno;

-- EXERCICIO Prático 13 - do N:N para uma Tabela Associativa 

CREATE TABLE tbMatricula (
id_aluno INT NOT NULL,
id_turma INT NOT NULL,
data_matricula DATE NOT NULL,
situacao VARCHAR(20) NOT NULL,
PRIMARY KEY (id_aluno, id_turma), -- IMPEDE A MATRICULA SER DUPLICADA NA MESMA TURMA  
FOREIGN KEY (id_aluno) REFERENCES tbAluno (id_aluno), -- Não Poderá existir mátricula para aluno inexistente
FOREIGN KEY (id_turma) REFERENCES tbTurma (id_Turma) -- Não poderá existir mátricula para turma existente.
);

DESCRIBE tbMatricula;

-- EXERCICIO Prático 14 - Por que Normalizamos?

DESCRIBE aluno;
DESCRIBE matricula;

-- EXERCICIO Prático 15 - O Projeto Está Certo, mas o SQL Está?

USE dbOficina;

CREATE TABLE tbCliente (
id_cliente INT,
nome VARCHAR(100),
cpf CHAR(11),
ativo BOOLEAN);

-- Conferindo a estrutura inicial:
DESCRIBE tbCliente;

-- Regra Obrigatória: Corrigindo e alterando as estruturas existente.
-- Corrigindo o identificador(id):
ALTER TABLE tbCliente MODIFY COLUMN id_cliente INT PRIMARY KEY;
ALTER TABLE tbCliente MODIFY COLUMN nome VARCHAR(100) NOT NULL; 
ALTER TABLE tbCliente MODIFY COLUMN cpf CHAR(11) NOT NULL UNIQUE;
ALTER TABLE tbCliente MODIFY COLUMN ativo BOOL DEFAULT TRUE;

--  Após corrigir a estrutura, vamos conferir:
DESCRIBE tbCliente;

-- EXERCICIO Prático 16 - Projeto de uma Pequena Locadora.

create database dbLocadoraTeste;

USE dbLocadoraTeste;

-- TABELA CLIENTE --
CREATE TABLE tbCliente (
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(150) NOT NULL,
documento VARCHAR(14) NOT NULL UNIQUE,
telefone VARCHAR(20),
ativo BOOLEAN DEFAULT TRUE );

-- TABELA CATEGORIA --
CREATE TABLE tbCategoria (
id_categoria INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(80) NOT NULL UNIQUE );

-- TABELA EQUIPAMENTO --
CREATE TABLE tbEquipamento (
id_equipamento INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(120) NOT NULL, 
id_categoria INT NOT NULL,
valor_diário DECIMAL(10,2) NOT NULL CHECK (valor_diário >=0),
disponivel BOOL DEFAULT TRUE,
FOREIGN KEY (id_categoria) REFERENCES tbCategoria (id_categoria));

-- TABELA LOCAÇÃO --
CREATE TABLE tbLocacao (
id_locacao INT AUTO_INCREMENT PRIMARY KEY, 
id_cliente INT NOT NULL,
data_retirada DATETIME NOT NULL,
data_devolucao_prevista DATE NOT NULL,
situacao VARCHAR(30) NOT NULL, 
FOREIGN KEY (id_cliente) REFERENCES tbCliente (id_cliente));

-- TABELA ITEM_LOCACAO --
CREATE TABLE tbItem_locacao (
id_locacao INT NOT NULL,
id_equipamento INT NOT NULL,
valor_diario DECIMAL (10,2) NOT NULL CHECK (valor_diário >=0), 
FOREIGN KEY (id_locacao) REFERENCES tbLocacao (id_Locacao),
FOREIGN KEY (id_equipamento) REFERENCES tbEquipamento (id_equipamento));

-- Conferindo o banco e suas tabelas --
SHOW DATABASES;
SHOW TABLES;

-- Conferindo as estruturas --
DESCRIBE tbCliente;
DESCRIBE tbCategoria;
DESCRIBE tbEquipamento;
DESCRIBE tbLocacao;
DESCRIBE tbItem_locacao;

-- Exercicio  Prático 17 - Mudanças na Locadora
ALTER TABLE tbEquipamento MODIFY COLUMN nome VARCHAR(180) NOT NULL;
ALTER TABLE tbEquipamento ADD COLUMN marca VARCHAR(80) NOT NULL;
ALTER TABLE tbCliente DROP COLUMN telefone; 
RENAME TABLE tbCategoria TO tbTipo_equipamento; 

-- Conferindo as estruturas --
DESCRIBE tbCliente;
DESCRIBE tbEquipamento;
DESCRIBE tbTipo_equipamento;

SHOW TABLES;

-- Exercício Prático 18 - Estrutura Temporária

USE dbLocadoraTeste;

CREATE TABLE tbEquipamento_importacao (
codigo INT,
descricao VARCHAR(180),
quantidade INT );

-- Conferindo a estrutura 
DESCRIBE tbEquipamento_importacao;

-- Situação A --
TRUNCATE TABLE tbEquipamento_importacao;

-- Situação B --
DROP TABLE tbEquipamento_importacao;

-- Exercício Prático 19 Encerramento dos Ambientes de Treinamento 
-- Conferindo os Bancos de dados existentes --
SHOW DATABASES;

-- Removendo os ambientes utilizados par treinamento 
DROP DATABASE IF EXISTS dbAcademia;
DROP DATABASE IF EXISTS dbLocadoraTeste;

-- Conferindo novamente os bancos existentes
SHOW DATABASES;

-- ETAPA 4 - PROJETO INTEGRADOR 
-- Exercicio Prático 20 - Retomando o Projeto Antes do SQL 

-- TAREFA: 






 















