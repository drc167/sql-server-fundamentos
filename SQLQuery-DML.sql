INSERT INTO Clientes (id_cliente, nome, cidade, idade, telefone)
VALUES
(1, 'Ana', 'Contagem', 25, '99999-1111'),
(2, 'Maria', 'Belo Horizonte', 32, '98888-2222'),
(3, 'Juliana', 'Betim', 28, '97777-3333'),
(4, 'Carla', 'Contagem', 40, NULL),
(5, 'Amanda', 'Belo Horizonte', 35, '96666-4444');


INSERT INTO Produtos (id_produto, nome_produto, categoria, preco, estoque)
VALUES
(1, 'Luna', 'Vestido', 199.99, 10),
(2, 'Taina', 'Conjunto', 219.99, 5),
(3, 'Marcela', 'Blusa', 169.99, 8),
(4, 'Luara', 'Saia', 34.99, 20),
(5, 'Vitoria', 'Vestido', 179.99, 6),
(6, 'Carmela', 'Pantalona', 139.99, 12);

INSERT INTO Pedidos (id_pedido, id_cliente, id_produto, quantidade, data_pedido)
VALUES
(1, 1, 2, 1, '2026-09-01'),
(2, 2, 1, 2, '2026-09-02'),
(3, 3, 4, 3, '2026-09-03'),
(4, 1, 6, 1, '2026-09-04'),
(5, 5, 3, 2, '2026-09-05');


select *
from clientes
where telefone is null 


SELECT nome, telefone
FROM Clientes
WHERE telefone IS NOT NULL;


