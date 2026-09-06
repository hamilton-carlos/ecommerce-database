-- View com resumo dos pedidos
CREATE VIEW vw_resumo_pedidos AS
SELECT
    p.id_pedido,
    c.nome AS cliente,
    p.data_pedido,
    p.status,
    p.valor_total
FROM pedidos p
INNER JOIN clientes c
    ON p.id_cliente = c.id_cliente;

-- View detalhada dos itens vendidos
CREATE VIEW vw_detalhes_vendas AS
SELECT
    p.id_pedido,
    c.nome AS cliente,
    pr.nome AS produto,
    i.quantidade,
    i.preco_unitario,
    i.quantidade * i.preco_unitario AS subtotal
FROM itens_pedido i
INNER JOIN pedidos p
    ON i.id_pedido = p.id_pedido
INNER JOIN clientes c
    ON p.id_cliente = c.id_cliente
INNER JOIN produtos pr
    ON i.id_produto = pr.id_produto;
