-- Triggers and Events

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW 
BEGIN
	INSERT employee_demographics (employee_id,first_name,last_name)
    VALUES ( NEW.employee_id,NEW.first_name,NEW.last_name);
END $$
DELIMITER ;

-- EVENTS
SELECT *
FROM employee_demographics;


DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND 
DO
BEGIN
	DELETE
	FROM employee_demographics
    WHERE age > 60;
END $$
DELIMITER ;


DELIMITER $$
CREATE EVENT delete_retirees2
ON SCHEDULE EVERY 30 SECOND 
DO
BEGIN
	DELETE
	FROM employee_demographics
    WHERE age > 60;
END $$
DELIMITER ;

SHOW VARIABLES LIKE 'event%';