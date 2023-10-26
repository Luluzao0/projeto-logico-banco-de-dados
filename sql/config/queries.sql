SELECT COUNT(*) AS Pedidos FROM Entrega WHERE status = 'Entregue';

SELECT nome FROM Cliente WHERE tipo = 'PJ' AND id IN (SELECT cliente_id FROM Pagamento WHERE forma_pagamento = 'Boleto');