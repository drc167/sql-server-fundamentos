# Fundamentos de SQL Server: Banco de Dados Comercial

## Contexto e Objetivo
Este repositório contém a modelagem, carga de dados e consultas analíticas para um cenário de **gestão de vendas, clientes e produtos**. O objetivo é consolidar a prática nos fundamentos do Microsoft SQL Server.

---

##  Estrutura do Repositório
* `SQLQuery-DDL.sql`: Criação de tabelas e definição do banco de dados.
* `SQLQuery-DML.sql`: Inserção, atualização e exclusão de dados de teste.
* `SQLQuery-consultasDQL-Operadores.sql`: Consultas analíticas e práticas com operadores.
* `SQLQuery-consultasDQL-Operadores2.sql`: Exercícios avançados de filtragem e ordenação.
---

##  Conceitos Aplicados
* **DDL:** `CREATE TABLE`, definições de chaves primárias e tipos de dados.
* **DML:** `INSERT INTO`, `UPDATE`, `DELETE`.
* **DQL:** `SELECT`, `WHERE`, `ORDER BY`, `DISTINCT`, `TOP`.
* **Operadores:** `IN`, `BETWEEN`, `LIKE`, `IS NULL`, `AND`, `OR`, `NOT`.
* 
---

##  Estrutura de Tabelas (DDL)

```sql
CREATE TABLE clientes ( 
    id_cliente INT PRIMARY KEY,
    nome VARCHAR (100),
    cidade VARCHAR (100),
    idade INT,
    telefone VARCHAR (20)
);

CREATE TABLE Produtos (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR (100),
    categoria VARCHAR (50),
    preco DECIMAL (10,2),
    estoque INT 
);

CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    id_produto INT,
    quantidade INT,
    data_pedido DATE
);

-- Produtos da categoria Vestido ou Blusa com preço menor que R$ 200
SELECT nome_produto, preco, categoria 
FROM produtos
WHERE categoria IN ('vestido', 'Blusa')
  AND preco < 200 
ORDER BY preco ASC;

-- Filtro por faixa de preço e estoque mínimo
SELECT nome_produto, preco, estoque 
FROM produtos
WHERE preco BETWEEN 150 AND 220 
  AND estoque > 5;

-- Clientes sem telefone cadastrado
SELECT nome, telefone
FROM clientes
WHERE telefone IS NULL;

Quase lá! Para ficar perfeito, precisamos formatar os códigos SQL com as marcações do Markdown (````sql` e `````), senão o GitHub vai exibir tudo como texto corrido na tela inicial.

---

### Como ajustar o texto do `README.md`

Substitua todo o conteúdo dessa caixa pela versão formatada abaixo:

```markdown
# 📊 Fundamentos de SQL Server: Banco de Dados Comercial

## 📌 Contexto e Objetivo
Este repositório contém a modelagem, carga de dados e consultas analíticas para um cenário de **gestão de vendas, clientes e produtos**. O objetivo é consolidar a prática nos fundamentos do Microsoft SQL Server.

---

## 🗂️ Estrutura do Repositório
* `SQLQuery-DDL.sql`: Criação de tabelas e definição do banco de dados.
* `SQLQuery-DML.sql`: Inserção, atualização e exclusão de dados de teste.
* `SQLQuery-consultasDQL-Operadores.sql`: Consultas analíticas e práticas com operadores.
* `SQLQuery-consultasDQL-Operadores2.sql`: Exercícios avançados de filtragem e ordenação.

---

## 🛠️ Conceitos Aplicados
* **DDL:** `CREATE TABLE`, definições de chaves primárias e tipos de dados.
* **DML:** `INSERT INTO`, `UPDATE`, `DELETE`.
* **DQL:** `SELECT`, `WHERE`, `ORDER BY`, `DISTINCT`, `TOP`.
* **Operadores:** `IN`, `BETWEEN`, `LIKE`, `IS NULL`, `AND`, `OR`, `NOT`.

---

## 📐 Estrutura de Tabelas (DDL)

```sql
CREATE TABLE clientes ( 
    id_cliente INT PRIMARY KEY,
    nome VARCHAR (100),
    cidade VARCHAR (100),
    idade INT,
    telefone VARCHAR (20)
);

CREATE TABLE Produtos (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR (100),
    categoria VARCHAR (50),
    preco DECIMAL (10,2),
    estoque INT 
);

CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    id_produto INT,
    quantidade INT,
    data_pedido DATE
);

```

---

## ❓ Exemplos de Perguntas Respondidas nas Consultas (DQL)

```sql
-- Produtos da categoria Vestido ou Blusa com preço menor que R$ 200
SELECT nome_produto, preco, categoria 
FROM produtos
WHERE categoria IN ('vestido', 'Blusa')
  AND preco < 200 
ORDER BY preco ASC;

-- Filtro por faixa de preço e estoque mínimo
SELECT nome_produto, preco, estoque 
FROM produtos
WHERE preco BETWEEN 150 AND 220 
  AND estoque > 5;

-- Clientes sem telefone cadastrado
SELECT nome, telefone
FROM clientes
WHERE telefone IS NULL;
