CREATE DATABASE `LeetCode_Style_SQL_Problems`;
USE `leetcode_style_sql_problems`;
-- Problem Statement: Write a SQL query to combine customer and order tables to return all customers, including those who have not placed any orders.
CREATE TABLE customers(
customer_id INT PRIMARY KEY,
first_name VARCHAR(255),
last_name VARCHAR(255)
);
INSERT INTO customers (customer_id,first_name,last_name)
VALUES
(1,'sai','Kumar'),
(2,'hemanth','chowdary'),
(3,'malli','kharjunarao'),
(4,'lashman','kumar'),
(5,'ganesh','kadiyala'),
(6,'sai','sri'),
(7,'mamatha','sri');

CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
order_price FLOAT
);
INSERT INTO orders(order_id,customer_id,order_date,order_price)
VALUES
(101,1,'2025-05-14',298.76),
(102,2,'2025-05-09',546.34),
(103,4,'2023-01-8',23),
(104,5,'2024-9-7',564);

SELECT *
FROM customers c
LEFT JOIN orders o ON c.customer_id=o.customer_id;

-- Second Highest Salary
-- Concepts: LIMIT, ORDER BY, DISTINCT, SUBQUERY
-- Problem Statement: Write a SQL query to find the second highest salary from the Employee table. Ifno second highest salary exists, return null.

CREATE TABLE IF NOT EXISTS emp_salary
(emp_id INT PRIMARY KEY,
emp_name VARCHAR(255),
emp_salary INT,
experience INT);

INSERT INTO emp_salary(emp_id,emp_name,emp_salary,experience)
VALUES
(1,'sai',120000,4),
(2,'hemanth',100000,3),
(3,'malli',50000,2),
(4,'ganesh',40000,1),
(5,'shanu',110000,4);


SELECT (SELECT DISTINCT(emp_salary)
FROM emp_salary
ORDER BY emp_salary DESC
LIMIT 1 OFFSET 1) AS Second_highest_salary;
