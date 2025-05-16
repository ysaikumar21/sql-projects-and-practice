USE `intermediate_project`;

-- 📊 1. Churn Analysis
-- Problem: Identify customers who haven’t placed an order in the last 6 months.

SELECT c.customer_id,
CONCAT(c.first_name,' ',c.last_name) AS full_name,
 MAX(o.order_date) AS last_order_date
 FROM customers c
 JOIN orders o ON c.customer_id=o.customer_id
 GROUP BY c.customer_id,c.first_name,c.last_name
 HAVING MAX(o.order_date) < CURDATE()-INTERVAL 6 MONTH;
 
 -- 💳 2. Conversion Rate
-- Problem: What percentage of customers who signed up placed at least one order?
SELECT ROUND(COUNT(DISTINCT o.customer_id)/COUNT(*) *100,2) AS conversion_rate
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id;
 
 -- 📈 3. Monthly Growth Trends
-- Problem: Calculate monthly total revenue for the last 12 months.

SELECT DATE_FORMAT(order_date,'%Y-%m')AS month,
SUM(total_amount) AS monthly_revenue
FROM orders
WHERE order_date >='2024-6-01'-INTERVAL 12 MONTH 
GROUP BY month 
ORDER BY month;

-- 📦 4. Product Retention
-- Problem: How many customers re-ordered the same product more than once?

SELECT customer_id
,product_id,
COUNT(*) AS times_ordered
FROM orders
GROUP BY customer_id,product_id
HAVING COUNT(*) >1;

-- 💬 5. Most Engaged Customers
-- Problem: List top 5 customers by number of orders and total amount spent.

SELECT c.customer_id,
CONCAT(c.first_name,' ',c.last_name) AS full_name,
COUNT(o.order_id) AS total_orders,
SUM(o.total_amount) AS total_spents
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
GROUP BY c.customer_id
ORDER BY total_spents desc
LIMIT 5;