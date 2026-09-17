"Quais clientes têm mais de 30 anos?"

select nome, idade 
from clientes 
where idade > 30

Quais clientes de Contagem têm mais de 30 anos?

select nome, idade 
from clientes 
where idade > 30 
AND cidade = 'contagem'

"Quais clientes moram em Contagem OU Betim?"

select nome, cidade
from clientes 
where cidade = 'Contagem' 
OR cidade = 'Betim'

"Quais clientes têm entre 25 e 35 anos?"
select nome, idade 
from clientes 
where idade 
BETWEEN 25 AND 35

"Quais clientes têm o nome começando com a letra A?"

select nome 
from clientes 
where nome 
LIKE 'a%'

"Quais clientes não possuem telefone cadastrado?"

select * 
from clientes 
where telefone is null

Mostre o nome e a idade dos clientes que moram em Contagem ou Betim, têm entre 25 e 40 anos, e ordene do mais velho para o mais novo.

select nome, idade, cidade
from clientes
where cidade IN ('contagem', 'Betim')
AND idade between 25 and 40 order by idade desc 

"Quais são as cidades onde temos clientes, sem repetir nenhuma cidade?"

select distinct cidade
from clientes 

"Mostre os 3 produtos mais caros da loja."

select top 3 nome_produto,preco  
from Produtos
order by preco desc

Mostre os 3 produtos mais baratos, mostrando nome e preço.

select top 3 nome_produto,preco  
from Produtos
order by preco ASC

chegou um produto novo: Tracie — R$ 159,99 — categoria Blusa — estoque 7

INSERT INTO Produtos (id_produto, nome_produto, categoria, preco, estoque)VALUES
(7, 'Tracie', 'Blusa', 159.99, 7);

percebemos que o preço da Tracie está errado.Ela passou de 159,99 para 169,99.

UPDATE Produtos          #vou alterar a tabela Produtos
SET preco = 169.99       #o preço passa a ser 169,99
WHERE id_produto = 7;    #somente o produto 7

o produto 7 saiu da loja e queremos removê-lo:

DELETE FROM Produtos
WHERE id_produto = 7;

Cadastre este produto:
id_produto: 8
nome_produto: Pietra
categoria: Saia
preco: 239.99
estoque: 4

RESPOSTA:  insert into produtos ( id_produto, nome_produto, categoria, preco, estoque)VALUES
(8,'Pietra','Saia', 239.99,4);

Depois descubra que o estoque da Pietra passou para 10 unidades.

RESPOSTA:  update produtos
SET estoque = 10
where id_produto = 8

Sua chefe pede para excluir a Pietra do cadastro.

RESPOSTA:  
delete from produtos 
where id_produto=8

Aumente em R$ 20,00 o preço dos produtos que custam menos de R$ 100,00.

update produtos 
set preco = preco + 20 
where preco < 100


Diminua R$ 5,00 do preço de todos os produtos que custam mais de R$ 200,00.

update produtos 
set preco = preco - 5
where preco > 200


