USE sql_practice_db;

CREATE TABLE customer_1
(	
	customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE invoices_1
(
		invoice_id INT PRIMARY KEY,
        customer_id INT,
        total FLOAT
);

INSERT INTO customer_1(customer_id,first_name,last_name,country)
VALUES
(1,'Sai','kumar','Germany'),
(2,'Ganesh','kumar','France'),
(3,'Sai','sri','india'),
(4,'Sasi','kalyan','Germany');


INSERT INTO invoices_1(invoice_id,customer_id,total)
VALUES
	(1,1,54),
    (2,3,30),
    (3,3,50),
    (4,4,67),
    (5,5,90);
SELECT *
FROM customer_1;

SELECT *
FROM invoices_1;

-- 📝 Problem Statement: Get a list of customers from Germany or France who have made purchases above $50. Sort them by total spent, descending--

SELECT c.customer_id,
CONCAT(c.first_name,' ',c.last_name) AS Full_name,
i.total AS country_revenue
FROM customer_1 AS c
JOIN 
	invoices_1 AS i ON c.customer_id=i.customer_id
WHERE c.country IN ('Germany','France') AND i.total >50
ORDER BY country_revenue DESC;
