
INSERT INTO customer_1(customer_id,first_name,last_name,country)
VALUES
(9,'Ramu','Gundabathina','US'),
(6,'Adithya','Kommu','india'),
(7,'Venkatesh','kollu','Canada'),
(8,'Rama','krishna','US');

INSERT INTO invoices_1(invoice_id,customer_id,total)
VALUES
	(6,5,54),
    (7,3,30),
    (8,7,50),
    (9,4,67),
    (10,6,90);

-- 📝 Problem Statement: Find customers not from the USA or Canada, whose average invoice total is between $40 and $90, sorted alphabetically by last name.

SELECT *
FROM customer_1;

SELECT CONCAT(c.first_name,' ',c.last_name) AS full_name,
AVG(i.total) AS avg_invoice,
c.country
FROM customer_1 AS c
JOIN
	invoices_1 AS i ON c.customer_id=i.customer_id
WHERE c.country NOT IN ('US','Canada')
GROUP BY c.customer_id,c.first_name,c.last_name,c.country  
HAVING AVG(i.total) BETWEEN 40 AND 90
ORDER BY c.last_name ; 