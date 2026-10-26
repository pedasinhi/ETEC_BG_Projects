/* Exercicio 4: Academia (Membros) */

/* Criando o Banco de dados */
CREATE DATABASE academia_db;

/* Selecionando Banco de dados para uso */ 
USE academia_db;

/* Criando Tabela */
CREATE TABLE pratos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_prato VARCHAR(100) NOT NULL,
    preco DECIMAL NOT NULL,
    categoria CHAR(50) NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
);