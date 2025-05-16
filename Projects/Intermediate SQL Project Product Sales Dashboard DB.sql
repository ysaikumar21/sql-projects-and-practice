-- create a database
CREATE DATABASE `intermediate_project`;
-- use database
USE intermediate_project;
-- create a tables
-- create customers table 
CREATE TABLE customers(
customer_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(255),
country VARCHAR(50)
);
INSERT INTO customers (customer_id, first_name, last_name, email, country) VALUES
(1, 'James', 'Smith', 'james.smith@example.com', 'United States'),
(2, 'Maria', 'Garcia', 'maria.garcia@example.com', 'Spain'),
(3, 'Mohammed', 'Khan', 'mohammed.khan@example.com', 'Pakistan'),
(4, 'Wei', 'Chen', 'wei.chen@example.com', 'China'),
(5, 'Olivia', 'Johnson', 'olivia.johnson@example.com', 'Canada'),
(6, 'Hiroshi', 'Tanaka', 'hiroshi.tanaka@example.com', 'Japan'),
(7, 'Sophie', 'Martin', 'sophie.martin@example.com', 'France'),
(8, 'Raj', 'Patel', 'raj.patel@example.com', 'India'),
(9, 'Emma', 'Müller', 'emma.muller@example.com', 'Germany'),
(10, 'Juan', 'Rodriguez', 'juan.rodriguez@example.com', 'Mexico'),
(11, 'Aisha', 'Ahmed', 'aisha.ahmed@example.com', 'Egypt'),
(12, 'Luca', 'Rossi', 'luca.rossi@example.com', 'Italy'),
(13, 'Yuki', 'Yamamoto', 'yuki.yamamoto@example.com', 'Japan'),
(14, 'Elena', 'Ivanova', 'elena.ivanova@example.com', 'Russia'),
(15, 'Daniel', 'Kim', 'daniel.kim@example.com', 'South Korea'),
(16, 'Fatima', 'Ali', 'fatima.ali@example.com', 'Saudi Arabia'),
(17, 'Thomas', 'Wilson', 'thomas.wilson@example.com', 'United Kingdom'),
(18, 'Anna', 'Nowak', 'anna.nowak@example.com', 'Poland'),
(19, 'Carlos', 'Silva', 'carlos.silva@example.com', 'Brazil'),
(20, 'Sarah', 'O''Connor', 'sarah.oconnor@example.com', 'Ireland'),
(21, 'David', 'Brown', 'david.brown@example.com', 'Australia'),
(22, 'Mei', 'Wong', 'mei.wong@example.com', 'Hong Kong'),
(23, 'Alejandro', 'Gonzalez', 'alejandro.gonzalez@example.com', 'Argentina'),
(24, 'Sophia', 'Papadopoulos', 'sophia.papadopoulos@example.com', 'Greece'),
(25, 'Michael', 'Andersen', 'michael.andersen@example.com', 'Denmark'),
(26, 'Isabella', 'Santos', 'isabella.santos@example.com', 'Portugal'),
(27, 'Jens', 'Johansson', 'jens.johansson@example.com', 'Sweden'),
(28, 'Ngozi', 'Eze', 'ngozi.eze@example.com', 'Nigeria'),
(29, 'Peter', 'Schmidt', 'peter.schmidt@example.com', 'Austria'),
(30, 'Linh', 'Nguyen', 'linh.nguyen@example.com', 'Vietnam'),
(31, 'Ethan', 'Taylor', 'ethan.taylor@example.com', 'New Zealand'),
(32, 'Amara', 'Diallo', 'amara.diallo@example.com', 'Senegal'),
(33, 'Mikhail', 'Petrov', 'mikhail.petrov@example.com', 'Ukraine'),
(34, 'Yara', 'Hassan', 'yara.hassan@example.com', 'Lebanon'),
(35, 'Noah', 'van den Berg', 'noah.vandenberg@example.com', 'Netherlands'),
(36, 'Zara', 'Malik', 'zara.malik@example.com', 'United Arab Emirates'),
(37, 'Mateo', 'Fernandez', 'mateo.fernandez@example.com', 'Chile'),
(38, 'Ananya', 'Sharma', 'ananya.sharma@example.com', 'Nepal'),
(39, 'Oliver', 'Kowalski', 'oliver.kowalski@example.com', 'Czech Republic'),
(40, 'Laila', 'Abdullah', 'laila.abdullah@example.com', 'Malaysia'),
(41, 'Benjamin', 'Dupont', 'benjamin.dupont@example.com', 'Belgium'),
(42, 'Sofia', 'Kovács', 'sofia.kovacs@example.com', 'Hungary'),
(43, 'William', 'Johansen', 'william.johansen@example.com', 'Norway'),
(44, 'Amina', 'Juma', 'amina.juma@example.com', 'Kenya'),
(45, 'Lucas', 'Dubois', 'lucas.dubois@example.com', 'Switzerland'),
(46, 'Chloe', 'O''Brien', 'chloe.obrien@example.com', 'South Africa'),
(47, 'Gabriel', 'Santoro', 'gabriel.santoro@example.com', 'Italy'),
(48, 'Zeynep', 'Yilmaz', 'zeynep.yilmaz@example.com', 'Turkey'),
(49, 'Henry', 'MacDonald', 'henry.macdonald@example.com', 'Scotland'),
(50, 'Eva', 'Novak', 'eva.novak@example.com', 'Slovakia');

-- create products table
CREATE TABLE products(
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
price DECIMAL(10,2)
);
INSERT INTO products (product_id, product_name, category, price) VALUES
(101, 'Wireless Bluetooth Earbuds', 'Electronics', 79.99),
(102, 'Stainless Steel Water Bottle', 'Home', 24.95),
(103, 'Organic Cotton T-Shirt', 'Clothing', 29.99),
(104, 'Smart LED TV 55"', 'Electronics', 599.00),
(105, 'Non-Stick Cooking Set', 'Kitchen', 129.95),
(106, 'Memory Foam Pillow', 'Home', 49.99),
(107, 'Fitness Tracker Watch', 'Electronics', 89.50),
(108, 'Leather Wallet', 'Accessories', 45.00),
(109, 'Electric Toothbrush', 'Health', 59.95),
(110, 'Yoga Mat', 'Fitness', 34.99),
(111, 'Portable Bluetooth Speaker', 'Electronics', 119.00),
(112, 'Ceramic Coffee Mug Set', 'Kitchen', 22.50),
(113, 'Wireless Charging Pad', 'Electronics', 29.99),
(114, 'Aromatherapy Diffuser', 'Home', 39.95),
(115, 'Stainless Steel Chef Knife', 'Kitchen', 69.99),
(116, 'Laptop Backpack', 'Accessories', 54.95),
(117, 'Air Fryer', 'Kitchen', 99.00),
(118, 'Noise Cancelling Headphones', 'Electronics', 199.00),
(119, 'Cotton Bath Towel Set', 'Home', 35.50),
(120, 'Smartphone Gimbal Stabilizer', 'Electronics', 89.95),
(121, 'Wooden Cutting Board', 'Kitchen', 32.99),
(122, 'Digital Alarm Clock', 'Home', 24.95),
(123, 'Wireless Gaming Mouse', 'Electronics', 49.99),
(124, 'Insulated Travel Mug', 'Kitchen', 19.99),
(125, 'Resistance Band Set', 'Fitness', 27.50),
(126, 'Smart Doorbell Camera', 'Electronics', 149.00),
(127, 'Bamboo Desk Organizer', 'Office', 29.95),
(128, 'Electric Kettle', 'Kitchen', 45.00),
(129, 'Wireless Keyboard', 'Electronics', 59.99),
(130, 'Essential Oil Set', 'Health', 39.99),
(131, 'Hiking Backpack', 'Outdoor', 79.95),
(132, '4K Action Camera', 'Electronics', 299.00),
(133, 'Cast Iron Skillet', 'Kitchen', 49.99),
(134, 'Blue Light Glasses', 'Health', 24.95),
(135, 'Smart Plug', 'Electronics', 19.99),
(136, 'French Press Coffee Maker', 'Kitchen', 34.50),
(137, 'Acrylic Paint Set', 'Arts', 42.99),
(138, 'Wireless Earbuds Pro', 'Electronics', 149.99),
(139, 'Vegetable Spiralizer', 'Kitchen', 22.95),
(140, 'Massage Gun', 'Fitness', 129.00),
(141, 'External SSD 1TB', 'Electronics', 119.95),
(142, 'Glass Food Storage Set', 'Kitchen', 39.99),
(143, 'Adjustable Dumbbell Set', 'Fitness', 199.00),
(144, 'E-Reader', 'Electronics', 129.99),
(145, 'Silk Pillowcase', 'Home', 49.95),
(146, 'Smart Scale', 'Health', 59.00),
(147, 'Pizza Stone', 'Kitchen', 29.99),
(148, 'Drone with Camera', 'Electronics', 349.00),
(149, 'Reusable Shopping Bags', 'Home', 15.99),
(150, 'Meal Prep Containers', 'Kitchen', 24.50);
-- create orders table
CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT,
product_id INT,
quantity INT,
order_date DATE,
total_amount DECIMAL(10,2),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);
INSERT INTO orders (order_id, customer_id, product_id, quantity, order_date, total_amount) VALUES
(1001, 5, 101, 2, '2023-01-15', 159.98),
(1002, 12, 105, 1, '2023-01-16', 129.95),
(1003, 8, 110, 3, '2023-01-18', 104.97),
(1004, 3, 118, 1, '2023-01-20', 199.00),
(1005, 19, 102, 4, '2023-01-22', 99.80),
(1006, 25, 107, 2, '2023-01-25', 179.00),
(1007, 30, 115, 1, '2023-01-28', 69.99),
(1008, 7, 125, 2, '2023-02-01', 55.00),
(1009, 14, 132, 1, '2023-02-03', 299.00),
(1010, 22, 104, 1, '2023-02-05', 599.00),
(1011, 9, 111, 2, '2023-02-08', 238.00),
(1012, 17, 120, 1, '2023-02-10', 89.95),
(1013, 28, 106, 3, '2023-02-12', 149.97),
(1014, 1, 113, 1, '2023-02-15', 29.99),
(1015, 35, 117, 1, '2023-02-18', 99.00),
(1016, 40, 123, 2, '2023-02-20', 99.98),
(1017, 13, 108, 1, '2023-02-22', 45.00),
(1018, 26, 114, 1, '2023-02-25', 39.95),
(1019, 4, 121, 1, '2023-02-28', 32.99),
(1020, 31, 127, 2, '2023-03-03', 59.90),
(1021, 16, 103, 3, '2023-03-06', 89.97),
(1022, 38, 109, 1, '2023-03-09', 59.95),
(1023, 21, 116, 1, '2023-03-12', 54.95),
(1024, 10, 124, 4, '2023-03-15', 79.96),
(1025, 29, 119, 2, '2023-03-18', 71.00),
(1026, 2, 126, 1, '2023-03-21', 149.00),
(1027, 37, 130, 1, '2023-03-24', 39.99),
(1028, 18, 135, 3, '2023-03-27', 59.97),
(1029, 33, 138, 1, '2023-03-30', 149.99),
(1030, 6, 142, 2, '2023-04-02', 79.98),
(1031, 24, 145, 1, '2023-04-05', 49.95),
(1032, 39, 148, 1, '2023-04-08', 349.00),
(1033, 11, 101, 1, '2023-04-11', 79.99),
(1034, 27, 105, 2, '2023-04-14', 259.90),
(1035, 15, 110, 1, '2023-04-17', 34.99),
(1036, 34, 118, 1, '2023-04-20', 199.00),
(1037, 23, 102, 3, '2023-04-23', 74.85),
(1038, 32, 107, 1, '2023-04-26', 89.50),
(1039, 20, 115, 1, '2023-04-29', 69.99),
(1040, 36, 125, 2, '2023-05-02', 55.00),
(1041, 41, 132, 1, '2023-05-05', 299.00),
(1042, 42, 104, 1, '2023-05-08', 599.00),
(1043, 43, 111, 1, '2023-05-11', 119.00),
(1044, 44, 120, 1, '2023-05-14', 89.95),
(1045, 45, 106, 2, '2023-05-17', 99.98),
(1046, 46, 113, 3, '2023-05-20', 89.97),
(1047, 47, 117, 1, '2023-05-23', 99.00),
(1048, 48, 123, 1, '2023-05-26', 49.99),
(1049, 49, 108, 2, '2023-05-29', 90.00),
(1050, 50, 114, 1, '2023-06-01', 39.95),
(1051, 5, 121, 1, '2023-06-04', 32.99),
(1052, 12, 127, 3, '2023-06-07', 89.85),
(1053, 8, 103, 2, '2023-06-10', 59.98),
(1054, 3, 109, 1, '2023-06-13', 59.95),
(1055, 19, 116, 2, '2023-06-16', 109.90),
(1056, 25, 124, 1, '2023-06-19', 19.99),
(1057, 30, 119, 3, '2023-06-22', 106.50),
(1058, 7, 126, 1, '2023-06-25', 149.00),
(1059, 14, 130, 2, '2023-06-28', 79.98),
(1060, 22, 135, 1, '2023-07-01', 19.99),
(1061, 9, 138, 1, '2023-07-04', 149.99),
(1062, 17, 142, 2, '2023-07-07', 79.98),
(1063, 28, 145, 1, '2023-07-10', 49.95),
(1064, 1, 148, 1, '2023-07-13', 349.00),
(1065, 35, 101, 2, '2023-07-16', 159.98),
(1066, 40, 105, 1, '2023-07-19', 129.95),
(1067, 13, 110, 3, '2023-07-22', 104.97),
(1068, 26, 118, 1, '2023-07-25', 199.00),
(1069, 4, 102, 2, '2023-07-28', 49.90),
(1070, 31, 107, 1, '2023-07-31', 89.50),
(1071, 16, 115, 1, '2023-08-03', 69.99),
(1072, 38, 125, 2, '2023-08-06', 55.00),
(1073, 21, 132, 1, '2023-08-09', 299.00),
(1074, 10, 104, 1, '2023-08-12', 599.00),
(1075, 29, 111, 2, '2023-08-15', 238.00),
(1076, 2, 120, 1, '2023-08-18', 89.95),
(1077, 37, 106, 3, '2023-08-21', 149.97),
(1078, 18, 113, 1, '2023-08-24', 29.99),
(1079, 33, 117, 1, '2023-08-27', 99.00),
(1080, 6, 123, 2, '2023-08-30', 99.98),
(1081, 24, 108, 1, '2023-09-02', 45.00),
(1082, 39, 114, 1, '2023-09-05', 39.95),
(1083, 11, 121, 1, '2023-09-08', 32.99),
(1084, 27, 127, 2, '2023-09-11', 59.90),
(1085, 15, 103, 3, '2023-09-14', 89.97),
(1086, 34, 109, 1, '2023-09-17', 59.95),
(1087, 23, 116, 1, '2023-09-20', 54.95),
(1088, 32, 124, 4, '2023-09-23', 79.96),
(1089, 20, 119, 2, '2023-09-26', 71.00),
(1090, 36, 126, 1, '2023-09-29', 149.00),
(1091, 41, 130, 1, '2023-10-02', 39.99),
(1092, 42, 135, 3, '2023-10-05', 59.97),
(1093, 43, 138, 1, '2023-10-08', 149.99),
(1094, 44, 142, 2, '2023-10-11', 79.98),
(1095, 45, 145, 1, '2023-10-14', 49.95),
(1096, 46, 148, 1, '2023-10-17', 349.00),
(1097, 47, 101, 1, '2023-10-20', 79.99),
(1098, 48, 105, 2, '2023-10-23', 259.90),
(1099, 49, 110, 1, '2023-10-26', 34.99),
(1100, 50, 118, 1, '2023-10-29', 199.00);

-- create invoices table
CREATE TABLE invoices(
invoice_id INT PRIMARY KEY,
order_id INT,
invoice_date DATE,
payment_method VARCHAR(50),
payment_status VARCHAR(50),
FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

INSERT INTO invoices (invoice_id, order_id, invoice_date, payment_method, payment_status) VALUES
(5001, 1001, '2023-01-15', 'Credit Card', 'Paid'),
(5002, 1002, '2023-01-16', 'PayPal', 'Paid'),
(5003, 1003, '2023-01-18', 'Credit Card', 'Paid'),
(5004, 1004, '2023-01-20', 'Bank Transfer', 'Paid'),
(5005, 1005, '2023-01-22', 'Credit Card', 'Paid'),
(5006, 1006, '2023-01-25', 'PayPal', 'Paid'),
(5007, 1007, '2023-01-28', 'Credit Card', 'Paid'),
(5008, 1008, '2023-02-01', 'Debit Card', 'Paid'),
(5009, 1009, '2023-02-03', 'Credit Card', 'Paid'),
(5010, 1010, '2023-02-05', 'PayPal', 'Paid'),
(5011, 1011, '2023-02-08', 'Credit Card', 'Paid'),
(5012, 1012, '2023-02-10', 'Bank Transfer', 'Paid'),
(5013, 1013, '2023-02-12', 'Credit Card', 'Paid'),
(5014, 1014, '2023-02-15', 'Debit Card', 'Paid'),
(5015, 1015, '2023-02-18', 'Credit Card', 'Paid'),
(5016, 1016, '2023-02-20', 'PayPal', 'Paid'),
(5017, 1017, '2023-02-22', 'Credit Card', 'Paid'),
(5018, 1018, '2023-02-25', 'Bank Transfer', 'Paid'),
(5019, 1019, '2023-02-28', 'Credit Card', 'Paid'),
(5020, 1020, '2023-03-03', 'Debit Card', 'Paid'),
(5021, 1021, '2023-03-06', 'Credit Card', 'Paid'),
(5022, 1022, '2023-03-09', 'PayPal', 'Paid'),
(5023, 1023, '2023-03-12', 'Credit Card', 'Paid'),
(5024, 1024, '2023-03-15', 'Bank Transfer', 'Paid'),
(5025, 1025, '2023-03-18', 'Credit Card', 'Paid'),
(5026, 1026, '2023-03-21', 'Debit Card', 'Paid'),
(5027, 1027, '2023-03-24', 'Credit Card', 'Paid'),
(5028, 1028, '2023-03-27', 'PayPal', 'Paid'),
(5029, 1029, '2023-03-30', 'Credit Card', 'Paid'),
(5030, 1030, '2023-04-02', 'Bank Transfer', 'Paid'),
(5031, 1031, '2023-04-05', 'Credit Card', 'Paid'),
(5032, 1032, '2023-04-08', 'Debit Card', 'Paid'),
(5033, 1033, '2023-04-11', 'Credit Card', 'Paid'),
(5034, 1034, '2023-04-14', 'PayPal', 'Paid'),
(5035, 1035, '2023-04-17', 'Credit Card', 'Paid'),
(5036, 1036, '2023-04-20', 'Bank Transfer', 'Paid'),
(5037, 1037, '2023-04-23', 'Credit Card', 'Paid'),
(5038, 1038, '2023-04-26', 'Debit Card', 'Paid'),
(5039, 1039, '2023-04-29', 'Credit Card', 'Paid'),
(5040, 1040, '2023-05-02', 'PayPal', 'Paid'),
(5041, 1041, '2023-05-05', 'Credit Card', 'Paid'),
(5042, 1042, '2023-05-08', 'Bank Transfer', 'Paid'),
(5043, 1043, '2023-05-11', 'Credit Card', 'Paid'),
(5044, 1044, '2023-05-14', 'Debit Card', 'Paid'),
(5045, 1045, '2023-05-17', 'Credit Card', 'Paid'),
(5046, 1046, '2023-05-20', 'PayPal', 'Paid'),
(5047, 1047, '2023-05-23', 'Credit Card', 'Paid'),
(5048, 1048, '2023-05-26', 'Bank Transfer', 'Paid'),
(5049, 1049, '2023-05-29', 'Credit Card', 'Paid'),
(5050, 1050, '2023-06-01', 'Debit Card', 'Paid'),
(5051, 1051, '2023-06-04', 'Credit Card', 'Paid'),
(5052, 1052, '2023-06-07', 'PayPal', 'Paid'),
(5053, 1053, '2023-06-10', 'Credit Card', 'Paid'),
(5054, 1054, '2023-06-13', 'Bank Transfer', 'Paid'),
(5055, 1055, '2023-06-16', 'Credit Card', 'Paid'),
(5056, 1056, '2023-06-19', 'Debit Card', 'Paid'),
(5057, 1057, '2023-06-22', 'Credit Card', 'Paid'),
(5058, 1058, '2023-06-25', 'PayPal', 'Paid'),
(5059, 1059, '2023-06-28', 'Credit Card', 'Paid'),
(5060, 1060, '2023-07-01', 'Bank Transfer', 'Paid'),
(5061, 1061, '2023-07-04', 'Credit Card', 'Paid'),
(5062, 1062, '2023-07-07', 'Debit Card', 'Paid'),
(5063, 1063, '2023-07-10', 'Credit Card', 'Paid'),
(5064, 1064, '2023-07-13', 'PayPal', 'Paid'),
(5065, 1065, '2023-07-16', 'Credit Card', 'Paid'),
(5066, 1066, '2023-07-19', 'Bank Transfer', 'Paid'),
(5067, 1067, '2023-07-22', 'Credit Card', 'Paid'),
(5068, 1068, '2023-07-25', 'Debit Card', 'Paid'),
(5069, 1069, '2023-07-28', 'Credit Card', 'Paid'),
(5070, 1070, '2023-07-31', 'PayPal', 'Paid'),
(5071, 1071, '2023-08-03', 'Credit Card', 'Paid'),
(5072, 1072, '2023-08-06', 'Bank Transfer', 'Paid'),
(5073, 1073, '2023-08-09', 'Credit Card', 'Paid'),
(5074, 1074, '2023-08-12', 'Debit Card', 'Paid'),
(5075, 1075, '2023-08-15', 'Credit Card', 'Paid'),
(5076, 1076, '2023-08-18', 'PayPal', 'Paid'),
(5077, 1077, '2023-08-21', 'Credit Card', 'Paid'),
(5078, 1078, '2023-08-24', 'Bank Transfer', 'Paid'),
(5079, 1079, '2023-08-27', 'Credit Card', 'Paid'),
(5080, 1080, '2023-08-30', 'Debit Card', 'Paid'),
(5081, 1081, '2023-09-02', 'Credit Card', 'Paid'),
(5082, 1082, '2023-09-05', 'PayPal', 'Paid'),
(5083, 1083, '2023-09-08', 'Credit Card', 'Paid'),
(5084, 1084, '2023-09-11', 'Bank Transfer', 'Paid'),
(5085, 1085, '2023-09-14', 'Credit Card', 'Paid'),
(5086, 1086, '2023-09-17', 'Debit Card', 'Paid'),
(5087, 1087, '2023-09-20', 'Credit Card', 'Paid'),
(5088, 1088, '2023-09-23', 'PayPal', 'Paid'),
(5089, 1089, '2023-09-26', 'Credit Card', 'Paid'),
(5090, 1090, '2023-09-29', 'Bank Transfer', 'Paid'),
(5091, 1091, '2023-10-02', 'Credit Card', 'Paid'),
(5092, 1092, '2023-10-05', 'Debit Card', 'Paid'),
(5093, 1093, '2023-10-08', 'Credit Card', 'Paid'),
(5094, 1094, '2023-10-11', 'PayPal', 'Paid'),
(5095, 1095, '2023-10-14', 'Credit Card', 'Paid'),
(5096, 1096, '2023-10-17', 'Bank Transfer', 'Paid'),
(5097, 1097, '2023-10-20', 'Credit Card', 'Paid'),
(5098, 1098, '2023-10-23', 'Debit Card', 'Paid'),
(5099, 1099, '2023-10-26', 'Credit Card', 'Paid'),
(5100, 1100, '2023-10-29', 'PayPal', 'Paid'),
(5101, 1001, '2023-01-16', 'Credit Card', 'Failed'),
(5102, 1005, '2023-01-23', 'PayPal', 'Failed'),
(5103, 1012, '2023-02-11', 'Debit Card', 'Failed'),
(5104, 1018, '2023-02-26', 'Credit Card', 'Failed'),
(5105, 1024, '2023-03-16', 'Bank Transfer', 'Failed'),
(5106, 1031, '2023-04-06', 'Credit Card', 'Failed'),
(5107, 1037, '2023-04-24', 'PayPal', 'Failed'),
(5108, 1043, '2023-05-12', 'Debit Card', 'Failed'),
(5109, 1049, '2023-05-30', 'Credit Card', 'Failed'),
(5110, 1055, '2023-06-17', 'Bank Transfer', 'Failed'),
(5111, 1061, '2023-07-05', 'Credit Card', 'Failed'),
(5112, 1067, '2023-07-23', 'PayPal', 'Failed'),
(5113, 1073, '2023-08-10', 'Debit Card', 'Failed'),
(5114, 1079, '2023-08-28', 'Credit Card', 'Failed'),
(5115, 1085, '2023-09-15', 'Bank Transfer', 'Failed'),
(5116, 1091, '2023-10-03', 'Credit Card', 'Failed'),
(5117, 1097, '2023-10-21', 'PayPal', 'Failed'),
(5118, 1008, '2023-02-02', 'Debit Card', 'Failed'),
(5119, 1020, '2023-03-04', 'Credit Card', 'Failed'),
(5120, 1036, '2023-04-21', 'Bank Transfer', 'Failed');
-- display tables customers,products,orders,invoices
SELECT *
FROM customers;
SELECT *
FROM products;
SELECT *
FROM orders;
SELECT *
FROM invoices;

-- 1.🏆 Top 5 Products by Total Sales
SELECT p.product_name,
p.category,
SUM(o.quantity) AS total_quantity_sold,
p.price AS price_product,
SUM(o.quantity*p.price) AS total_sales
FROM orders o
JOIN products p ON o.product_id=p.product_id
GROUP BY p.product_id,p.product_name,p.category
ORDER BY total_sales DESC
LIMIT 5;

-- 2.🌍 Sales by Country
SELECT c.country,
SUM(o.quantity*p.price) AS total_sales
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
JOIN products p ON o.product_id=p.product_id
GROUP BY c.country
ORDER BY total_sales DESC;

-- 3.📅 Monthly Revenue Trends

SELECT DATE_FORMAT(o.order_date,'%Y-%m')AS month,
SUM(o.quantity) AS quantity_sales_month,SUM(o.quantity*p.price) AS total_sales
FROM orders o
JOIN products p ON o.product_id=p.product_id
GROUP BY month
ORDER BY month ;

-- 4.💳 Total Paid vs. Unpaid Invoices
SELECT DATE_FORMAT(i.invoice_date,'%Y-%m')AS month,i.payment_status AS payment_status,
SUM(o.quantity*p.price) AS total_amount
FROM invoices i 
JOIN orders o ON i.order_id=o.order_id
JOIN products p ON o.product_id=p.product_id
GROUP BY month,payment_status
ORDER BY month,payment_status;

-- 5.🔄 Most Popular Payment Method

SELECT payment_method,COUNT(*)AS usage_count
FROM invoices
GROUP BY payment_method
ORDER BY usage_count DESC;

-- 6.🧑‍💼 Top 3 Customers by Spend
SELECT CONCAT(c.first_name,' ',c.last_name) AS full_name,
c.country AS country,
SUM(o.quantity*p.price) AS total_spents
FROM customers c 
JOIN orders o ON c.customer_id=o.customer_id
JOIN products p ON o.product_id=p.product_id
JOIN invoices i ON o.order_id=i.order_id
GROUP BY full_name,country
ORDER BY total_spents DESC
LIMIT 3;

-- 7.📦 Total Orders per Product Category 

SELECT p.category AS product_category,
SUM(o.order_id)AS total_orders
FROM  products p
JOIN orders o ON p.product_id=o.product_id
GROUP BY product_category 
ORDER BY total_orders DESC;

-- 8.⏳ Orders in Last 30 Days
SELECT COUNT(*) AS total_orders_last_30days
FROM orders 
WHERE 
order_date >='2023-10-01' - INTERVAL 30 DAY;

-- 9.❌ Failed Payments Report
SELECT payment_status,
COUNT(order_id) AS total_orders
FROM invoices
GROUP BY payment_status
ORDER BY total_orders DESC;

-- 10.📈 Average Order Value
SELECT ROUND(SUM(total_amount)/COUNT(order_id),2) AS Average_Order_Value
FROM orders;

SELECT ROUND(AVG(total_amount),2) AS Average_Order_Value
FROM orders;