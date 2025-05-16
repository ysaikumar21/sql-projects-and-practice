-- Simple CTE
-- 🧠 Problem: Find customers who have placed more than 2 orders.
USE `begineer_project`;
SELECT *
FROM orders;

WITH customer_orders AS (
SELECT customer_id,COUNT(*) AS order_count
FROM orders
GROUP BY customer_id
)
SELECT c.customer_id,c.first_name,c.last_name,co.order_count
FROM customer_orders co
JOIN customers c ON co.customer_id=c.customer_id
WHERE co.order_count > 2;

-- 2: Recursive CTE (Hierarchy)
-- 🧠 Assume: You have an employees table

CREATE TABLE employee(
emp_id INT,
name VARCHAR(255),
manager_id INT
);

INSERT INTO employee (emp_id, name, manager_id) VALUES
(1, 'Alice', NULL),
(2, 'Bob', 1),
(3, 'Carol', 1),
(4, 'David', 2),
(5, 'Emma', 2),
(6, 'Frank', NULL),
(7, 'Grace', 3),
(8, 'Henry', 4),
(9, 'Irene', 4),
(10, 'Jack', NULL),
(11, 'Kelly', 5),
(12, 'Leo', 6),
(13, 'Maria', 6),
(14, 'Noah', NULL),
(15, 'Olivia', 7),
(16, 'Paul', 8),
(17, 'Quinn', 8),
(18, 'Rachel', 9),
(19, 'Steve', 9),
(20, 'Tina', 10);

WITH RECURSIVE employee_hierarchy AS (
-- Anchor
SELECT emp_id,name,manager_id,1 AS Level
FROM employee
WHERE manager_id IS NULL

UNION ALL
-- Recursive part
SELECT e.emp_id,e.name,e.manager_id,eh.Level +1
FROM employee e
JOIN employee_hierarchy eh ON e.manager_id=eh.emp_id
)
SELECT *
FROM employee_hierarchy;