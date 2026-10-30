/* Exercicio 3: Clinica Médica (Pacientes) */

/* Criando o Banco de dados */
CREATE DATABASE clinica_db;

/* Selecionando Banco de dados para uso */ 
USE clinica_db;

/* Criando Tabela */
CREATE TABLE pacientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    cpf CHAR(14) NOT NULL,
    telefone CHAR(20),
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
);