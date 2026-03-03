SELECT orders.order_id, orders.order_date, orders.amount,
customers.name AS customer_name
FROM customers
RIGHT JOIN orders ON customers.customer_id = orders.customer_id;

