SELECT c.name AS client_name, SUM(oi.quantity * oi.price) AS total_order_sum
FROM Clients c
JOIN Orders o ON c.id = o.client_id
JOIN OrderItems oi ON o.id = oi.order_id
GROUP BY c.name;