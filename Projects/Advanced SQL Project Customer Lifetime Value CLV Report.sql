-- 📊 Advanced SQL Project: Customer Lifetime Value (CLV) Report
-- 🗂️ Assumed Tables:
-- 1.customers — customer_id, name, join_date
-- 2.orders — order_id, customer_id, order_date, total_amount

-- 1.Total revenue per customer 

SELECT c.customer_id,CONCAT(c.first_name,' ',c.last_name) AS full_name,
SUM(o.total_amount) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
GROUP BY c.customer_id,c.first_name,c.last_name
ORDER BY total_revenue DESC;

-- Average order value

SELECT c.customer_id,c.first_name,
COUNT(o.order_id) AS total_orders,ROUND(AVG(o.total_amount),2) AS avg_order_value
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
GROUP BY c.customer_id,c.first_name,o.order_id
ORDER BY avg_order_value DESC;

-- Number of orders
SELECT c.customer_id,c.first_name,COUNT(o.order_id) AS customer_total_orders
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
GROUP BY c.customer_id,c.first_name
ORDER BY customer_total_orders DESC;

-- First and last purchase date

SELECT c.customer_id,c.first_name,c.last_name,
MIN(o.order_date) AS first_purchase_date,
MAX(o.order_date) AS last_purchase_date
FROM customers c 
JOIN orders o ON c.customer_id=o.customer_id
GROUP BY c.customer_id,c.first_name,c.last_name;
-- Customer Lifetime Duration (in Days or Months)

SELECT c.customer_id,c.first_name,c.last_name,
MIN(o.order_date) AS first_purchase_date,
MAX(o.order_date) AS last_purchase_date,
TIMESTAMPDIFF(MONTH, MIN(o.order_date), MAX(o.order_date)) AS lifetime_months,
DATEDIFF(MAX(o.order_date),MIN(o.order_date)) AS lifetime_days
FROM customers c 
JOIN orders o ON c.customer_id=o.customer_id
GROUP BY c.customer_id,c.first_name,c.last_name;

-- ✅ Full CLV SQL Query (with key metrics)

SELECT 
    c.customer_id,
    CONCAT(c.first_name,' ',c.last_name) AS full_name,
    
    -- Total number of orders
    COUNT(o.order_id) AS total_orders,
    
    -- Total revenue from the customer
    SUM(o.total_amount) AS total_revenue,
    
    -- Average order value
    ROUND(SUM(o.total_amount) / COUNT(o.order_id), 2) AS avg_order_value,
    
    -- First and last order dates
    MIN(o.order_date) AS first_purchase,
    MAX(o.order_date) AS last_purchase,
    
    -- Customer lifetime in days
    DATEDIFF(MAX(o.order_date), MIN(o.order_date)) AS customer_lifetime_days,
    
    -- Simplified CLV (same as total revenue, but shows the intent)
    SUM(o.total_amount) AS clv

FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name,c.last_name
ORDER BY clv DESC;
