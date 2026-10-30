-- Aula dia 25/08/2026

/*Linguagem SQL
Sub Linguagem - DDL */

create database dsTarde;
create database dbExemplos;

show databases;

use dstarde;

create table tbtarde(
rm int not null, 
nome varchar(50) null, 
sexo char(1),
datanasc date not null);

describe tbtarde;

create table professor(
id integer primary key,
nome nvarchar(100) not null,
salario double not null,
cpf bigint not null,
sexo char(1) 
);

describe professor;

show tables;

-- DDL ( create | drop | alter )
drop table professor;


show tables;

describe tbtarde;

-- ( alter - add | drop | modfy )
alter table tbtarde add nota decimal(4,2) not null;

alter table tbtarde add altura numeric(4,2) not null;


alter table tbtarde drop column altura;


alter table tbtarde modify nota decimal(6,2) not null;


create table tbChefe(
Id integer primary key auto_increment,
nome varchar(100) not null ,
cpf bigint not null unique ,
sexo char(1) default 'F',
salario decimal(6,2), 
check(salario > 1000) 
);

describe tbChefe;

alter table tbChefe add sexo char(1) default 'F';