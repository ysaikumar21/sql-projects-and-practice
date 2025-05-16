USE begineer_project;

-- Total Orders per Customer
SELECT customer_id,COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
ORDER BY customer_id ;

-- Average Spending per Country
SELECT c.country,AVG(o.total_amount) AS avg_spent
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
GROUP BY c.country
ORDER BY avg_spent DESC;

-- Total Sales by Product Category (Filter with HAVING)

SELECT p.category,SUM(o.quantity*p.price) AS total_sales
FROM products p
JOIN orders o ON p.product_id=o.product_id
GROUP BY p.category
HAVING total_sales>5000
ORDER BY p.category;
