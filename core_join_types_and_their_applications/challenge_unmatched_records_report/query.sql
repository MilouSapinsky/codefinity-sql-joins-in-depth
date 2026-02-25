SELECT
    customers.customer_id,
    customers.name AS customer_name,
    orders.order_id,
    orders.order_date,
    CASE
        WHEN orders.order_id IS NULL THEN 'Customer without orders'
        WHEN customers.customer_id IS NULL THEN 'Order without customer'
        ELSE 'Matched'
    END AS match_status
FROM customers
FULL OUTER JOIN orders
    ON customers.customer_id = orders.customer_id
ORDER BY
    CASE
        WHEN orders.order_id IS NULL OR customers.customer_id IS NULL THEN 0
        ELSE 1
    END,
    customers.customer_id NULLS FIRST,
    orders.order_id NULLS FIRST;