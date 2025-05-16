USE `sql_practice_db`;
CREATE TABLE customers_set(
customer_id INT PRIMARY KEY,
first_name VARCHAR(255),
last_name VARCHAR(255),
email TEXT(255)
);
INSERT INTO customers_set (customer_id, first_name, last_name, email) VALUES
(1, 'Alice', 'Smith', 'alice@example.com'),
(2, 'Bob', 'Johnson', 'bob@example.com'),
(3, 'Charlie', 'Lee', 'charlie@example.com'),
(4, 'David', 'Brown', 'david@example.com'),
(5, 'Emma', 'Wilson', 'emma@example.com'),
(6, 'Frank', 'Davis', 'frank@example.com'),
(7, 'Grace', 'Miller', 'grace@example.com'),
(8, 'Henry', 'Wilson', 'henry@example.com'),
(9, 'Isabella', 'Moore', 'isabella@example.com'),
(10, 'Jack', 'Taylor', 'jack@example.com'),
(11, 'Katherine', 'Anderson', 'katherine@example.com'),
(12, 'Liam', 'Thomas', 'liam@example.com'),
(13, 'Mia', 'Jackson', 'mia@example.com'),
(14, 'Noah', 'White', 'noah@example.com'),
(15, 'Olivia', 'Harris', 'olivia@example.com'),
(16, 'Peter', 'Martin', 'peter@example.com'),
(17, 'Quinn', 'Thompson', 'quinn@example.com'),
(18, 'Rachel', 'Garcia', 'rachel@example.com'),
(19, 'Samuel', 'Martinez', 'samuel@example.com'),
(20, 'Taylor', 'Robinson', 'taylor@example.com'),
(21, 'Uma', 'Clark', 'uma@example.com'),
(22, 'Victor', 'Rodriguez', 'victor@example.com'),
(23, 'Wendy', 'Lewis', 'wendy@example.com'),
(24, 'Xavier', 'Lee', 'xavier@example.com'),
(25, 'Yara', 'Walker', 'yara@example.com'),
(26, 'Zach', 'Hall', 'zach@example.com'),
(27, 'Ava', 'Allen', 'ava@example.com'),
(28, 'Benjamin', 'Young', 'benjamin@example.com'),
(29, 'Chloe', 'Hernandez', 'chloe@example.com'),
(30, 'Daniel', 'King', 'daniel@example.com'),
(31, 'Ella', 'Wright', 'ella@example.com'),
(32, 'Finn', 'Lopez', 'finn@example.com'),
(33, 'Gabriella', 'Hill', 'gabriella@example.com'),
(34, 'Hudson', 'Scott', 'hudson@example.com'),
(35, 'Ivy', 'Green', 'ivy@example.com'),
(36, 'Jacob', 'Adams', 'jacob@example.com'),
(37, 'Lily', 'Baker', 'lily@example.com'),
(38, 'Mason', 'Gonzalez', 'mason@example.com'),
(39, 'Nora', 'Nelson', 'nora@example.com'),
(40, 'Owen', 'Carter', 'owen@example.com'),
(41, 'Penelope', 'Mitchell', 'penelope@example.com'),
(42, 'Quentin', 'Perez', 'quentin@example.com'),
(43, 'Ruby', 'Roberts', 'ruby@example.com'),
(44, 'Sebastian', 'Turner', 'sebastian@example.com'),
(45, 'Tessa', 'Phillips', 'tessa@example.com'),
(46, 'Uriah', 'Campbell', 'uriah@example.com'),
(47, 'Violet', 'Parker', 'violet@example.com'),
(48, 'Wyatt', 'Evans', 'wyatt@example.com'),
(49, 'Ximena', 'Edwards', 'ximena@example.com'),
(50, 'Yosef', 'Collins', 'yosef@example.com');

CREATE TABLE subscribers(
subscriber_id INT ,full_name VARCHAR(255),email TEXT(255)
);

INSERT INTO subscribers (subscriber_id, full_name, email) VALUES
(1, 'Alice Smith', 'alice@example.com'),
(2, 'Bob Johnson', 'bob@example.com'),
(3, 'Fiona Grant', 'fiona@example.com'),
(4, 'Harry King', 'harry@example.com'),
(5, 'Zoe Lane', 'zoe@example.com'),
(6, 'Michael Chen', 'michael@example.com'),
(7, 'Sarah Williams', 'sarah@example.com'),
(8, 'David Kim', 'david@example.com'),
(9, 'Emma Davis', 'emma@example.com'),
(10, 'James Wilson', 'james@example.com'),
(11, 'Olivia Brown', 'olivia@example.com'),
(12, 'Daniel Miller', 'daniel@example.com'),
(13, 'Sophia Garcia', 'sophia@example.com'),
(14, 'Matthew Taylor', 'matthew@example.com'),
(15, 'Ava Martinez', 'ava@example.com'),
(16, 'Christopher Lee', 'christopher@example.com'),
(17, 'Isabella Clark', 'isabella@example.com'),
(18, 'Andrew Rodriguez', 'andrew@example.com'),
(19, 'Mia Lewis', 'mia@example.com'),
(20, 'Joshua Walker', 'joshua@example.com'),
(21, 'Charlotte Hall', 'charlotte@example.com'),
(22, 'Ethan Young', 'ethan@example.com'),
(23, 'Amelia Allen', 'amelia@example.com'),
(24, 'Alexander Hernandez', 'alexander@example.com'),
(25, 'Emily King', 'emily@example.com'),
(26, 'Benjamin Wright', 'benjamin@example.com'),
(27, 'Abigail Lopez', 'abigail@example.com'),
(28, 'Samuel Hill', 'samuel@example.com'),
(29, 'Elizabeth Scott', 'elizabeth@example.com'),
(30, 'Ryan Green', 'ryan@example.com'),
(31, 'Harper Adams', 'harper@example.com'),
(32, 'Nathan Baker', 'nathan@example.com'),
(33, 'Evelyn Gonzalez', 'evelyn@example.com'),
(34, 'Christian Nelson', 'christian@example.com'),
(35, 'Victoria Carter', 'victoria@example.com'),
(36, 'Liam Mitchell', 'liam@example.com'),
(37, 'Chloe Perez', 'chloe@example.com'),
(38, 'Dylan Roberts', 'dylan@example.com'),
(39, 'Grace Turner', 'grace@example.com'),
(40, 'Caleb Phillips', 'caleb@example.com'),
(41, 'Lily Campbell', 'lily@example.com'),
(42, 'Logan Parker', 'logan@example.com'),
(43, 'Zoey Evans', 'zoey@example.com'),
(44, 'Gabriel Edwards', 'gabriel@example.com'),
(45, 'Madison Collins', 'madison@example.com'),
(46, 'Julian Stewart', 'julian@example.com'),
(47, 'Scarlett Sanchez', 'scarlett@example.com'),
(48, 'Isaiah Morris', 'isaiah@example.com'),
(49, 'Hannah Rogers', 'hannah@example.com'),
(50, 'Leah Reed', 'leah@example.com');

-- without duplicates
SELECT email
FROM customers_set
UNION
SELECT email
FROM subscribers;
-- with duplicates 
SELECT email
FROM customers_set
UNION ALL
SELECT email
FROM subscribers;
-- Intersect set operator
SELECT email
FROM customers_set
WHERE email IN (SELECT email
FROM subscribers);

-- Excepts

SELECT email 
FROM customers_set
WHERE email NOT IN (SELECT email 
FROM subscribers);