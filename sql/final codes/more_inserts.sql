INSERT INTO Cliente (id, nome, tipo, cpf_cnpj) VALUES (1, 'Empresa XYZ', 'PJ', '12345678000199');
INSERT INTO Cliente (id, nome, tipo, cpf_cnpj) VALUES (2, 'Luis Guilherme', 'PF', '12345678901');

INSERT INTO Produto (id, nome, preco) VALUES (1, 'Produto A', 100.00);
INSERT INTO Produto (id, nome, preco) VALUES (2, 'Produto B', 200.00);

INSERT INTO Pedido (id, cliente_id, data_pedido) VALUES (1, 1, '2023-10-25');
INSERT INTO Pedido (id, cliente_id, data_pedido) VALUES (2, 2, '2023-10-26');

INSERT INTO ItemPedido (id, pedido_id, produto_id, quantidade) VALUES (1, 1, 1, 2);
INSERT INTO ItemPedido (id, pedido_id, produto_id, quantidade) VALUES (2, 2, 2, 3);

INSERT INTO Pagamento (id, pedido_id, forma_pagamento, valor) VALUES (1, 1, 'Boleto', 200.00);
INSERT INTO Pagamento (id, pedido_id, forma_pagamento, valor) VALUES (2, 2, 'Cartão de Crédito', 600.00);

INSERT INTO Entrega (id, pedido_id,status,codigo_rastreio) VALUES(1 ,1,'Em trânsito','BR123456789SP');
INSERT INTO Entrega (id ,pedido_id,status,codigo_rastreio) VALUES(2 ,2,'Entregue','BR987654321RJ');
