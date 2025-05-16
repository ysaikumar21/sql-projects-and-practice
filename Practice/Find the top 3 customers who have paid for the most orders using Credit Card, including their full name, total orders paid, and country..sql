-- Problem Statement: Find the top 3 customers who have paid for the most orders using Credit Card, including their full name, total orders paid, and country.

CREATE SCHEMA `real_time_data_db`;

USE real_time_data_db;

-- Customers Table
CREATE TABLE customers(
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  country VARCHAR(50),
  email VARCHAR(255)
);

-- Products Table
CREATE TABLE products(
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50),
  category VARCHAR(50),
  price INT
);

-- Orders Table
CREATE TABLE orders(
  order_id INT PRIMARY KEY,
  customer_id INT,
  product_id INT,
  quantity INT,
  order_date DATE,
  total_amount FLOAT,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Invoices Table
CREATE TABLE invoices(
  invoice_id INT PRIMARY KEY,
  order_id INT,
  invoice_date DATE,
  payment_method VARCHAR(50),
  payment_status VARCHAR(50),
  FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- Insert values into Customers table

INSERT INTO customers(customer_id,first_name,last_name,country,email)
VALUES
(1,'John','Doe','USA','john@example.com'),
(2,'Priya','Sharma','India','priya@example.com'),
(3,'Ali','Khan','UAE','ali@example.com'),
(4,'Maria','Garcia','Spain','maria@example.com'),
(5,'David','Smith','UK','david@example.com');

-- inserting into products table
INSERT INTO products (product_id, product_name, category, price) VALUES
(101, 'Laptop', 'Electronics', 750),
(102, 'Smartphone', 'Electronics', 500),
(103, 'Headphones', 'Accessories', 100),
(104, 'Coffee Maker', 'Appliances', 80),
(105, 'Book: SQL 101', 'Books', 40);

-- inserting into orders table
INSERT INTO orders (order_id, customer_id, product_id, quantity, order_date, total_amount) VALUES
(1001, 1, 101, 1, '2023-05-15', 750),
(1002, 2, 103, 2, '2023-11-20', 200),
(1003, 3, 104, 1, '2024-02-10', 80),
(1004, 1, 102, 1, '2024-07-18', 500),
(1005, 4, 105, 3, '2025-01-25', 120),
(1006, 5, 103, 1, '2025-03-03', 100);

-- Inserting values into Invoices table
INSERT INTO invoices (invoice_id, order_id, invoice_date, payment_method, payment_status) VALUES
(9001, 1001, '2024-06-01', 'Credit Card', 'Paid'),
(9002, 1002, '2024-06-03', 'PayPal', 'Paid'),
(9003, 1003, '2024-06-05', 'Credit Card', 'Failed'),
(9004, 1004, '2024-06-07', 'UPI', 'Paid'),
(9005, 1005, '2024-06-08', 'Credit Card', 'Paid'),
(9006, 1006, '2024-06-09', 'PayPal', 'Paid');

SELECT *
FROM customers;
SELECT *
FROM products;
SELECT *
FROM orders;
SELECT *
FROM invoices;

-- Filter by Region / Country
SELECT *
FROM customers
WHERE country='India';

-- category in electronic item sum values
SELECT category,SUM(price) AS total_revenue
FROM products
WHERE category='Electronics'
GROUP BY category;

SELECT *
FROM invoices;

-- FILTERING INVOICE DATE USING BETWEEN function

SELECT invoice_id,order_id,invoice_date
FROM invoices
WHERE invoice_date BETWEEN '2023-12-01' AND '2025-05-14';

-- FILTERING CURRENT DATE DIFFERENT BETWEEN specific range of days and months
SELECT *
FROM orders
WHERE order_date >= CURRENT_DATE -INTERVAL 90 DAY;
-- Get product-wise total sales value 
SELECT p.product_name,SUM(o.quantity*p.price) AS total_sales 
FROM products AS p
JOIN
	orders o ON p.product_id=o.product_id
WHERE o.order_date >='2023-01-01' AND '2025-01-01'
GROUP BY p.product_name
ORDER BY total_sales DESC;
-- country sales within range of dates
SELECT c.country,SUM(o.quantity*p.price) AS Total_sales
FROM customers c
JOIN
	orders o ON c.customer_id=o.customer_id
JOIN
	products p ON o.product_id=p.product_id
WHERE o.order_date BETWEEN '2023-01-01' AND '2025-01-01'
GROUP BY c.country;

SELECT CONCAT(c.first_name,' ',c.last_name) AS full_name,
c.country,COUNT(i.invoice_id) AS total_paid_orders
FROM customers c
JOIN 
	orders o ON c.customer_id=o.customer_id
JOIN 
	invoices i ON o.order_id=i.order_id
WHERE i.payment_method='Credit Card' AND i.payment_status='Paid'
GROUP BY c.customer_id,c.first_name,c.last_name,c.country
ORDER BY total_paid_orders DESC
LIMIT 3;

