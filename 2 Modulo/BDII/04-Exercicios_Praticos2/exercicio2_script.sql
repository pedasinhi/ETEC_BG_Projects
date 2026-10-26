/* Exercicio 2: Escola (Alunos) */

/* Criando o Banco de dados */
CREATE DATABASE escola_db;

/* Selecionando Banco de dados para uso */ 
USE escola_db;

/* Criando Tabela */
CREATE TABLE alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(150) NOT NULL,
    email VARCHAR(100) NOT NULL,
    data_nascimento DATE
    cadastrado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);