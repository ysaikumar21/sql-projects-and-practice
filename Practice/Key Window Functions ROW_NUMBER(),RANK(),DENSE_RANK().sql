USE `sql_practice_db`;

-- ROW_NUMBER()	Assigns a unique number to each row (starting at 1).
SELECT c.first_name,c.last_name,c.country,i.total,
ROW_NUMBER() OVER(PARTITION BY c.country ORDER BY i.total) AS rank_in_country
FROM customer_1 c
JOIN invoices i ON c.customer_id=i.customer_id;

-- RANK()	Ranks rows with gaps for ties (1, 2, 2, 4).
SELECT c.first_name,c.last_name,c.country,i.total,
RANK() OVER(PARTITION BY c.country ORDER BY i.total) AS rank_in_country
FROM customer_1 c
JOIN invoices i ON c.customer_id=i.customer_id;

-- DENSE_RANK()	Ranks rows with no gaps for ties (1, 2, 2, 3).
SELECT c.first_name,c.last_name,c.country,i.total,
DENSE_RANK() OVER(PARTITION BY c.country ORDER BY i.total) AS rank_in_country
FROM customer_1 c
JOIN invoices i ON c.customer_id=i.customer_id;

-- Problem 1: Highest Spending Customer per Country
USE `begineer_project`;
SELECT full_name,country,total_spents
FROM (
SELECT CONCAT(c.first_name,' ',c.last_name) AS full_name,
c.country,
SUM(o.quantity * p.price) AS total_spents,
RANK() OVER(PARTITION BY c.country ORDER BY SUM(o.quantity * p.price) DESC) AS spending_rank 
FROM customers c 
JOIN orders o ON c.customer_id=o.customer_id
JOIN products p ON o.product_id=p.product_id
GROUP BY c.customer_id,c.first_name,c.last_name,c.country) ranked
WHERE spending_rank=1;

-- Nth Order per Customer
-- 🧠 Problem Statement:
-- Assign a row number to each order for every customer. Show customer_id, order_id, order_date, and order_number (i.e., 1st order, 2nd order, etc.).

INSERT INTO orders (order_id, customer_id, product_id, quantity, order_date, total_amount)
VALUES 
(2001, 1, 101, 1, '2024-06-01', 750.00),
(2002, 2, 103, 2, '2024-06-03', 200.00),
(2003, 3, 104, 1, '2024-06-05', 80.00),
(2004, 1, 102, 1, '2024-06-07', 500.00),
(2005, 4, 105, 3, '2024-06-08', 120.00),
(2006, 5, 103, 1, '2024-06-09', 100.00),
(2007, 2, 101, 1, '2024-06-11', 750.00),
(2008, 3, 105, 2, '2024-06-12', 80.00),
(2009, 4, 102, 1, '2024-06-13', 500.00),
(2010, 5, 104, 1, '2024-06-14', 80.00),
(2011, 1, 103, 2, '2024-06-15', 200.00),
(2012, 2, 105, 1, '2024-06-16', 40.00),
(2013, 3, 101, 1, '2024-06-17', 750.00),
(2014, 4, 104, 2, '2024-06-18', 160.00),
(2015, 5, 102, 1, '2024-06-19', 500.00);


SELECT customer_id,
order_id,
order_date,
order_number
FROM(SELECT c.customer_id AS customer_id,o.order_id AS order_id,o.order_date AS order_date,
RANK() OVER(PARTITION BY c.customer_id ORDER BY o.order_id) AS order_number
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
GROUP BY o.order_id,o.order_date
) ranks;