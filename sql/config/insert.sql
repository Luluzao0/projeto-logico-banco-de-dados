INSERT INTO Cliente (id, nome, tipo, cpf_cnpj) VALUES (1, 'Empresa XYZ', 'PJ', '12345678000199');

INSERT INTO Cliente (id, nome, tipo, cpf_cnpj) VALUES (2, 'Luis Guilherme', 'PF', '12345678901');

INSERT INTO Pagamento (id, cliente_id, forma_pagamento) VALUES (1, 1, 'Boleto');
INSERT INTO Pagamento (id, cliente_id, forma_pagamento) VALUES (2, 2, 'Cartão de Crédito');

INSERT INTO Entrega (id, status, codigo_rastreio) VALUES (1, 'Em trânsito', 'BR123456789RJ');
INSERT INTO Entrega (id, status, codigo_rastreio) VALUES (2, 'Entregue', 'BR987654321SP');
