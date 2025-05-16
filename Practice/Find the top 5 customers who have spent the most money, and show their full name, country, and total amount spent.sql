CREATE SCHEMA `SQL_Practice_DB` ;
USE sql_practice_db;
CREATE TABLE sql_practice_db.customers
(
customer_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
country VARCHAR(59)
);

CREATE TABLE sql_practice_db.invoices
(
invoice_id INT PRIMARY KEY,
customer_id INT,
total DECIMAL(10,2),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE sql_practice_db.invoice_items
(
invoice_id INT ,
quantity INT,
unity_price FLOAT,
FOREIGN KEY (invoice_id) REFERENCES invoices(invoice_id)
);

DESCRIBE customers;
DESCRIBE invoices;
USE sql_practice_db;
INSERT INTO customers(customer_id,first_name,last_name,country)
VALUES
(1,'Alice','Smith','USA'),
(2,'Bob','Johnson','canada'),
(3,'carol','Singh','UK'),
(4,'Dan','Lee','Australia'),
(5,'Eva','Muller','Germany');

SELECT * 
FROM customers
LIMIT 5;

SELECT *
FROM invoices;

INSERT INTO invoices(invoice_id,customer_id,total)
VALUES
(1,2,15.98),
(2,2,8.99),
(3,3,23.90),
(4,1,4.99),
(5,4,15.00),
(6,2,11.99),
(7,5,22.50),
(8,3,10.00);


INSERT INTO invoice_items(invoice_id,quantity,unity_price)
VALUES
(1,2,15.98),
(2,2,8.99),
(3,3,23.90),
(4,1,4.99),
(5,4,15.00),
(6,2,11.99),
(7,5,22.50),
(8,3,10.00);

SELECT *
FROM customers;

SELECT c.country,SUM(ii.quantity * ii.unity_price) AS total_revenue
FROM customers AS c
JOIN
	invoices i ON c.customer_id=i.customer_id
JOIN 
	invoice_items ii ON i.invoice_id=ii.invoice_id
GROUP BY
	c.country
ORDER BY
	total_revenue DESC
LIMIT 5;

SELECT *
FROM invoices;

