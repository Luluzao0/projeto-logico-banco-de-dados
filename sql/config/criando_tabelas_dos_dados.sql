CREATE TABLE Cliente (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    tipo CHAR(2) CHECK (tipo IN ('PJ', 'PF')),
    cpf_cnpj VARCHAR(14)
);

CREATE TABLE Pagamento (
    id INT PRIMARY KEY,
    cliente_id INT,
    forma_pagamento VARCHAR(50),
    FOREIGN KEY (cliente_id) REFERENCES Cliente(id)
);

CREATE TABLE Entrega (
    id INT PRIMARY KEY,
    status VARCHAR(20),
    codigo_rastreio VARCHAR(13)
);