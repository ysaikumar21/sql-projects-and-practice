-- Window Function

SELECT dem.first_name,dem.last_name,gender,AVG(salary)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
group by dem.first_name,dem.last_name,gender;

SELECT gender,AVG(salary)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
group by gender;

SELECT dem.first_name,dem.last_name,gender,AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
;

SELECT dem.first_name,dem.last_name,gender,salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_Total
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
;

SELECT dem.employee_id,dem.first_name,dem.last_name,gender,salary,
row_number() OVER(partition by gender ORDER BY salary DESC) row_num,
RANK() OVER(partition by gender ORDER BY salary DESC) rank_num,
DENSE_RANK() OVER(partition by gender ORDER BY salary DESC) dense_rank_num
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
;