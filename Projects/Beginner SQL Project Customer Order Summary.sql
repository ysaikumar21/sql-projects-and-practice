-- Objective: Create a summary report that gives insights into customer orders—who ordered, how much they spent, and how often.

-- create database 
CREATE DATABASE `begineer_project`;
-- use the database
USE begineer_project;
-- create tables
-- CREATE CUSTOMERS TABLE
CREATE TABLE customers(
customer_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email TEXT(50),
country VARCHAR(50)
);

-- INSERT INTO VALUES INTO CUSTOMERS TABLE
INSERT INTO customers (customer_id, first_name, last_name, email, country) VALUES
(1, 'Megan', 'Chang', 'greenwilliam@yahoo.com', 'Uruguay'),
(2, 'Kristen', 'Turner', 'brandy38@gmail.com', 'Finland'),
(3, 'Donald', 'Davis', 'kyleblair@hotmail.com', 'Greenland'),
(4, 'Thomas', 'Garcia', 'cheryl38@yahoo.com', 'Kenya'),
(5, 'Michelle', 'Green', 'cortezraymond@garrett.com', 'Ecuador'),
(6, 'Jennifer', 'Smith', 'jsmith@example.com', 'United States'),
(7, 'Robert', 'Johnson', 'rjohnson@mail.com', 'Canada'),
(8, 'Michael', 'Williams', 'mwilliams@domain.net', 'United Kingdom'),
(9, 'David', 'Brown', 'dbrown@email.org', 'Australia'),
(10, 'William', 'Jones', 'wjones@service.com', 'Germany'),
(11, 'Richard', 'Miller', 'rmiller@web.net', 'France'),
(12, 'Joseph', 'Wilson', 'jwilson@site.com', 'Italy'),
(13, 'Charles', 'Taylor', 'ctaylor@online.com', 'Spain'),
(14, 'Thomas', 'Anderson', 'tanderson@network.com', 'Japan'),
(15, 'Christopher', 'Thomas', 'cthomas@connect.com', 'China'),
(16, 'Daniel', 'Jackson', 'djackson@mailservice.com', 'Brazil'),
(17, 'Matthew', 'White', 'mwhite@digital.com', 'India'),
(18, 'Anthony', 'Harris', 'aharris@webmail.com', 'Russia'),
(19, 'Mark', 'Martin', 'mmartin@fastmail.com', 'South Korea'),
(20, 'Paul', 'Thompson', 'pthompson@quick.com', 'Mexico'),
(21, 'Steven', 'Garcia', 'sgarcia@speed.com', 'Indonesia'),
(22, 'Andrew', 'Martinez', 'amartinez@express.com', 'Netherlands'),
(23, 'Kenneth', 'Robinson', 'krobinson@rapid.com', 'Turkey'),
(24, 'Joshua', 'Clark', 'jclark@swift.com', 'Saudi Arabia'),
(25, 'Kevin', 'Rodriguez', 'krodriguez@instant.com', 'Switzerland'),
(26, 'Brian', 'Lewis', 'blewis@direct.com', 'Argentina'),
(27, 'George', 'Lee', 'glee@immediate.com', 'Sweden'),
(28, 'Edward', 'Walker', 'ewalker@prompt.com', 'Poland'),
(29, 'Ronald', 'Hall', 'rhall@urgent.com', 'Belgium'),
(30, 'Timothy', 'Allen', 'tallen@priority.com', 'Norway'),
(31, 'Jason', 'Young', 'jyoung@vip.com', 'Austria'),
(32, 'Jeffrey', 'Hernandez', 'jhernandez@prime.com', 'Thailand'),
(33, 'Ryan', 'King', 'rking@elite.com', 'United Arab Emirates'),
(34, 'Jacob', 'Wright', 'jwright@premium.com', 'South Africa'),
(35, 'Gary', 'Lopez', 'glopez@exclusive.com', 'Malaysia'),
(36, 'Nicholas', 'Hill', 'nhill@select.com', 'Philippines'),
(37, 'Eric', 'Scott', 'escott@preferred.com', 'Colombia'),
(38, 'Stephen', 'Green', 'sgreen@special.com', 'Chile'),
(39, 'Jonathan', 'Adams', 'jadams@reserved.com', 'Portugal'),
(40, 'Larry', 'Baker', 'lbaker@private.com', 'Denmark'),
(41, 'Justin', 'Gonzalez', 'jgonzalez@personal.com', 'Vietnam'),
(42, 'Scott', 'Nelson', 'snelson@confidential.com', 'Ireland'),
(43, 'Brandon', 'Carter', 'bcarter@secure.com', 'Egypt'),
(44, 'Benjamin', 'Mitchell', 'bmitchell@protected.com', 'Greece'),
(45, 'Samuel', 'Perez', 'sperez@guarded.com', 'Qatar'),
(46, 'Gregory', 'Roberts', 'groberts@shielded.com', 'Peru'),
(47, 'Frank', 'Turner', 'fturner@safe.com', 'New Zealand'),
(48, 'Raymond', 'Phillips', 'rphillips@trusted.com', 'Singapore'),
(49, 'Patrick', 'Campbell', 'pcampbell@verified.com', 'Ukraine'),
(50, 'Alexander', 'Parker', 'aparker@authentic.com', 'Hungary');
-- CREATE A TABLE PRODUCTS
CREATE TABLE products
(product_id INT PRIMARY KEY,
product_name VARCHAR(255),
category VARCHAR(50),
price FLOAT
);
-- INSERT INTO VALUES INTO PRODUCTS TABLE 
INSERT INTO products (product_id, product_name, category, price) VALUES
(101, 'Identify Lite', 'Appliances', 50.08),
(102, 'Step Go', 'Appliances', 410.88),
(103, 'Standard Max', 'Appliances', 364.47),
(104, 'Star Plus', 'Toys', 147.88),
(105, 'Military Plus', 'Electronics', 622.19),
(106, 'Ultra Vision', 'Electronics', 299.99),
(107, 'Power Boost', 'Electronics', 159.95),
(108, 'Smart Home', 'Appliances', 249.50),
(109, 'Play Fun', 'Toys', 34.99),
(110, 'Tech Pro', 'Electronics', 899.00),
(111, 'Kitchen Master', 'Appliances', 429.99),
(112, 'Adventure Set', 'Toys', 79.95),
(113, 'Sound Bar', 'Electronics', 199.00),
(114, 'Air Pure', 'Appliances', 149.99),
(115, 'Build It', 'Toys', 49.99),
(116, 'Fitness Tracker', 'Electronics', 129.95),
(117, 'Blender Pro', 'Appliances', 89.99),
(118, 'Robot Kit', 'Toys', 119.50),
(119, 'Wireless Earbuds', 'Electronics', 79.99),
(120, 'Vacuum Cleaner', 'Appliances', 199.00),
(121, 'Drone X', 'Electronics', 349.00),
(122, 'Coffee Maker', 'Appliances', 129.95),
(123, 'Action Figure', 'Toys', 24.99),
(124, 'Smart Watch', 'Electronics', 229.00),
(125, 'Toaster Oven', 'Appliances', 59.99),
(126, 'Board Game', 'Toys', 39.95),
(127, '4K Camera', 'Electronics', 599.00),
(128, 'Air Fryer', 'Appliances', 119.99),
(129, 'RC Car', 'Toys', 89.99),
(130, 'Tablet Pro', 'Electronics', 349.00),
(131, 'Microwave', 'Appliances', 149.95),
(132, 'Puzzle Set', 'Toys', 29.99),
(133, 'Gaming Console', 'Electronics', 499.00),
(134, 'Food Processor', 'Appliances', 179.00),
(135, 'Doll House', 'Toys', 129.99),
(136, 'Bluetooth Speaker', 'Electronics', 89.95),
(137, 'Stand Mixer', 'Appliances', 249.00),
(138, 'LEGO Set', 'Toys', 79.99),
(139, 'Laptop', 'Electronics', 999.00),
(140, 'Refrigerator', 'Appliances', 899.00),
(141, 'Science Kit', 'Toys', 59.95),
(142, 'Monitor', 'Electronics', 249.00),
(143, 'Washing Machine', 'Appliances', 599.00),
(144, 'Art Supplies', 'Toys', 44.99),
(145, 'Printer', 'Electronics', 199.00),
(146, 'Dishwasher', 'Appliances', 499.00),
(147, 'Musical Instrument', 'Toys', 149.95),
(148, 'Projector', 'Electronics', 349.00),
(149, 'Slow Cooker', 'Appliances', 49.99),
(150, 'Building Blocks', 'Toys', 34.99);
-- CREATE A TABLE ORDERS
CREATE TABLE orders
(order_id INT PRIMARY KEY,
customer_id INT,
product_id INT,
quantity INT,
order_date DATE,
total_amount FLOAT
);
-- INSERT INTO VALUES INTO ORDERS TABLE 
INSERT INTO orders (order_id, customer_id, product_id, quantity, order_date, total_amount) VALUES
(1001, 46, 117, 3, '2025-03-20', 269.97),
(1002, 34, 126, 2, '2024-10-22', 79.90),
(1003, 14, 129, 5, '2025-01-31', 449.95),
(1004, 27, 119, 3, '2023-08-15', 239.97),
(1005, 29, 116, 3, '2024-06-19', 389.85),
(1006, 12, 105, 1, '2024-11-05', 622.19),
(1007, 8, 110, 2, '2025-02-14', 1798.00),
(1008, 33, 121, 1, '2024-09-08', 349.00),
(1009, 19, 108, 1, '2023-12-25', 249.50),
(1010, 5, 115, 4, '2024-07-30', 199.96),
(1011, 22, 127, 1, '2025-04-01', 599.00),
(1012, 41, 104, 2, '2024-05-18', 295.76),
(1013, 37, 111, 1, '2023-11-11', 429.99),
(1014, 3, 106, 1, '2024-08-22', 299.99),
(1015, 28, 102, 1, '2025-01-15', 410.88),
(1016, 15, 107, 3, '2024-03-07', 479.85),
(1017, 9, 113, 2, '2023-10-31', 398.00),
(1018, 31, 120, 1, '2024-12-12', 199.00),
(1019, 7, 122, 1, '2025-02-28', 129.95),
(1020, 24, 131, 1, '2023-09-05', 149.95),
(1021, 50, 133, 1, '2024-04-16', 499.00),
(1022, 11, 136, 2, '2025-03-10', 179.90),
(1023, 38, 139, 1, '2023-07-19', 999.00),
(1024, 2, 142, 1, '2024-11-30', 249.00),
(1025, 45, 145, 1, '2025-01-05', 199.00),
(1026, 17, 148, 1, '2024-06-25', 349.00),
(1027, 39, 101, 5, '2023-12-12', 250.40),
(1028, 26, 103, 2, '2024-02-14', 728.94),
(1029, 10, 109, 3, '2025-04-05', 104.97),
(1030, 30, 112, 1, '2023-08-08', 79.95),
(1031, 21, 114, 2, '2024-10-10', 299.98),
(1032, 48, 118, 1, '2025-03-15', 119.50),
(1033, 4, 123, 4, '2023-11-01', 99.96),
(1034, 35, 125, 1, '2024-07-04', 59.99),
(1035, 16, 128, 2, '2025-02-20', 239.98),
(1036, 43, 130, 1, '2023-10-15', 349.00),
(1037, 25, 132, 3, '2024-09-09', 89.97),
(1038, 1, 134, 1, '2025-01-25', 179.00),
(1039, 42, 137, 1, '2024-05-05', 249.00),
(1040, 18, 140, 1, '2023-06-30', 899.00),
(1041, 49, 143, 1, '2024-12-24', 599.00),
(1042, 6, 146, 1, '2025-03-08', 499.00),
(1043, 23, 149, 2, '2024-08-18', 99.98),
(1044, 36, 150, 5, '2023-09-21', 174.95),
(1045, 13, 124, 1, '2024-04-05', 229.00),
(1046, 40, 135, 1, '2025-02-14', 129.99),
(1047, 32, 138, 3, '2023-07-07', 239.97),
(1048, 47, 141, 2, '2024-11-11', 119.90),
(1049, 20, 144, 4, '2025-01-01', 179.96),
(1050, 44, 147, 1, '2023-12-31', 149.95);
-- just show the tables what we are created display 3 tables of customers , products & orders
SELECT *
FROM customers;
SELECT *
FROM products;
SELECT *
FROM orders;

-- Problem solving  query below
SELECT CONCAT(c.first_name,' ',c.last_name) AS full_name,c.country,COUNT(o.order_id) AS Total_number_of_orders,
SUM(o.quantity) AS total_quantity_of_iteam_purchased,
SUM(o.total_amount) AS total_amount_spent
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
GROUP BY c.customer_id,c.first_name,c.last_name,c.country
ORDER BY total_amount_spent DESC
LIMIT 10;