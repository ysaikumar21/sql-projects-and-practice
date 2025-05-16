USE real_time_data_db;
SELECT *
FROM customers;

SELECT c.first_name,
o.order_id,p.product_name,o.order_date,o.quantity,p.price,(o.quantity*p.price) AS Total_cost
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
JOIN products p ON o.product_id=p.product_id;

SELECT p.product_name,p.category,o.quantity,(o.quantity*p.price) AS total_revenue
FROM products p
JOIN orders o ON p.product_id=o.product_id
WHERE o.order_date BETWEEN '2023-01-01' AND '2025-01-01'
ORDER BY total_revenue DESC
LIMIT 3;