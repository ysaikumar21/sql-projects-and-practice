
USE `sql_practice_db`;
-- Categorize Orders by Amount
SELECT invoice_id,total,
CASE
	WHEN total >20 THEN 'High'
    WHEN total BETWEEN 10 AND 20 THEN 'Medium'
    ELSE 'Low'
END AS Order_size
FROM invoices;
