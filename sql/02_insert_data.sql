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
