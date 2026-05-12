-- Show order details with customer name, product name, and total price
-- PART 2: INSERT DATA 


-- Insert into customers
INSERT INTO customers VALUES
(1, 'Alice', 'New York', '2024-01-10'),
(2, 'Bob', 'Boston', '2024-02-15'),
(3, 'Charlie', 'New York', '2024-03-20'),
(4, 'Diana', 'Chicago', '2024-01-25');
INSERT INTO customers (customer_id, name, city, signup_date) VALUES
(5, 'Ethan Williams', 'Los Angeles', '2024-01-05'),
(6, 'Sophia Brown', 'Houston', '2024-01-12'),
(7, 'Jackson Jones', 'Phoenix', '2024-01-18'),
(8, 'Olivia Garcia', 'Philadelphia', '2024-01-22'),
(9, 'Liam Martinez', 'San Antonio', '2024-01-28'),
(10, 'Emma Rodriguez', 'San Diego', '2024-02-01'),
(11, 'Noah Davis', 'Dallas', '2024-02-05'),
(12, 'Ava Miller', 'Austin', '2024-02-09'),
(13, 'Logan Wilson', 'Jacksonville', '2024-02-14'),
(14, 'Mia Moore', 'Fort Worth', '2024-02-18'),
(15, 'Lucas Taylor', 'Columbus', '2024-02-22'),
(16, 'Isabella Anderson', 'Charlotte', '2024-02-26'),
(17, 'Benjamin Thomas', 'Detroit', '2024-03-01'),
(18, 'Charlotte Jackson', 'El Paso', '2024-03-05'),
(19, 'Henry White', 'Seattle', '2024-03-08'),
(20, 'Amelia Harris', 'Denver', '2024-03-12'),
(21, 'Alexander Martin', 'Washington', '2024-03-15'),
(22, 'Evelyn Thompson', 'Memphis', '2024-03-18'),
(23, 'Michael Garcia', 'Nashville', '2024-03-22'),
(24, 'Sofia Martinez', 'Portland', '2024-03-25'),
(25, 'Daniel Robinson', 'Oklahoma City', '2024-03-28'),
(26, 'Victoria Clark', 'Las Vegas', '2024-04-01'),
(27, 'Matthew Rodriguez', 'Louisville', '2024-04-03'),
(28, 'Madison Lewis', 'Baltimore', '2024-04-06'),
(29, 'David Lee', 'Milwaukee', '2024-04-08'),
(30, 'Elizabeth Walker', 'Albuquerque', '2024-04-10'),
(31, 'Joseph Hall', 'Tucson', '2024-04-12'),
(32, 'Abigail Allen', 'Fresno', '2024-04-15'),
(33, 'Samuel Young', 'Sacramento', '2024-04-17'),
(34, 'Grace Hernandez', 'Kansas City', '2024-04-19'),
(35, 'Christopher King', 'Mesa', '2024-04-21'),
(36, 'Chloe Wright', 'Atlanta', '2024-04-23'),
(37, 'Andrew Lopez', 'Omaha', '2024-04-25'),
(38, 'Ella Hill', 'Raleigh', '2024-04-27'),
(39, 'Joshua Scott', 'Colorado Springs', '2024-04-29'),
(40, 'Natalie Green', 'Virginia Beach', '2024-05-01'),
(41, 'Ryan Adams', 'Long Beach', '2024-05-03'),
(42, 'Lily Baker', 'Miami', '2024-05-05'),
(43, 'Nathan Gonzalez', 'Oakland', '2024-05-07'),
(44, 'Hannah Nelson', 'Minneapolis', '2024-05-09'),
(45, 'Christian Carter', 'Tulsa', '2024-05-11'),
(46, 'Addison Mitchell', 'Arlington', '2024-05-13'),
(47, 'Dylan Perez', 'New Orleans', '2024-05-15'),
(48, 'Aubrey Roberts', 'Wichita', '2024-05-17'),
(49, 'Gabriel Turner', 'Bakersfield', '2024-05-19'),
(50, 'Zoey Phillips', 'Cleveland', '2024-05-21'),
(51, 'Caleb Campbell', 'Tampa', '2024-05-23'),
(52, 'Penelope Parker', 'Santa Ana', '2024-05-25'),
(53, 'Isaac Evans', 'Anaheim', '2024-05-27'),
(54, 'Lillian Edwards', 'Honolulu', '2024-05-29'),
(55, 'Eli Collins', 'Riverside', '2024-06-01'),
(56, 'Layla Stewart', 'Corpus Christi', '2024-06-03'),
(57, 'Jonathan Sanchez', 'Lexington', '2024-06-05'),
(58, 'Aria Morris', 'Stockton', '2024-06-07'),
(59, 'Nathaniel Rogers', 'St. Paul', '2024-06-09'),
(60, 'Savannah Reed', 'Cincinnati', '2024-06-11'),
(61, 'Luke Cook', 'St. Louis', '2024-06-13'),
(62, 'Brooklyn Morgan', 'Pittsburgh', '2024-06-15'),
(63, 'Julian Bell', 'Greensboro', '2024-06-17'),
(64, 'Eleanor Murphy', 'Lincoln', '2024-06-19'),
(65, 'Jeremiah Bailey', 'Orlando', '2024-06-21'),
(66, 'Claire Rivera', 'Plano', '2024-06-23'),
(67, 'Isaiah Cooper', 'Durham', '2024-06-25'),
(68, 'Caroline Richardson', 'Chandler', '2024-06-27'),
(69, 'Levi Cox', 'Chula Vista', '2024-06-29'),
(70, 'Violet Howard', 'Toledo', '2024-07-01'),
(71, 'Evan Ward', 'Lubbock', '2024-07-03'),
(72, 'Nora Torres', 'Madison', '2024-07-05'),
(73, 'Wyatt Peterson', 'Laredo', '2024-07-07'),
(74, 'Hazel Gray', 'Irving', '2024-07-09'),
(75, 'Jack Ramirez', 'Winston-Salem', '2024-07-11'),
(76, 'Lucy James', 'Chesapeake', '2024-07-13'),
(77, 'Luke Watson', 'Garland', '2024-07-15'),
(78, 'Anna Brooks', 'Hialeah', '2024-07-17'),
(79, 'Owen Kelly', 'Scottsdale', '2024-07-19'),
(80, 'Stella Sanders', 'Newark', '2024-07-21'),
(81, 'Connor Price', 'Baton Rouge', '2024-07-23'),
(82, 'Ellie Bennett', 'Richmond', '2024-07-25'),
(83, 'Sebastian Wood', 'Boise', '2024-07-27'),
(84, 'Samantha Barnes', 'Spokane', '2024-07-29'),
(85, 'Gavin Ross', 'Des Moines', '2024-08-01'),
(86, 'Mila Henderson', 'Modesto', '2024-08-03'),
(87, 'Carter Coleman', 'Fayetteville', '2024-08-05'),
(88, 'Paisley Jenkins', 'Tacoma', '2024-08-07'),
(89, 'Jayden Perry', 'Fontana', '2024-08-09'),
(90, 'Eva Powell', 'Santa Clarita', '2024-08-11'),
(91, 'Hudson Long', 'San Bernardino', '2024-08-13'),
(92, 'Scarlett Patterson', 'Huntington Beach', '2024-08-15'),
(93, 'Grayson Hughes', 'Reno', '2024-08-17'),
(94, 'Aurora Flores', 'Akron', '2024-08-19'),
(95, 'Cameron Washington', 'Grand Rapids', '2024-08-21'),
(96, 'Kaylee Butler', 'Salt Lake City', '2024-08-23'),
(97, 'Robert Simmons', 'Fremont', '2024-08-25'),
(98, 'Riley Foster', 'Tallahassee', '2024-08-27'),
(99, 'Zachary Gonzales', 'Huntsville', '2024-08-29'),
(100, 'Bella Bryant', 'Yonkers', '2024-09-01'),
(101, 'Eli Russell', 'Worcester', '2024-09-03'),
(102, 'Hailey Griffin', 'Little Rock', '2024-09-05'),
(103, 'Austin Diaz', 'Mobile', '2024-09-07'),
(104, 'Audrey Hayes', 'Montgomery', '2024-09-09'),
(105, 'Charles Myers', 'Port St. Lucie', '2024-09-11'),
(106, 'Skylar Ford', 'Amarillo', '2024-09-13'),
(107, 'Jace Hamilton', 'Knoxville', '2024-09-15'),
(108, 'Brianna Graham', 'Columbus', '2024-09-17'),
(109, 'Leo Sullivan', 'Salt Lake City', '2024-09-19'),
(110, 'Autumn Wallace', 'Providence', '2024-09-21'),
(111, 'Mason Woods', 'Fort Lauderdale', '2024-09-23'),
(112, 'Aaliyah Robinson', 'Chattanooga', '2024-09-25'),
(113, 'Logan West', 'Tempe', '2024-09-27'),
(114, 'Julia Cole', 'Cary', '2024-09-29'),
(115, 'Brandon Hayes', 'Mckinney', '2024-10-01'),
(116, 'Sophie Ruiz', 'Clarksville', '2024-10-03'),
(117, 'Adam Ferguson', 'Denton', '2024-10-05'),
(118, 'Nevaeh Tucker', 'Visalia', '2024-10-07'),
(119, 'Ian Spencer', 'Provo', '2024-10-09'),
(120, 'Mackenzie Kim', 'Gresham', '2024-10-11');


INSERT INTO customers (customer_id, name, city, signup_date)
SELECT 
    customer_id,
    'Customer_' || customer_id AS name,
    city_array[1 + (customer_id % 10)] AS city,
    ('2024-01-01'::DATE + (customer_id * INTERVAL '1 day')) AS signup_date
FROM (
    SELECT 
        generate_series(121, 250) AS customer_id,
        ARRAY['New York', 'Los Angeles', 'Chicago', 'Houston', 'Phoenix', 
              'Philadelphia', 'San Antonio', 'San Diego', 'Dallas', 'Austin'] AS city_array
) AS subquery;

-- Insert into products (no spaces in table name)
INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 800.00),
(102, 'Mouse', 'Electronics', 25.00),
(103, 'Notebook', 'Stationery', 5.00),
(104, 'Desk Chair', 'Furniture', 150.00);

-- Insert into orders (no spaces)
INSERT INTO orders VALUES
(1001, 1, 101, '2024-02-01', 1),
(1002, 2, 102, '2024-02-10', 2),
(1003, 1, 103, '2024-02-15', 5),
(1004, 3, 101, '2024-03-01', 1),
(1005, 4, 104, '2024-03-05', 1),
(1006, 2, 101, '2024-03-10', 1),
(1007, 3, 102, '2024-03-12', 3);


INSERT INTO orders (order_id, customer_id, product_id, order_date, quantity)
SELECT 
    generate_series(1008, 1500) AS order_id,
    (floor(random() * 249 + 1))::INT AS customer_id,
    (array[101, 102, 103, 104])[floor(random() * 4 + 1)] AS product_id,
    ('2024-01-01'::DATE + (floor(random() * 365)) * INTERVAL '1 day') AS order_date,
    (floor(random() * 5 + 1))::INT AS quantity
FROM generate_series(1, 493)
ON CONFLICT (order_id) DO NOTHING;

-- Insert into returns
INSERT INTO returns VALUES
(5001, 1002, '2024-02-20', 'Defective'),
(5002, 1006, '2024-03-15', 'Wrong item');
INSERT INTO returns (return_id, order_id, return_date, reason)
SELECT 
    generate_series(5003, 5150) AS return_id,
    (floor(random() * 500 + 1001))::INT AS order_id,
    ('2024-02-01'::DATE + (floor(random() * 300)) * INTERVAL '1 day') AS return_date,
    (array['Defective', 'Wrong item', 'Changed mind', 'Better price elsewhere', 'Not as described'])[floor(random() * 5 + 1)] AS reason
FROM generate_series(1, 148)
ON CONFLICT (return_id) DO NOTHING




