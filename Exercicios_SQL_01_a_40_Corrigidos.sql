-- Exercício Prático - 01

create database dbVeterinaria;
create database dbOficina;
create database dbEscolaIdiomas;
create database dbMateriais;

-- Verificando os bancos criados
show databases;

-- Deixando o projeto da oficina preparado
use dbOficina;


-- Exercício Prático - 02

create database dbAcademia;

-- Confirmando a criação juntamente com os bancos anteriores
show databases;

-- Deixando o ambiente da academia preparado
use dbAcademia;


-- Exercício Prático 03

use dbOficina;

create table VEICULO (
    id_veiculo int primary key,
    placa varchar(10) not null unique,
    modelo varchar(100) not null,
    ano year,
    valor_estimado DECIMAL(10,2),
    ativo bool default true
);

-- Conferindo as tabelas existentes
show tables;

-- Conferindo a estrutura criada
describe VEICULO;


-- Exercício Prático - 04

use dbOficina;

-- Primeiro, consultar a estrutura atual
describe VEICULO;


-- Exercício Prático - 05

use dbOficina;

-- Adicionando marca obrigatória
alter table VEICULO
add column marca varchar(50) not null;

-- Adicionando cor opcional
alter table VEICULO
add column cor varchar(30);

-- Alterando o tamanho permitido para modelo
alter table VEICULO
modify column modelo varchar(150) not null;

-- Renomeando valor_estimado para valor_mercado
alter table VEICULO
rename column valor_estimado to valor_mercado;

-- Conferindo o resultado final
describe VEICULO;


-- Exercício Prático - 06

-- Removendo o banco da clínica veterinária.
-- IF EXISTS permite executar o comando novamente sem erro.
drop database if exists dbVeterinaria;

-- Conferindo os bancos disponíveis
show databases;


-- Exercício Prático - 07

create database if not exists dbOficinaHomologacao;
create database if not exists dbEscolaHomologacao;

-- Confirmando a criação
show databases;

-- Selecionando o ambiente da oficina
use dbOficinaHomologacao;

-- Selecionando o ambiente da escola
use dbEscolaHomologacao;

-- Removendo os dois ambientes.
-- IF EXISTS permite executar novamente sem gerar erro.
drop database if exists dbOficinaHomologacao;
drop database if exists dbEscolaHomologacao;


-- Exercício prático - 08

-- Apresentando os bancos disponíveis
show databases;

-- Selecionando o projeto da oficina
use dbOficina;

-- Apresentando suas tabelas
show tables;

-- Apresentando a estrutura de VEICULO
describe VEICULO;

-- Selecionando o projeto da escola de idiomas
use dbEscolaIdiomas;

-- Apresentando suas tabelas
show tables;

-- Retornando ao projeto da oficina
use dbOficina;


-- Exercício Prático - 09

use dbEscolaIdiomas;

create table curso(
    id_curso int primary key,
    nome varchar(100) not null unique,
    carga_horaria int not null,
    valor decimal(10,2) not null check(valor >= 0),
    ativo bool default true
);

create table professor (
    id_professor int primary key,
    nome varchar(120) not null,
    email varchar(150) not null unique,
    data_admissao date not null,
    ativo bool default true
);

-- Apresentando todas as tabelas
show tables;

-- Apresentando as estruturas
describe curso;
describe professor;


-- Exercício Prático - 10

create table turma(
    id_turma int primary key,
    nome varchar(50) not null,
    data_inicio date not null,
    horario time not null,
    id_curso int not null,

    foreign key (id_curso)
        references curso(id_curso)
);

-- Apresentando a estrutura turma
describe turma;


-- Exercício Prático - 11

alter table turma
add column id_professor int not null;

alter table turma
add constraint fk_turma_professor
foreign key (id_professor)
references professor(id_professor);

describe turma;


-- Exercício Prático - 12

create table aluno(
    id_aluno int primary key,
    nome varchar(150) not null,
    cpf char(11) not null unique,
    data_nascimento date,
    email varchar(150) unique,
    data_cadastro datetime,
    ativo bool default true
);

describe aluno;


-- Exercício Prático - 13

create table matricula(
    id_aluno int not null,
    id_turma int not null,
    data_matricula date not null,
    situacao varchar(20) not null,

    primary key (id_aluno, id_turma),

    foreign key (id_aluno)
        references aluno(id_aluno),

    foreign key (id_turma)
        references turma(id_turma)
);

describe matricula;


-- Exercício Prático - 14

/*
A relação entre aluno e turma é N:N.
E foi transformada na tabela associativa MATRICULA.

Não foi necessário criar curso1, curso2 e curso3
dentro de aluno porque um aluno pode participar
de várias turmas.

A tabela MATRICULA permite representar essa relação
de forma normalizada.
*/

describe aluno;

describe matricula;


-- Exercício Prático - 15

use dbOficina;

-- Criando a estrutura inicial exatamente como apresentada
create table cliente (
    id_cliente int,
    nome varchar(100),
    cpf char(11),
    ativo bool
);

-- Conferindo a estrutura inicial
describe cliente;

-- Corrigindo o identificador
alter table cliente
modify column id_cliente int primary key;

-- Tornando o nome obrigatório
alter table cliente
modify column nome varchar(100) not null;

-- Tornando o CPF obrigatório e único
alter table cliente
modify column cpf char(11) not null unique;

-- Definindo cliente como ativo inicialmente
alter table cliente
modify column ativo bool default true;

-- Conferindo a estrutura corrigida
describe cliente;


-- Exercício Prático - 16

create database dbLocadoraTeste;

use dbLocadoraTeste;

-- Tabela de clientes
create table cliente (
    id_cliente int primary key,
    nome varchar(150) not null,
    documento varchar(14) not null unique,
    telefone varchar(20),
    ativo bool default true
);

-- Tabela de categorias
create table categoria (
    id_categoria int primary key,
    nome varchar(80) not null unique
);

-- Tabela de equipamentos
create table equipamento (
    id_equipamento int primary key,
    nome varchar(120) not null,
    id_categoria int not null,
    valor_diario decimal(10,2) not null check(valor_diario >= 0),
    disponivel bool default true,

    foreign key (id_categoria)
        references categoria(id_categoria)
);

-- Tabela de locações
create table locacao (
    id_locacao int primary key,
    id_cliente int not null,
    data_retirada datetime not null,
    data_devolucao_prevista date not null,
    situacao varchar(30) not null,

    foreign key (id_cliente)
        references cliente(id_cliente)
);

-- Tabela associativa entre locação e equipamento
create table item_locacao (
    id_locacao int not null,
    id_equipamento int not null,
    valor_diario decimal(10,2) not null check(valor_diario >= 0),

    primary key (id_locacao, id_equipamento),

    foreign key (id_locacao)
        references locacao(id_locacao),

    foreign key (id_equipamento)
        references equipamento(id_equipamento)
);

-- Conferindo o banco e suas tabelas
show databases;
show tables;

-- Conferindo as estruturas
describe cliente;
describe categoria;
describe equipamento;
describe locacao;
describe item_locacao;


-- Exercício Prático - 17

use dbLocadoraTeste;

-- Aumentando o tamanho do nome do equipamento
alter table equipamento
modify column nome varchar(180) not null;

-- Adicionando a marca obrigatória
alter table equipamento
add column marca varchar(80) not null;

-- Removendo o telefone do cliente
alter table cliente
drop column telefone;

-- Alterando o nome do valor diário
alter table equipamento
rename column valor_diario to valor_locacao;

-- Renomeando a tabela categoria
rename table categoria to tipo_equipamento;

-- Conferindo as estruturas modificadas
describe cliente;
describe equipamento;
describe tipo_equipamento;

show tables;


-- Exercício Prático - 18

use dbLocadoraTeste;

-- Criando a estrutura temporária de importação
create table equipamento_importacao (
    codigo int,
    descricao varchar(180),
    quantidade int
);

-- Conferindo a estrutura
describe equipamento_importacao;

-- Situação A:
-- Os dados serão apagados, mas a estrutura continuará sendo utilizada.
truncate table equipamento_importacao;

-- Situação B:
-- Quando a estrutura não for mais necessária, ela poderá ser excluída.
drop table equipamento_importacao;


-- Exercício Prático - 19

-- Conferindo os bancos existentes
show databases;

-- Removendo os ambientes utilizados para treinamento
drop database if exists dbAcademia;
drop database if exists dbLocadoraTeste;
drop database if exists dbOficina;
drop database if exists dbEscolaIdiomas;
drop database if exists dbMateriais;

-- Conferindo novamente os bancos existentes
show databases;


-- Exercício Prático - 20

/*
Principais entidades:

ESTADO
CIDADE
CLIENTE
ENDERECO
CARGO
FUNCIONARIO
CATEGORIA
PRODUTO
FORNECEDOR
ESTOQUE
PEDIDO
PAGAMENTO
FORMA_PAGAMENTO
ENTREGA

Relacionamentos 1:N:

ESTADO -> CIDADE
CLIENTE -> ENDERECO
CARGO -> FUNCIONARIO
CATEGORIA -> PRODUTO
CLIENTE -> PEDIDO
FUNCIONARIO -> PEDIDO
FORMA_PAGAMENTO -> PAGAMENTO
PEDIDO -> PAGAMENTO
PEDIDO -> ENTREGA

Relacionamentos N:N:

FORNECEDOR <-> PRODUTO
PEDIDO <-> PRODUTO

Relações associativas:

FORNECEDOR <-> PRODUTO
    -> PRODUTO_FORNECEDOR

PEDIDO <-> PRODUTO
    -> ITEM_PEDIDO

O modelo deve estar normalizado antes da implementação.
*/


-- Exercício Prático - 21

/*
ESTADO possui várias CIDADES.
CIDADE pertence a um ESTADO.

CLIENTE pode possuir ENDEREÇOS.

FUNCIONARIO ocupa um CARGO.

PRODUTO pertence a uma CATEGORIA.

FORNECEDOR e PRODUTO possuem relacionamento N:N.
A relação associativa será PRODUTO_FORNECEDOR.

Cada PRODUTO possui um controle de ESTOQUE.

CLIENTE realiza PEDIDOS.

Cada PEDIDO possui um FUNCIONARIO responsável.

PEDIDO e PRODUTO possuem relacionamento N:N.
A relação associativa será ITEM_PEDIDO.

PEDIDO pode possuir PAGAMENTOS.

Cada PAGAMENTO utiliza uma FORMA_PAGAMENTO.

PEDIDO pode gerar ENTREGA.
*/


-- Exercício Prático - 22

/*
Início da implementação física do projeto Horizonte Comercial.
*/

create database dbHorizonte;

use dbHorizonte;

-- Confirmando a criação
show databases;


-- Exercício Prático - 23

use dbHorizonte;

-- Criando estado
create table estado (
    id_estado int primary key,
    sigla char(2) not null unique,
    nome varchar(50) not null
);

-- Criando cidade
create table cidade (
    id_cidade int primary key,
    nome varchar(100) not null,
    id_estado int not null,

    foreign key (id_estado)
        references estado(id_estado)
);

-- Conferindo as tabelas
show tables;

-- Conferindo as estruturas
describe estado;
describe cidade;


-- Exercício Prático - 24

use dbHorizonte;

-- Criando cliente
create table cliente (
    id_cliente int primary key auto_increment,
    nome varchar(150) not null,
    documento varchar(14) not null unique,
    tipo_pessoa char(1) not null check(tipo_pessoa in ('F', 'J')),
    telefone varchar(20),
    email varchar(150),
    data_nascimento date,
    data_cadastro datetime not null,
    ativo bool default true
);

-- Criando endereço
create table endereco (
    id_endereco int primary key,
    id_cliente int not null,
    logradouro varchar(150) not null,
    numero varchar(20) not null,
    complemento varchar(100),
    cep varchar(10) not null,
    id_cidade int not null,

    foreign key (id_cliente)
        references cliente(id_cliente),

    foreign key (id_cidade)
        references cidade(id_cidade)
);

-- Conferindo as estruturas
describe cliente;
describe endereco;


-- Exercício Prático - 25

use dbHorizonte;

-- Criando cargo
create table cargo (
    id_cargo int primary key,
    nome varchar(100) not null unique,
    salario_base decimal(10,2) not null check(salario_base >= 0)
);

-- Criando funcionário
create table funcionario (
    id_funcionario int primary key auto_increment,
    nome varchar(150) not null,
    cpf char(11) not null unique,
    data_admissao date not null,
    horario_entrada time,
    id_cargo int not null,
    ativo bool default true,

    foreign key (id_cargo)
        references cargo(id_cargo)
);

-- Conferindo
describe cargo;
describe funcionario;


-- Exercício Prático - 26

use dbHorizonte;

-- Criando categoria
create table categoria (
    id_categoria int primary key,
    nome varchar(100) not null unique,
    descricao varchar(255)
);

-- Criando produto
create table produto (
    id_produto int primary key auto_increment,
    nome varchar(150) not null,
    id_categoria int not null,
    preco_venda decimal(10,2) not null check(preco_venda >= 0),
    ano_fabricacao year,
    estoque_minimo int not null check(estoque_minimo >= 0),
    ativo bool default true,

    foreign key (id_categoria)
        references categoria(id_categoria)
);

-- Conferindo
describe categoria;
describe produto;


-- Exercício Prático - 27

use dbHorizonte;

-- Criando fornecedor
create table fornecedor (
    id_fornecedor int primary key,
    razao_social varchar(150) not null,
    cnpj char(14) not null unique,
    telefone varchar(20),
    email varchar(150),
    ativo bool default true
);

-- Criando a tabela associativa
create table produto_fornecedor (
    id_produto int not null,
    id_fornecedor int not null,
    codigo_fornecedor varchar(50),
    preco_custo decimal(10,2) not null check(preco_custo >= 0),

    primary key (id_produto, id_fornecedor),

    foreign key (id_produto)
        references produto(id_produto),

    foreign key (id_fornecedor)
        references fornecedor(id_fornecedor)
);

-- Conferindo
describe fornecedor;
describe produto_fornecedor;


-- Exercício Prático - 28

use dbHorizonte;

-- Criando controle de estoque
create table estoque (
    id_produto int primary key,
    quantidade_atual int not null check(quantidade_atual >= 0),
    data_atualizacao datetime not null,

    foreign key (id_produto)
        references produto(id_produto)
);

-- Conferindo
describe estoque;


-- Exercício Prático - 29

use dbHorizonte;

-- Criando pedido
create table pedido (
    id_pedido int primary key,
    id_cliente int not null,
    id_funcionario int not null,
    data_hora datetime not null,
    percentual_desconto decimal(5,2) default 0
        check(percentual_desconto >= 0 and percentual_desconto <= 100),
    situacao varchar(30) not null,

    foreign key (id_cliente)
        references cliente(id_cliente),

    foreign key (id_funcionario)
        references funcionario(id_funcionario)
);

-- Conferindo
describe pedido;


-- Exercício Prático - 30

use dbHorizonte;

-- Criando tabela associativa entre pedido e produto
create table item_pedido (
    id_pedido int not null,
    id_produto int not null,
    quantidade int not null check(quantidade > 0),
    valor_unitario decimal(10,2) not null check(valor_unitario >= 0),

    primary key (id_pedido, id_produto),

    foreign key (id_pedido)
        references pedido(id_pedido),

    foreign key (id_produto)
        references produto(id_produto)
);

-- Conferindo
describe item_pedido;


-- Exercício Prático - 31

use dbHorizonte;

-- Criando formas de pagamento
create table forma_pagamento (
    id_forma_pagamento int primary key,
    descricao varchar(100) not null unique,
    ativo bool default true
);

-- Criando pagamentos
create table pagamento (
    id_pagamento int primary key,
    id_pedido int not null,
    id_forma_pagamento int not null,
    valor_pago decimal(10,2) not null check(valor_pago > 0),
    data_hora datetime not null,
    situacao varchar(30) not null,

    foreign key (id_pedido)
        references pedido(id_pedido),

    foreign key (id_forma_pagamento)
        references forma_pagamento(id_forma_pagamento)
);

-- Conferindo
describe forma_pagamento;
describe pagamento;


-- Exercício Prático - 32

use dbHorizonte;

-- Criando entrega
create table entrega (
    id_entrega int primary key,
    id_pedido int not null,
    id_endereco int not null,
    data_prevista date not null,
    data_envio date,
    data_entrega date,
    situacao varchar(30) not null,

    foreign key (id_pedido)
        references pedido(id_pedido),

    foreign key (id_endereco)
        references endereco(id_endereco)
);

-- Conferindo
describe entrega;


-- Exercício Prático - 33

use dbHorizonte;

-- Conferindo o banco selecionado
select database();

-- Apresentando todas as tabelas
show tables;

-- Conferindo as estruturas solicitadas
describe cliente;
describe produto;
describe pedido;
describe item_pedido;
describe pagamento;
describe entrega;


-- Exercício Prático - 34

use dbHorizonte;

-- Aumentando o tamanho do nome do cliente
alter table cliente
modify column nome varchar(200) not null;

-- Adicionando observação opcional
alter table cliente
add column observacao varchar(250);

-- Removendo o telefone do fornecedor
alter table fornecedor
drop column telefone;

-- Renomeando ano_fabricacao para ano
alter table produto
rename column ano_fabricacao to ano;

-- Conferindo as alterações
describe cliente;
describe fornecedor;
describe produto;


-- Exercício Prático - 35

use dbHorizonte;

-- Adicionando peso ao produto
alter table produto
add column peso decimal(10,2);

-- Adicionando marca obrigatória
alter table produto
add column marca varchar(80) not null;

-- Conferindo
describe produto;


-- Exercício Prático - 36

use dbHorizonte;

-- Tornando peso obrigatório
alter table produto
modify column peso decimal(10,2) not null;

-- Conferindo
describe produto;


-- Exercício Prático - 37

use dbHorizonte;

-- Removendo a informação de ano de fabricação
alter table produto
drop column ano;

-- Conferindo
describe produto;


-- Exercício Prático - 38

use dbHorizonte;

-- Criando estrutura temporária de importação
create table produto_importacao (
    codigo int,
    descricao varchar(180),
    quantidade int
);

-- Conferindo a estrutura
describe produto_importacao;

-- Situação A:
-- Apaga os dados, mas mantém a estrutura.
truncate table produto_importacao;

-- Situação B:
-- Quando a estrutura não for mais necessária, exclui a tabela.
drop table produto_importacao;


-- Exercício Prático - 39

use dbHorizonte;

-- Renomeando a tabela entrega para expedicao
rename table entrega to expedicao;

-- Conferindo as tabelas existentes
show tables;

-- Conferindo a estrutura após a alteração
describe expedicao;


-- Exercício Prático - 40

use dbHorizonte;

show databases;

-- Conferindo o banco atualmente utilizado
select database();

-- Conferindo todas as tabelas
show tables;

-- Conferindo as estruturas do banco físico
describe estado;
describe cidade;

describe cliente;
describe endereco;

describe cargo;
describe funcionario;

describe categoria;
describe produto;

describe fornecedor;
describe produto_fornecedor;

describe estoque;

describe pedido;
describe item_pedido;

describe forma_pagamento;
describe pagamento;

-- A tabela entrega foi renomeada para expedicao no exercício 39
describe expedicao;