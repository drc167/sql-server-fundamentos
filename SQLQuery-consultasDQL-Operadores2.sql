Mostre o nome e o preço dos produtos que custam mais de R$ 150,00, do mais caro para o mais barato.

SELECT nome_produto, preco
FROM Produtos
WHERE preco > 150
ORDER BY preco desc

Mostre os 3 produtos mais caros da loja, mostrando nome, categoria e preço.

select TOP 3 nome_produto, preco, categoria
from produtos
order by preco desc

Mostre os produtos da categoria Vestido que custam menos de R$ 200,00.

select nome_produto, categoria , preco 
from produtos
where categoria = 'vestido' and preco < 200 

Mostre os produtos que são da categoria Vestido ou Blusa.

select nome_produto, categoria
from produtos
where categoria IN ('vestido' , 'Blusa')

Mostre o nome e o preço dos produtos que são Vestido ou Blusa, custam menos de R$ 200 e organize do mais barato para o mais caro

select nome_produto,preco,categoria 
from produtos
where categoria in ('vestido' , 'Blusa')
and preco < 200 
order by preco asc 

Mostre os 2 produtos mais baratos que tenham estoque maior que 5 unidades.

select top 2 nome_produto, preco, estoque 
from produtos
where estoque > 5 
order by preco asc

Mostre os produtos que custam entre R$ 150 e R$ 220 e que tenham estoque maior que 5.

select nome_produto, preco, estoque 
from produtos
where preco between 150 and 220 
and estoque > 5

Mostre os produtos cujo nome começa com a letra C e organize pelo preço do mais caro para o mais barato.

select  nome_produto , preco
from produtos
where nome_produto like 'c%'
order by preco desc

Mostre o nome e o telefone dos clientes que não possuem telefone cadastrado.

select nome, telefone
from clientes
where telefone is null 

Mostre os 2 produtos mais caros, que tenham estoque maior que 5 e cujo nome contenha a letra a

select top 2 nome_produto, preco, estoque 
from produtos
where estoque > 5
and nome_produto like '%a%'
order by preco desc

Mostre os produtos que NÃO são da categoria Vestido.

select nome_produto, estoque, categoria
from produtos
where categoria not in ('vestido') 

Mostre os produtos que não são Vestido e custam menos de R$ 200,00, ordenados do mais barato para o mais caro

select nome_produto, categoria, preco 
from produtos 
where categoria <> 'vestido' and preco < 200
order by preco asc 
