# Modelagem do Banco de Dados

## Entidades

O banco de dados do e-commerce será composto inicialmente pelas seguintes entidades:

### Clientes
Armazena os dados dos clientes cadastrados na loja.

### Categorias
Armazena as categorias utilizadas para organizar os produtos.

### Produtos
Armazena os produtos disponíveis para venda.

### Pedidos
Registra as compras realizadas pelos clientes.

### Itens do Pedido
Registra quais produtos fazem parte de cada pedido, suas quantidades e valores.

### Pagamentos
Armazena as informações relacionadas ao pagamento dos pedidos.

## Relacionamentos

- Um cliente pode realizar vários pedidos.
- Um pedido pertence a um único cliente.
- Um pedido pode possuir vários itens.
- Um produto pode aparecer em vários itens de pedidos.
- Uma categoria pode possuir vários produtos.
- Cada produto pertence a uma categoria.
- Cada pedido possui um pagamento.
