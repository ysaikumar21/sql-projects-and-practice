USE `intermediate_project`;
CREATE TABLE employees
(
employee_id INT PRIMARY KEY,
name VARCHAR(50),
department_id INT,
salary INT,
hire_date DATE
);

INSERT INTO employees (employee_id, name, department_id, salary, hire_date) VALUES
(1, 'Alice', 10, 70000, '2020-01-10'),
(2, 'Bob', 10, 50000, '2021-03-15'),
(3, 'Carol', 20, 60000, '2019-07-20'),
(4, 'Dave', 20, 80000, '2018-11-25'),
(5, 'Eve', 10, 75000, '2022-05-30'),
(6, 'Frank', 30, 65000, '2020-06-12'),
(7, 'Grace', 20, 72000, '2021-08-05'),
(8, 'Henry', 10, 55000, '2022-02-18'),
(9, 'Ivy', 30, 90000, '2019-04-22'),
(10, 'Jack', 40, 48000, '2023-01-07'),
(11, 'Karen', 20, 85000, '2018-09-14'),
(12, 'Leo', 10, 60000, '2021-11-30'),
(13, 'Mia', 30, 77000, '2020-03-25'),
(14, 'Noah', 40, 52000, '2022-07-08'),
(15, 'Olivia', 20, 68000, '2021-05-19'),
(16, 'Peter', 10, 58000, '2023-02-11'),
(17, 'Quinn', 30, 95000, '2019-10-03'),
(18, 'Rachel', 20, 73000, '2020-12-15'),
(19, 'Sam', 40, 51000, '2022-04-27'),
(20, 'Tina', 10, 62000, '2021-09-01'),
(21, 'Uma', 30, 88000, '2020-08-09'),
(22, 'Victor', 20, 67000, '2023-03-14'),
(23, 'Wendy', 10, 54000, '2022-01-22'),
(24, 'Xander', 40, 49000, '2021-07-06'),
(25, 'Yara', 30, 82000, '2019-12-18'),
(26, 'Zack', 20, 71000, '2020-04-30'),
(27, 'Amy', 10, 59000, '2022-09-13'),
(28, 'Brian', 30, 78000, '2021-02-24'),
(29, 'Cindy', 40, 53000, '2023-04-05'),
(30, 'Dan', 20, 69000, '2020-11-17'),
(31, 'Ella', 10, 61000, '2019-05-28'),
(32, 'Finn', 30, 87000, '2022-06-10'),
(33, 'Gina', 20, 74000, '2021-10-21'),
(34, 'Hank', 40, 50000, '2020-07-02'),
(35, 'Iris', 10, 57000, '2023-05-15'),
(36, 'Jake', 30, 92000, '2019-08-26'),
(37, 'Kara', 20, 66000, '2022-03-07'),
(38, 'Liam', 10, 63000, '2021-04-18'),
(39, 'Mona', 40, 47000, '2020-09-29'),
(40, 'Nate', 30, 79000, '2023-06-11'),
(41, 'Opal', 20, 70000, '2019-01-23'),
(42, 'Paul', 10, 56000, '2022-08-04'),
(43, 'Quincy', 40, 45000, '2021-12-16'),
(44, 'Rose', 30, 84000, '2020-05-27'),
(45, 'Steve', 20, 75000, '2023-07-09'),
(46, 'Tara', 10, 64000, '2019-11-20'),
(47, 'Umar', 40, 44000, '2022-10-01'),
(48, 'Vera', 30, 91000, '2021-01-12'),
(49, 'Will', 20, 76000, '2020-02-24'),
(50, 'Xena', 10, 65000, '2023-08-06');

-- 1. Join + Window Function
-- Top 2 highest-paid employees per department, hired after department average salary

SELECT employee_id,
name,salary
FROM employees
GROUP BY employee_id
ORDER BY salary DESC
LIMIT 2;

SELECT employee_id,
name,salary,
RANK() OVER(PARTITION BY department_id ORDER BY salary DESC) AS ranking
FROM employees
GROUP BY employee_id
ORDER BY salary DESC
LIMIT 2;

-- 2. Subquery + Window Function

SELECT *
FROM(
SELECT employee_id,name,department_id,salary,
RANK() OVER(PARTITION BY department_id ORDER BY salary DESC) AS ranking_salary
FROM employees
) ranked
WHERE ranking_salary <=2;

-- 3. Join + Subquery + Window Function

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

INSERT INTO departments (department_id, department_name) VALUES
(10, 'Engineering'),
(20, 'Sales'),
(30, 'HR'),
(40, 'Marketing'),
(50, 'Finance'),
(60, 'Operations'),
(70, 'Customer Support'),
(80, 'Product Management'),
(90, 'Quality Assurance'),
(100, 'Research & Development'),
(110, 'IT Infrastructure'),
(120, 'Data Science'),
(130, 'Business Intelligence'),
(140, 'Legal'),
(150, 'Compliance'),
(160, 'Facilities'),
(170, 'Procurement'),
(180, 'Logistics'),
(190, 'Design'),
(200, 'Content Strategy'),
(210, 'Public Relations'),
(220, 'Internal Audit'),
(230, 'Training & Development'),
(240, 'Recruiting'),
(250, 'Employee Experience'),
(260, 'Payroll'),
(270, 'Tax'),
(280, 'Treasury'),
(290, 'Investor Relations'),
(300, 'Corporate Strategy'),
(310, 'Mergers & Acquisitions'),
(320, 'Partnerships'),
(330, 'Business Development'),
(340, 'Sales Operations'),
(350, 'Channel Sales'),
(360, 'Technical Writing'),
(370, 'UX Research'),
(380, 'UI/UX Design'),
(390, 'DevOps'),
(400, 'Security Engineering'),
(410, 'Frontend Development'),
(420, 'Backend Development'),
(430, 'Mobile Development'),
(440, 'Database Administration'),
(450, 'Cloud Architecture'),
(460, 'Technical Support'),
(470, 'Customer Success'),
(480, 'Implementation'),
(490, 'Professional Services'),
(500, 'Field Engineering');

--  3. Join + Subquery + Window Function
-- Find employees whose salary is above the average in their department, and show their rank.

SELECT e.employee_id,
e.name,
e.salary,
d.department_id,
RANK() OVER(PARTITION BY e.department_id ORDER BY e.salary) AS ranking_salary
FROM employees e
JOIN departments d ON e.department_id=d.department_id
WHERE e.salary >(
SELECT AVG(salary)
FROM employees
WHERE e.department_id=d.department_id);
