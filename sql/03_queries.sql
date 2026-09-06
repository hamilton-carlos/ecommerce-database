-- Lista todos os clientes
SELECT *
FROM clientes;

-- Lista todos os produtos
SELECT *
FROM produtos;

-- Lista produtos com preço maior que 100
SELECT nome, preco
FROM produtos
WHERE preco > 100;

-- Lista produtos do mais caro para o mais barato
SELECT nome, preco
FROM produtos
ORDER BY preco DESC;

-- Lista pedidos pagos
SELECT *
FROM pedidos
WHERE status = 'Pago';

-- Mostra o nome do cliente e os pedidos realizados
SELECT
    clientes.nome,
    pedidos.id_pedido,
    pedidos.status,
    pedidos.valor_total
FROM clientes
INNER JOIN pedidos
    ON clientes.id_cliente = pedidos.id_cliente;

-- Mostra os produtos presentes em cada pedido
SELECT
    itens_pedido.id_pedido,
    produtos.nome AS produto,
    itens_pedido.quantidade,
    itens_pedido.preco_unitario
FROM itens_pedido
INNER JOIN produtos
    ON itens_pedido.id_produto = produtos.id_produto;

-- Faturamento total dos pedidos pagos
SELECT
    SUM(valor_total) AS faturamento_total
FROM pedidos
WHERE status = 'Pago';


-- Ticket médio dos pedidos
SELECT
    AVG(valor_total) AS ticket_medio
FROM pedidos;


-- Quantidade total de pedidos por status
SELECT
    status,
    COUNT(*) AS quantidade
FROM pedidos
GROUP BY status
ORDER BY quantidade DESC;


-- Produtos mais vendidos
SELECT
    produtos.nome AS produto,
    SUM(itens_pedido.quantidade) AS quantidade_vendida
FROM itens_pedido
INNER JOIN produtos
    ON itens_pedido.id_produto = produtos.id_produto
GROUP BY produtos.nome
ORDER BY quantidade_vendida DESC;


-- Valor vendido por produto
SELECT
    produtos.nome AS produto,
    SUM(itens_pedido.quantidade * itens_pedido.preco_unitario) AS total_vendido
FROM itens_pedido
INNER JOIN produtos
    ON itens_pedido.id_produto = produtos.id_produto
GROUP BY produtos.nome
ORDER BY total_vendido DESC;


-- Total gasto por cliente
SELECT
    clientes.nome AS cliente,
    SUM(pedidos.valor_total) AS total_gasto
FROM clientes
INNER JOIN pedidos
    ON clientes.id_cliente = pedidos.id_cliente
GROUP BY clientes.nome
ORDER BY total_gasto DESC;


-- Quantidade de produtos por categoria
SELECT
    categorias.nome AS categoria,
    COUNT(produtos.id_produto) AS quantidade_produtos
FROM categorias
LEFT JOIN produtos
    ON categorias.id_categoria = produtos.id_categoria
GROUP BY categorias.nome
ORDER BY quantidade_produtos DESC;
