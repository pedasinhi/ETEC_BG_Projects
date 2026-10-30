/* Exercício 1: E-commerce (Produtos) */

/* Criando o Banco de dados */
CREATE DATABASE ecommerce_db;

/* Selecionando Banco de dados para uso */ 
USE ecommerce_db;

/* Criando Tabela */
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL (10,2) NOT NULL,
    quantidade_estoque INT NOT NULL, 
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);