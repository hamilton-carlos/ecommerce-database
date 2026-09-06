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
