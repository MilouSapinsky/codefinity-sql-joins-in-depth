SELECT customers.name
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
WHERE amount > 0;