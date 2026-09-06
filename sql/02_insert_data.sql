INSERT INTO clientes (nome, email, telefone)
VALUES
('Ana Souza', 'ana.souza@email.com', '11987654321'),
('Carlos Lima', 'carlos.lima@email.com', '21988776655'),
('Mariana Alves', 'mariana.alves@email.com', '31999887766');

INSERT INTO categorias (nome, descricao)
VALUES
('Eletrônicos', 'Produtos eletrônicos e acessórios'),
('Informática', 'Computadores, periféricos e acessórios'),
('Livros', 'Livros técnicos e literatura');

INSERT INTO produtos (nome, descricao, preco, estoque, id_categoria)
VALUES
('Notebook', 'Notebook para uso profissional', 3499.90, 10, 2),
('Mouse sem fio', 'Mouse sem fio com conexão USB', 89.90, 30, 2),
('Fone Bluetooth', 'Fone de ouvido sem fio', 199.90, 20, 1),
('Livro de SQL', 'Livro introdutório sobre bancos de dados e SQL', 79.90, 15, 3);

INSERT INTO pedidos (id_cliente, status, valor_total)
VALUES
(1, 'Pago', 3679.70),
(2, 'Pendente', 199.90),
(3, 'Enviado', 159.80);

INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario)
VALUES
(1, 1, 1, 3499.90),
(1, 2, 2, 89.90),
(2, 3, 1, 199.90),
(3, 4, 2, 79.90);

INSERT INTO pagamentos (id_pedido, forma_pagamento, status, data_pagamento, valor)
VALUES
(1, 'Cartão de crédito', 'Pago', CURRENT_TIMESTAMP, 3679.70),
(2, 'Pix', 'Pendente', NULL, 199.90),
(3, 'Boleto', 'Pago', CURRENT_TIMESTAMP, 159.80);
