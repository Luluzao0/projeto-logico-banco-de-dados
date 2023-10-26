SELECT c.nome AS Cliente,
       COUNT(p.id) AS Pedidos
FROM Cliente c
JOIN Pedido p ON c.id = p.cliente_id
GROUP BY c.nome;

SELECT p.nome AS Produto,
       SUM(ip.quantidade) AS QuantidadeVendida
FROM Produto p
JOIN ItemPedido ip ON p.id = ip.produto_id
GROUP BY p.nome;