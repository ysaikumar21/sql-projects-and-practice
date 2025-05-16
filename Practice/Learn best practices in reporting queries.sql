-- ✅ 1. Use Clear, Descriptive Column Aliases
-- Give meaningful names to calculated fields and avoid cryptic names.

SELECT department_id,
AVG(salary) AS average_salary,
COUNT(*) AS employee_count
FROM employees
GROUP BY department_id;

-- ✅ 2. Format Queries for Readability
-- Use proper indentation, line breaks, and consistent casing.

SELECT 
	employee_id,
	name,
    salary
FROM employees
WHERE salary >90000;

-- 3. Use CTEs (WITH) for Complex Queries
-- Common Table Expressions make long queries easier to read and debug

WITH dept_avg AS (
SELECT department_id,
AVG(salary) AS avg_salary
FROM employees e 
GROUP BY department_id)
SELECT e.employee_id,
e.name,
e.salary,
da.avg_salary
FROM employees e
JOIN dept_avg da ON e.department_id=da.department_id
WHERE e.salary > da.avg_salary;

-- 4. Avoid SELECT * in Production**
-- Always specify columns to improve performance and prevent unexpected data leaks.

SELECT employee_id,
salary
FROM employees;

--  5. Use Window Functions Instead of GROUP BY When You Want Detail + Aggregate
-- Window functions allow row-level detail with group-level insight
SELECT employee_id,
name,
department_id,
salary,
AVG(salary) OVER(PARTITION BY department_id) AS dept_avg_salary
FROM employees;

-- Use CASE Statements for Conditional Buckets
-- Useful for custom categorizations in reports.

SELECT name,
salary,
CASE
	WHEN salary>=90000 THEN 'High'
    WHEN salary>=60000 THEN 'Medium'
    ELSE 'Low'
END AS salary_band
FROM employees;

-- 7. Filter After Aggregation with HAVING
-- Use HAVING when filtering on aggregates.

USE `intermediate_project`;
SELECT department_id,
COUNT(*) AS emp_count
FROM employees
GROUP BY department_id
HAVING emp_count > 2;

--  8. Watch for NULLs in Aggregates
-- COUNT(column) ignores NULLs. AVG, SUM ignore NULLs too. Use COALESCE() if needed.

ALTER TABLE employees
ADD COLUMN bonus INT DEFAULT 0;

UPDATE employees
SET bonus = salary * 0.10
WHERE salary < 60000;

SELECT *
FROM employees;

UPDATE employees
SET bonus = NULL
WHERE employee_id  IN (5,8,4) OR hire_date BETWEEN  '2023-01-01' AND '2023-04-01';

SELECT AVG(COALESCE(bonus,0)) AS avg_bonus
FROM employees;
ALTER TABLE employees
ADD COLUMN modified_bonus INT DEFAULT 0;

ALTER TABLE employees
DROP COLUMN modified_bonus;

SELECT *
FROM employees;

--  10. Comment Complex Logic
-- Leave comments to explain non-obvious logic.

WITH ranked AS (
SELECT employee_id,
department_id,
salary,
RANK() OVER(PARTITION BY department_id ORDER BY salary DESC) AS rnk
FROM employees
)
SELECT *
FROM ranked
WHERe rnk <2;