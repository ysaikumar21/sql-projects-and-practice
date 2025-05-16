USE real_time_data_db;
SELECT country,COUNT(customer_id) AS total_customers
FROM customers
GROUP BY country;

SELECT country,COUNT(customer_id) AS total_customers
FROM customers
GROUP BY country
HAVING total_customers >0;

SELECT *
FROM orders o
INNER JOIN customers c ON o.customer_id=c.customer_id;

SELECT *
FROM orders o
LEFT JOIN customers c ON o.customer_id=c.customer_id;

SELECT *
FROM orders o
RIGHT JOIN customers c ON o.customer_id=c.customer_id;

SELECT *
FROM customers c
LEFT JOIN orders o ON c.customer_id=o.customer_id
UNION
SELECT *
FROM customers c
RIGHT JOIN orders o ON c.customer_id=o.customer_id