-- Temporary Tables

CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
favoriate_movie varchar(100)
);

SELECT *
FROM temp_table;

INSERT INTO temp_table
VALUES('sai','kumar','premalu');

SELECT *
FROM temp_table;

SELECT *
FROM employee_salary;

CREATE TEMPORARY TABLE salary_over_50k
SElect *
FROM employee_salary
WHERE salary > 50000
;

select *
FROM salary_over_50k
order by salary_over_50k.salary desc;