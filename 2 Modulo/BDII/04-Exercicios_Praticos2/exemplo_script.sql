 /* Exercícios Práticos de Banco de Dados */

/* Exemplo de Modelo: */
Create Database biblioteca_db;

/* Selecionando o banco de dados para uso */
USE biblioteca_db;

/* Criando a tabela 'livros' com Primary Key, Not Null e Timestamp */
Create Table livros (
	id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano_publicacao INT,
    criad_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

/* Inserindo dados na tabela(INSERT) */
INSERT INTO livros(titulo, autor, ano_publicacao )
VALUES ('O Dia a Dia do Programador', 'Wellington Cidade', 2026);

INSERT INTO livros (titulo, autor, ano_publicacao)
VALUES ('O Guarani', 'José de Alencar', 1857);

/* Consultando os dados (SELECT) */
SELECT * FROM Livros;

/* Atualizando os dados existentes (UPDATE) */
UPDATE livros
SET ano_publicacao = 1900
WHERE id= 1;

/* Deletando um registro (Delete) */
DELETE FROM livros
Where id= 2; 