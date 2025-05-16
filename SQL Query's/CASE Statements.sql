-- Case Statements

SELECT first_name,
last_name,
age,
CASE
		WHEN age <= 30 THEN 'Young' 
        WHEN age BETWEEN 31 AND 50 THEN 'Old'
        WHEN age >=50 THEN "On Death's Door"
END AS age_bracket
FROM employee_demographics;

-- Pay Increase and Bonus
-- < 50000 =5%
-- > 50000 =7%
-- Finance =10%

SELECT first_name,last_name,salary,
CASE
	WHEN salary<50000 THEN salary * 1.05
    WHEN salary>50000 THEN salary * 1.07
END AS new_salary,
CASE
	WHEN dept_id=6 THEN salary * 0.10
END AS Bonus
FROM employee_salary;

SELECT *
FROM employee_salary;
SELECT *
FROM parks_departments;