CREATE TABLE Cliente (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    tipo CHAR(2) CHECK (tipo IN ('PJ', 'PF')),
    cpf_cnpj VARCHAR(14)
);

CREATE TABLE Produto (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2)
);

CREATE TABLE Pedido (
    id INT PRIMARY KEY,
    cliente_id INT,
    data_pedido DATE,
    FOREIGN KEY (cliente_id) REFERENCES Cliente(id)
);

CREATE TABLE ItemPedido (
    id INT PRIMARY KEY,
    pedido_id INT,
    produto_id INT,
    quantidade INT,
    FOREIGN KEY (pedido_id) REFERENCES Pedido(id),
    FOREIGN KEY (produto_id) REFERENCES Produto(id)
);

CREATE TABLE Pagamento (
    id INT PRIMARY KEY,
    pedido_id INT,
    forma_pagamento VARCHAR(50),
    valor DECIMAL(10,2),
    FOREIGN KEY (pedido_id) REFERENCES Pedido(id)
);

CREATE TABLE Entrega (
    id INT PRIMARY KEY,
    pedido_id INT,
    status VARCHAR(20),
    codigo_rastreio VARCHAR(13),
    FOREIGN KEY (pedido_id) REFERENCES Pedido(id)
);