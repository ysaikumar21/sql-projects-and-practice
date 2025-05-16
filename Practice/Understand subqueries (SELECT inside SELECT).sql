USE `leetcode_style_sql_problems`;

-- Find employees who earn more than the average salary.
SELECT emp_name,emp_salary
FROM emp_salary
WHERE emp_salary > (SELECT AVG(emp_salary)
FROM emp_salary);

-- Scalar SubQuery

ALTER TABLE emp_salary
ADD COLUMN department VARCHAR(255);

SELECT *
FROM emp_salary;

UPDATE emp_salary
SET department = CASE
    WHEN emp_id = 1 THEN 'engineer'
    WHEN emp_id = 2 THEN 'finance'
    WHEN emp_id = 3 THEN 'software'
	WHEN emp_id=4 THEN 'engineer'
    WHEN emp_id=5 THEN 'engineer'
    ELSE department
END;

-- Scalar Subquery
-- Returns a single value.
SELECT emp_name
FROM emp_salary
WHERE emp_id=(SELECT emp_id
FROM emp_salary
WHERE department='software');

-- Row Subquery
-- Returns a single row with multiple columns.

SELECT *
FROM emp_salary
WHERE (emp_id,emp_name)=(SELECT emp_id,emp_name
FROM emp_salary
WHERE department='software');

-- Table Subquery (Used with IN, EXISTS, etc.)
-- Returns a set of rows.

SELECT *
FROM emp_salary
WHERE emp_id IN (SELECT emp_id
FROM emp_salary
WHERE department='engineer');