# 🗄️ Estudos de MySQL e SQL

<p align="center">
  <img src="https://img.shields.io/badge/MySQL-8.x-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">
  <img src="https://img.shields.io/badge/SQL-Database-336791?style=for-the-badge" alt="SQL">
  <img src="https://img.shields.io/badge/Status-Em%20desenvolvimento-orange?style=for-the-badge" alt="Status">
</p>

<p align="center">
  <strong>Repositório dedicado ao estudo prático de Banco de Dados, SQL e MySQL.</strong>
  <br>
  Conceitos, comandos, exercícios e implementações desenvolvidos ao longo da minha formação em Análise e Desenvolvimento de Sistemas.
</p>

---

## 📌 Sobre este repositório

Este repositório reúne meus estudos práticos de **Banco de Dados e Linguagem SQL**, utilizando o **MySQL 8.x** como principal SGBD de referência.

O objetivo é documentar minha evolução técnica por meio de:

* 📚 Conceitos fundamentais de banco de dados;
* 💻 Scripts SQL;
* 🗃️ Criação e estruturação de bancos;
* 🔧 Alteração e gerenciamento de tabelas;
* 🔐 Restrições de integridade;
* 🔗 Relacionamentos entre tabelas;
* 🧩 Exercícios práticos;
* 🚀 Projetos de implementação.

Mais do que armazenar comandos, este repositório busca demonstrar **como os conceitos estudados são transformados em implementações práticas**.

---

## 🎯 Objetivos

| Objetivo               | Descrição                                                           |
| ---------------------- | ------------------------------------------------------------------- |
| 🧠 **Fundamentos**     | Compreender os conceitos de bancos de dados relacionais e SQL       |
| 🗄️ **MySQL**          | Desenvolver prática utilizando o MySQL 8.x                          |
| 💻 **SQL**             | Escrever e organizar comandos SQL de forma estruturada              |
| 🏗️ **Modelagem**      | Relacionar o projeto lógico com a implementação física              |
| 🔐 **Integridade**     | Aplicar constraints e regras de negócio                             |
| 🔗 **Relacionamentos** | Trabalhar com chaves primárias, estrangeiras e tabelas associativas |
| 🧪 **Prática**         | Consolidar os conhecimentos por meio de exercícios                  |
| 📈 **Evolução**        | Registrar continuamente minha evolução técnica                      |

---

## 📚 Conteúdos estudados

### 1. 🧠 Fundamentos de SQL

* Linguagem SQL
* Banco de dados relacional
* SGBD — Sistema Gerenciador de Banco de Dados
* Ambiente MySQL
* Diferenças entre implementações SQL
* Subconjuntos da linguagem SQL

O material utiliza o **MySQL 8.x** como ambiente de referência para os estudos.

---

### 2. 🗄️ Implementação de bancos no MySQL

Nesta etapa são estudados os comandos responsáveis pela criação e gerenciamento inicial dos bancos de dados.

| Comando           | Função                          |
| ----------------- | ------------------------------- |
| `CREATE DATABASE` | Criar um banco de dados         |
| `SHOW DATABASES`  | Visualizar os bancos existentes |
| `USE`             | Selecionar um banco de dados    |
| `DROP DATABASE`   | Excluir um banco de dados       |

Exemplo:

```sql
CREATE DATABASE dbEstudos;

SHOW DATABASES;

USE dbEstudos;
```

O material apresenta esse processo como um ciclo básico de criação, verificação, seleção e exclusão de bancos.

---

### 3. 🏗️ DDL — Data Definition Language

A **DDL** é utilizada para definir e modificar a estrutura dos objetos do banco de dados.

Principais comandos estudados:

```text
CREATE TABLE
ALTER TABLE
DROP TABLE
TRUNCATE TABLE
RENAME TABLE
```

---

## 🧱 Criação de tabelas

A instrução `CREATE TABLE` permite definir a estrutura de uma tabela e suas respectivas colunas.

Exemplo:

```sql
CREATE TABLE tbAluno (
    AlunoID INT,
    Nome VARCHAR(60),
    DataNascimento DATE,
    Estado CHAR(2)
);
```

Depois da criação, podemos verificar a existência e a estrutura da tabela:

```sql
SHOW TABLES;

DESCRIBE tbAluno;
```

### 🔄 Fluxo estudado

```text
USE
 ↓
CREATE TABLE
 ↓
SHOW TABLES
 ↓
DESCRIBE
```

---

## 🔢 Tipos de dados

A definição de uma tabela exige que cada coluna possua um tipo de dado adequado.

Alguns dos tipos abordados nos estudos:

| Tipo      | Utilização                  |
| --------- | --------------------------- |
| `INT`     | Números inteiros            |
| `VARCHAR` | Textos com tamanho variável |
| `CHAR`    | Textos com tamanho definido |
| `DATE`    | Datas                       |
| `BOOLEAN` | Valores booleanos           |

> A escolha do tipo de dado está relacionada ao domínio da informação que será armazenada.

---

## 🔧 ALTER TABLE

Depois que uma tabela é criada, sua estrutura pode precisar ser modificada.

O comando utilizado para isso é:

```sql
ALTER TABLE
```

### Operações estudadas

| Operação           | Descrição           | Exemplo                      |
| ------------------ | ------------------- | ---------------------------- |
| ➕ `ADD`            | Adiciona uma coluna | `ADD Telefone VARCHAR(20)`   |
| 🔄 `MODIFY`        | Modifica uma coluna | `MODIFY Nome VARCHAR(100)`   |
| ❌ `DROP COLUMN`    | Remove uma coluna   | `DROP COLUMN Telefone`       |
| ✏️ `RENAME COLUMN` | Renomeia uma coluna | `RENAME COLUMN Estado TO UF` |

Exemplo:

```sql
ALTER TABLE tbAluno
ADD Telefone VARCHAR(20);
```

O estudo de `ALTER TABLE` também aborda a necessidade de modificar uma estrutura existente conforme mudanças no projeto e nas regras de negócio.

---

# 🔐 SQL Constraints

As **constraints** permitem representar regras e restrições diretamente na estrutura do banco.

| Constraint       | Finalidade                           |
| ---------------- | ------------------------------------ |
| 🔑 `PRIMARY KEY` | Identificar unicamente um registro   |
| 🚫 `NOT NULL`    | Definir um atributo como obrigatório |
| ♻️ `UNIQUE`      | Impedir valores repetidos            |
| ✅ `CHECK`        | Definir regras sobre valores         |
| 🏷️ `DEFAULT`    | Definir um valor inicial             |
| 🔗 `FOREIGN KEY` | Representar relacionamentos          |

Também fazem parte dos estudos:

* 🔑 Chave primária composta;
* 🔗 Chave estrangeira;
* 🧩 Tabelas associativas;
* 🔄 Relacionamentos entre tabelas.

---

# 🔗 Do projeto ao banco físico

Um dos principais conceitos trabalhados neste estudo é a relação entre o projeto de banco de dados e sua implementação física.

| 📐 No projeto        | 🗄️ No banco físico |
| -------------------- | ------------------- |
| Entidade             | Tabela              |
| Atributo             | Coluna              |
| Identificador        | `PRIMARY KEY`       |
| Atributo obrigatório | `NOT NULL`          |
| Valor não repetido   | `UNIQUE`            |
| Regra sobre valores  | `CHECK`             |
| Valor inicial        | `DEFAULT`           |
| Relacionamento       | `FOREIGN KEY`       |
| Relação associativa  | Tabela associativa  |
| Domínio              | Tipo de dado        |

A implementação física é apresentada como uma continuação do projeto: primeiro são compreendidas as necessidades e regras de negócio, depois o modelo é transformado em estruturas reais no MySQL.

---

# 🗑️ Gerenciamento de tabelas

## `DROP TABLE`

Utilizado para excluir uma tabela completamente.

```sql
DROP TABLE tbAluno;
```

Resultado:

```text
Dados       → Excluídos
Estrutura   → Excluída
Tabela      → Deixa de existir
```

---

## `TRUNCATE TABLE`

Utilizado para remover todos os registros mantendo a estrutura da tabela.

```sql
TRUNCATE TABLE tbAluno;
```

Resultado:

```text
Dados       → Removidos
Estrutura   → Mantida
Tabela      → Continua existindo
```

### ⚠️ Diferença importante

| Comando          |    Dados | Estrutura |
| ---------------- | -------: | --------: |
| `DROP TABLE`     | ❌ Remove |  ❌ Remove |
| `TRUNCATE TABLE` | ❌ Remove |  ✅ Mantém |

No MySQL, `TRUNCATE TABLE` é classificado como DDL e remove completamente os registros da tabela.

---

# ✏️ Renomeando tabelas

Também é estudada a diferença entre renomear uma coluna e renomear uma tabela.

### Renomear coluna

```sql
ALTER TABLE tbAluno
RENAME COLUMN Estado TO UF;
```

### Renomear tabela

```sql
RENAME TABLE tbAluno
TO tbEstudante;
```

> `RENAME COLUMN` altera o nome de uma **coluna**.
> `RENAME TABLE` altera o nome de uma **tabela**.

---

# 🧪 Exercícios práticos

O material utiliza exercícios progressivos para transformar os conceitos estudados em situações de implementação.

### 📌 Etapa 1 — Fixação dos primeiros comandos

* Preparação dos ambientes
* Criação de projetos
* Leitura de projetos
* Projeto × implementação
* Mudanças nas regras de negócio
* Ambientes de homologação
* Auditoria

### 🔗 Etapa 2 — Projeto, relacionamentos e implementação

* Relacionamentos `1:N`
* Cadastro de entidades
* Relacionamentos `N:N`
* Tabelas associativas
* Normalização
* Projeto × banco físico
* Implementação de regras

### 🏢 Etapa 3 — Desafio de integração

Aplicação dos conhecimentos em cenários mais completos, como:

* Pequena locadora;
* Alterações em projetos existentes;
* Estruturas temporárias;
* Encerramento de ambientes de treinamento.

### 🚀 Etapa 4 — Projeto integrador

Aplicação integrada dos conhecimentos estudados em um projeto mais abrangente, envolvendo estruturas como:

* Clientes;
* Endereços;
* Organização;
* Produtos;
* Pedidos;
* Pagamentos;
* Entregas;
* Relacionamentos;
* Auditoria do projeto × banco físico;
* Alterações de regras de negócio.

A apostila organiza os exercícios justamente dessa forma, avançando da fixação dos primeiros comandos até um projeto integrador.

---

# 📂 Estrutura do repositório

A organização dos arquivos acompanha a evolução dos estudos:

```text
📦 estudos-mysql
│
├── 📄 README.md
│
├── 📁 01-fundamentos
│   ├── 📄 conceitos.sql
│   └── 📄 comentarios.sql
│
├── 📁 02-databases
│   ├── 📄 create-database.sql
│   ├── 📄 show-databases.sql
│   ├── 📄 use-database.sql
│   └── 📄 drop-database.sql
│
├── 📁 03-tables
│   ├── 📄 create-table.sql
│   ├── 📄 show-tables.sql
│   └── 📄 describe.sql
│
├── 📁 04-alter-table
│   ├── 📄 add.sql
│   ├── 📄 modify.sql
│   ├── 📄 drop-column.sql
│   └── 📄 rename-column.sql
│
├── 📁 05-constraints
│   ├── 📄 primary-key.sql
│   ├── 📄 not-null.sql
│   ├── 📄 unique.sql
│   ├── 📄 check.sql
│   ├── 📄 default.sql
│   └── 📄 foreign-key.sql
│
├── 📁 06-table-management
│   ├── 📄 drop-table.sql
│   ├── 📄 truncate-table.sql
│   └── 📄 rename-table.sql
│
├── 📁 07-exercicios
│   ├── 📁 etapa-01
│   ├── 📁 etapa-02
│   ├── 📁 etapa-03
│   └── 📁 etapa-04
│
└── 📁 projetos
```

> A estrutura poderá ser ampliada conforme novos conteúdos e projetos forem adicionados.

---

# 📈 Evolução dos estudos

### Fundamentos

* [x] 🧠 Introdução à SQL
* [x] 🗃️ Banco de dados relacional
* [x] ⚙️ SGBD
* [x] 🐬 Ambiente MySQL
* [x] 🔄 Diferenças entre SGBDs

### Banco de dados

* [x] `CREATE DATABASE`
* [x] `SHOW DATABASES`
* [x] `USE`
* [x] `DROP DATABASE`

### Tabelas

* [x] Tipos de dados
* [x] `CREATE TABLE`
* [x] `SHOW TABLES`
* [x] `DESCRIBE`
* [x] `ALTER TABLE`
* [x] `ADD`
* [x] `MODIFY`
* [x] `DROP COLUMN`
* [x] `RENAME COLUMN`

### Constraints

* [x] 🔑 `PRIMARY KEY`
* [x] 🚫 `NOT NULL`
* [x] ♻️ `UNIQUE`
* [x] ✅ `CHECK`
* [x] 🏷️ `DEFAULT`
* [x] 🔗 `FOREIGN KEY`
* [x] 🔑 Chave primária composta

### Gerenciamento

* [x] `DROP TABLE`
* [x] `TRUNCATE TABLE`
* [x] `RENAME TABLE`

---

# 🛠️ Ferramentas utilizadas

| Ferramenta                | Finalidade                            |
| ------------------------- | ------------------------------------- |
| 🐬 **MySQL**              | Sistema Gerenciador de Banco de Dados |
| 🧰 **MySQL Workbench**    | Desenvolvimento e execução de SQL     |
| 💻 **Visual Studio Code** | Edição e organização dos arquivos     |
| 🐙 **Git**                | Controle de versão                    |
| 🐱 **GitHub**             | Hospedagem e apresentação do projeto  |

---

# 📌 Objetivo profissional

Este repositório também funciona como parte do meu **portfólio técnico**, documentando de forma pública minha evolução na área de desenvolvimento de software.

A proposta é manter os estudos organizados, versionados e acompanhados de aplicações práticas, permitindo visualizar não apenas os conteúdos estudados, mas também a evolução da minha capacidade de transformar conhecimento em implementação.

> **Aprender. Praticar. Implementar. Evoluir.**

---

# 👨‍💻 Autor

**Cauã Martins do Nascimento**

🎓 Estudante de **Análise e Desenvolvimento de Sistemas**

💻 Em formação na área de **Desenvolvimento de Software**

📚 Atualmente aprofundando conhecimentos em **Banco de Dados, SQL e MySQL**.

---

<div align="center">

### 🗄️ MySQL • SQL • Banco de Dados

**Este repositório acompanha minha evolução técnica.**

⭐ Se este projeto for útil para você, considere deixar uma estrela no repositório.

</div>
