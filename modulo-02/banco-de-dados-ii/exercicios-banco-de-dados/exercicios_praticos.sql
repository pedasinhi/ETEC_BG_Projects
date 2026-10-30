
-- Exercício 1: E-commerce (Produtos)
create database ecommerce_db;
use ecommerce_db;
create table produtos(
	id int auto_increment primary key,
    nome varchar(100) not null,
    preco decimal not null,
    quantidade_estoque int not null,
    criado_em datetime default current_timestamp
);

-- Exercício 2: Escola (Alunos) 
create database escola_db;
use escola_db;
create table produtos(
	id int auto_increment primary key,
    nome_completo varchar(150) not null,
    email varchar(100) not null,
    data_nascimento date,
    cadastrado_em datetime default current_timestamp
    
);

-- Exercício 3: Clínica Médica (Pacientes) 

create database clinica_db;
use clinica_db;
create table pacientes(
	id int auto_increment primary key,
    nome varchar(120) not null,
    cpf varchar(14) not null,
    telefone varchar(20),
    criado_em datetime default current_timestamp
);

-- Exercício 4: Academia (Membros) 

create database academia_db;
use academia_db;
create table membros(
	id int auto_increment primary key,
    nome varchar(100) not null,
    plano varchar(50) not null,
    ativo bool default true,
    data_inscricao timestamp default current_timestamp
);

-- Exercício 5: Restaurante (Pratos) 

create database restaurante_db;
use restaurante_db;
create table pratos(
	id int auto_increment primary key,
    nome_prato varchar(100) not null,
    preco decimal not null,
    categoria varchar(50),
    criado_em datetime default current_timestamp
);

-- Exercício 6: Hotel (Quartos)

create database hotel_db;
use hotel_db;
create table quartos(
	id int auto_increment primary key,
    numero_quarto int not null,
    tipo varchar(50) not null,
    preco_diaria decimal not null,
    atualizado_em datetime default current_timestamp
);

-- Exercício 7: Cinema (Filmes) 

create database cinema_db;
use cinema_db;
create table filmes(
	id int auto_increment primary key,
    titulo varchar(150) not null,
    genero varchar(50) not null,
    duracao_minutos int not null,
    lancamento_em datetime default current_timestamp
);

-- Exercício 8: Blog (Artigos) 

create database blog_db;
use blog_db;
create table artigos(
	id int auto_increment primary key,
    titulo varchar(200) not null,
    conteudo text not null,
    autor varchar(100) not null,
    publicado_em datetime default current_timestamp
);

-- Exercício 9: Loja de Carros (Veículos) 

create database concessionaria_db;
use concessionaria_db;
create table veiculos(
	id int auto_increment primary key,
    marca varchar(50) not null,
    ano int not null,
    registrado_em datetime default current_timestamp
);

-- Exercício 10: Empresa (Funcionários) 

create database empresa_db;
use empresa_db;
create table funcionarios(
	id int auto_increment primary key,
    nome varchar(120) not null,
    cargo varchar(80) not null,
    salario decimal not null,
    contratado_em datetime default current_timestamp
);

