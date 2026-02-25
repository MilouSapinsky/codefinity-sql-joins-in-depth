SELECT customers.customer_id, 
    customers.name, 
    orders.amount
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
ORDER BY customers.customer_id, orders.order_id;