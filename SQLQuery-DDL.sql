create table clientes( 
id_cliente INT PRIMARY KEY,
nome VARCHAR (100),
cidade VARCHAR (100),
idade INT,
telefone VARCHAR (20));

SELECT * FROM clientes

CREATE TABLE Produtos(id_produto INT PRIMARY KEY,
nome_produto VARCHAR (100),
categoria VARCHAR (50),
preco DECIMAL (10,2),
estoque INT );


CREATE TABLE Pedidos(
id_pedido INT PRIMARY KEY,
id_cliente INT,
id_produto INT,
quantidade INT,
data_pedido DATE);

