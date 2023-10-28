#Data insertion

-- Insert data into Cuisine_Type table (Realistic cuisine types, maximum 15 rows)
INSERT INTO Cuisine_Type (cuisine_type_id, cuisine_name)
VALUES
    (1, 'Italian'),
    (2, 'Chinese'),
    (3, 'Indian'),
    (4, 'Japanese'),
    (5, 'Mexican'),
    (6, 'Thai'),
    (7, 'Greek'),
    (8, 'Korean'),
    (9, 'Mediterranean'),
    (10, 'French'),
    (11, 'American'),
    (12, 'Vietnamese'),
    (13, 'Spanish'),
    (14, 'Lebanese'),
    (15, 'Turkish');

-- Insert data into Status table (Adding the following status: completed, canceled, skipped)
INSERT INTO Status (status_id, status)
VALUES
    (1, 'Completed'),
    (2, 'Canceled'),
    (3, 'Skipped');

-- Insert data into Payment_type table (Two variations: cash and credit)
INSERT INTO Payment_type (pay_type_id, name)
VALUES
    (1, 'Cash'),
    (2, 'Credit');

-- Insert data into City table (Adding 10 different Bangladeshi cities)
INSERT INTO City (city_id, city_name)
VALUES
    (1, 'Dhaka'),
    (2, 'Chittagong'),
    (3, 'Khulna'),
    (4, 'Rajshahi'),
    (5, 'Sylhet'),
    (6, 'Barisal'),
    (7, 'Rangpur'),
    (8, 'Mymensingh'),
    (9, 'Comilla'),
    (10, 'Jessore');
    

-- vechile type
INSERT INTO vehicle_type
VALUES
(1,'Cycle'),
(2,'Motorbike'),
(3,'Walker') ; 


-- user table

-- Inserting 50 rows into the User_info table
INSERT INTO User_info (ID, registration_date, name, phone, operating_system, otp_verified, CITY_ID)
VALUES
    (1, '2023-07-30 12:34:56', 'John Doe', '1234567890', 'Android', true, 1),
    (2, '2023-07-29 09:45:21', 'Jane Smith', '9876543210', 'iOS', true, 2),
    (3, '2023-07-28 15:23:10', 'Michael Johnson', '5555555555', 'Android', true, 3),
    (4, '2023-07-27 18:12:30', 'Emily Williams', '7777777777', 'iOS', false, 4),
    (5, '2023-07-26 11:22:33', 'Robert Brown', '8888888888', 'Android', true, 5),
    (6, '2023-07-25 09:08:07', 'Linda Miller', '2222222222', 'iOS', true, 5),
    (7, '2023-07-24 17:19:56', 'David Davis', '3333333333', 'Android', true, 1),
    (8, '2023-07-23 14:25:40', 'Sarah Wilson', '4444444444', 'iOS', false, 6),
    (9, '2023-07-22 16:18:56', 'Richard Lee', '6666666666', 'Android', true, 7),
    (10, '2023-07-21 20:37:49', 'Karen Allen', '9999999999', 'iOS', true, 7),
    (11, '2023-07-20 22:09:18', 'Kevin Hall', '1111111111', 'Android', true, 7),
    (12, '2023-07-19 19:55:35', 'Jennifer Clark', '3333344444', 'iOS', false, 10),
    (13, '2023-07-18 08:24:47', 'James Turner', '4444433333', 'Android', true, 9),
    (14, '2023-07-17 06:30:56', 'Susan Hill', '9876543221', 'iOS', true, 10),
    (15, '2023-07-16 23:57:22', 'Matthew Cooper', '2345678910', 'Android', true, 3),
    (16, '2023-07-15 12:45:38', 'Amanda Roberts', '3216549870', 'iOS', true, 1),
    (17, '2023-07-14 14:19:56', 'Daniel Evans', '9998887777', 'Android', false, 2),
    (18, '2023-07-13 16:33:40', 'Elizabeth King', '7779998888', 'iOS', true, 3),
    (19, '2023-07-12 18:56:10', 'Thomas Adams', '7777777777', 'Android', true, 7),
    (20, '2023-07-11 22:05:29', 'Jessica Cook', '8888888888', 'iOS', true, 2),
    (21, '2023-07-10 10:34:18', 'Charles Morgan', '2222222222', 'Android', false, 3),
    (22, '2023-07-09 09:22:45', 'Rebecca Bailey', '3333333333', 'iOS', true, 1),
    (23, '2023-07-08 21:10:59', 'Andrew James', '4444444444', 'Android', true, 2),
    (24, '2023-07-07 14:35:16', 'Karen Phillips', '6666666666', 'iOS', true, 3),
    (25, '2023-07-06 12:08:27', 'Joseph Scott', '9999999999', 'Android', false, 1),
    (26, '2023-07-05 20:15:45', 'Laura Turner', '1111111111', 'iOS', true, 2),
    (27, '2023-07-04 19:23:12', 'Michael Hall', '2222222222', 'Android', true, 3),
    (28, '2023-07-03 08:45:21', 'Stephanie White', '3333333333', 'iOS', true, 1),
    (29, '2023-07-02 11:34:56', 'Jason Allen', '4444444444', 'Android', false, 2),
    (30, '2023-07-01 15:12:35', 'Kimberly Green', '5555555555', 'iOS', true, 3),
    (31, '2023-06-30 22:18:40', 'Christopher Lewis', '6666666666', 'Android', true, 1),
    (32, '2023-06-29 19:30:15', 'Anna Turner', '7777777777', 'iOS', true, 2),
    (33, '2023-06-28 13:25:45', 'Mark Harris', '8888888888', 'Android', true, 3),
    (34, '2023-06-27 16:29:55', 'Maria Martinez', '9999999999', 'iOS', true, 5),
    (35, '2023-06-26 11:14:10', 'Matthew Allen', '1111111111', 'Android', false, 5),
    (36, '2023-06-25 21:10:22', 'Michelle Lee', '2222222222', 'iOS', true, 5),
    (37, '2023-06-24 09:50:40', 'William Turner', '3333333333', 'Android', true, 1),
    (38, '2023-06-23 12:45:10', 'Patricia Scott', '4444444444', 'iOS', true, 5),
    (39, '2023-06-22 16:18:55', 'John Smith', '5555555555', 'Android', true, 3),
    (40, '2023-06-21 18:30:20', 'Emily Davis', '6666666666', 'iOS', false, 1);
    
    #rider info
    
-- Inserting 20 random rows into the Rider_info table with specific id values from 1 to 20
INSERT INTO Rider_info (ID, registration_date, name, phone, operating_system, vehicle_type_id, city_id, verified)
SELECT 
    id,
    DATE_SUB(NOW(), INTERVAL FLOOR(RAND() * 365) DAY),
    CONCAT('Rider', id),
    CONCAT('9', FLOOR(RAND() * 900000000) + 100000000),
    CASE FLOOR(RAND() * 2) WHEN 0 THEN 'Android' ELSE 'iOS' END,
    FLOOR(RAND() * 3) + 1,
    FLOOR(RAND() * 10) + 1,
    CASE FLOOR(RAND() * 2) WHEN 0 THEN false ELSE true END
FROM
    (SELECT 1 AS id UNION ALL SELECT 2 AS id UNION ALL SELECT 3 AS id UNION ALL SELECT 4 AS id
    UNION ALL SELECT 5 AS id UNION ALL SELECT 6 AS id UNION ALL SELECT 7 AS id UNION ALL SELECT 8 AS id
    UNION ALL SELECT 9 AS id UNION ALL SELECT 10 AS id UNION ALL SELECT 11 AS id UNION ALL SELECT 12 AS id
    UNION ALL SELECT 13 AS id UNION ALL SELECT 14 AS id UNION ALL SELECT 15 AS id UNION ALL SELECT 16 AS id
    UNION ALL SELECT 17 AS id UNION ALL SELECT 18 AS id UNION ALL SELECT 19 AS id UNION ALL SELECT 20 AS id) AS rand_rows;


#insert restaurant info
-- Inserting 15 random rows into the Restaurant_info table with randomized cuisine_type_id and city_id
INSERT INTO Restaurant_info (restaurant_id, name, address, contact_number, cuisine_type_id, city_id)
VALUES
    (1, 'Restaurant A', '123 Main Street', '9876543210', FLOOR(RAND() * 15) + 1, FLOOR(RAND() * 10) + 1),
    (2, 'Restaurant B', '456 Oak Avenue', '1234567890', FLOOR(RAND() * 15) + 1, FLOOR(RAND() * 10) + 1),
    (3, 'Restaurant C', '789 Elm Road', '5555555555', FLOOR(RAND() * 15) + 1, FLOOR(RAND() * 10) + 1),
    (4, 'Restaurant D', '321 Maple Lane', '7777777777', FLOOR(RAND() * 15) + 1, FLOOR(RAND() * 10) + 1),
    (5, 'Restaurant E', '654 Pine Boulevard', '8888888888', FLOOR(RAND() * 15) + 1, FLOOR(RAND() * 10) + 1),
    (6, 'Restaurant F', '987 Cedar Drive', '2222222222', FLOOR(RAND() * 15) + 1, FLOOR(RAND() * 10) + 1),
    (7, 'Restaurant G', '111 Birch Court', '3333333333', FLOOR(RAND() * 15) + 1, FLOOR(RAND() * 10) + 1),
    (8, 'Restaurant H', '222 Willow Lane', '4444444444', FLOOR(RAND() * 15) + 1, FLOOR(RAND() * 10) + 1),
    (9, 'Restaurant I', '333 Cherry Avenue', '6666666666', FLOOR(RAND() * 15) + 1, FLOOR(RAND() * 10) + 1),
    (10, 'Restaurant J', '444 Oak Street', '9999999999', FLOOR(RAND() * 15) + 1, FLOOR(RAND() * 10) + 1),
    (11, 'Restaurant K', '555 Elm Avenue', '1111111111', FLOOR(RAND() * 15) + 1, FLOOR(RAND() * 10) + 1),
    (12, 'Restaurant L', '666 Pine Road', '4444444444', FLOOR(RAND() * 15) + 1, FLOOR(RAND() * 10) + 1);

#menu items table

-- Inserting 50 random rows into the MenuItems table with random restaurant_id
INSERT INTO MenuItems (item_id, restaurant_id, name, description, price, availability, has_photo)
SELECT 
    item_id,
    FLOOR(RAND() * 12) + 1, -- Randomly select a restaurant_id between 1 and 15
    CONCAT('Item', item_id),
    CONCAT('Description for Item ', item_id),
    ROUND(RAND() * 100, 2), -- Random price between 0 and 100 (with two decimal places)
    CASE FLOOR(RAND() * 2) WHEN 0 THEN true ELSE false END, -- Random availability (true or false)
    CASE FLOOR(RAND() * 2) WHEN 0 THEN true ELSE false END -- Random has_photo (true or false)
FROM
    (SELECT 1 AS item_id UNION ALL SELECT 2 AS item_id UNION ALL SELECT 3 AS item_id UNION ALL SELECT 4 AS item_id
    UNION ALL SELECT 5 AS item_id UNION ALL SELECT 6 AS item_id UNION ALL SELECT 7 AS item_id UNION ALL SELECT 8 AS item_id
    UNION ALL SELECT 9 AS item_id UNION ALL SELECT 10 AS item_id UNION ALL SELECT 11 AS item_id UNION ALL SELECT 12 AS item_id
    UNION ALL SELECT 13 AS item_id UNION ALL SELECT 14 AS item_id UNION ALL SELECT 15 AS item_id UNION ALL SELECT 16 AS item_id
    UNION ALL SELECT 17 AS item_id UNION ALL SELECT 18 AS item_id UNION ALL SELECT 19 AS item_id UNION ALL SELECT 20 AS item_id
    UNION ALL SELECT 21 AS item_id UNION ALL SELECT 22 AS item_id UNION ALL SELECT 23 AS item_id UNION ALL SELECT 24 AS item_id
    UNION ALL SELECT 25 AS item_id UNION ALL SELECT 26 AS item_id UNION ALL SELECT 27 AS item_id UNION ALL SELECT 28 AS item_id
    UNION ALL SELECT 29 AS item_id UNION ALL SELECT 30 AS item_id UNION ALL SELECT 31 AS item_id UNION ALL SELECT 32 AS item_id
    UNION ALL SELECT 33 AS item_id UNION ALL SELECT 34 AS item_id UNION ALL SELECT 35 AS item_id UNION ALL SELECT 36 AS item_id
    UNION ALL SELECT 37 AS item_id UNION ALL SELECT 38 AS item_id UNION ALL SELECT 39 AS item_id UNION ALL SELECT 40 AS item_id
    UNION ALL SELECT 41 AS item_id UNION ALL SELECT 42 AS item_id UNION ALL SELECT 43 AS item_id UNION ALL SELECT 44 AS item_id
    UNION ALL SELECT 45 AS item_id UNION ALL SELECT 46 AS item_id UNION ALL SELECT 47 AS item_id UNION ALL SELECT 48 AS item_id
    UNION ALL SELECT 49 AS item_id UNION ALL SELECT 50 AS item_id) AS rand_rows;
    
    
#Insert data into order table
-- Inserting up to 100 random rows into the Order table with random user_id, restaurant_id, and status_id
INSERT INTO Orders (order_id, user_id, restaurant_id, rider_id,order_date, total_amount, delivery_address, status_id)
SELECT 
    order_id,
    FLOOR(RAND() * 40) + 1, -- Random user_id between 1 and 40
    FLOOR(RAND() * 12) + 1, -- Random restaurant_id between 1 and 12
    FLOOR(RAND() * 20) + 1, -- Random rider_id between 1 and 20
    NOW() - INTERVAL FLOOR(RAND() * 45) DAY, -- Random order_date in the last 30 days
    ROUND(RAND() * 100, 2), -- Random total_amount between 0 and 100 (with two decimal places)
    CONCAT('Address for Order ', NULLIF(FLOOR(RAND() * 100), 0)), -- Random delivery_address (some rows may have NULL address)
    FLOOR(RAND() * 2) + 1 -- Random status_id between 1 and 4
FROM
    (SELECT 1 as order_id UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
    UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8
    UNION ALL SELECT 9 UNION ALL SELECT 10 UNION ALL SELECT 11 UNION ALL SELECT 12
    UNION ALL SELECT 13 UNION ALL SELECT 14 UNION ALL SELECT 15 UNION ALL SELECT 16
    UNION ALL SELECT 17 UNION ALL SELECT 18 UNION ALL SELECT 19 UNION ALL SELECT 20
    UNION ALL SELECT 21 UNION ALL SELECT 22 UNION ALL SELECT 23 UNION ALL SELECT 24
    UNION ALL SELECT 25 UNION ALL SELECT 26 UNION ALL SELECT 27 UNION ALL SELECT 28
    UNION ALL SELECT 29 UNION ALL SELECT 30 UNION ALL SELECT 31 UNION ALL SELECT 32
    UNION ALL SELECT 33 UNION ALL SELECT 34 UNION ALL SELECT 35 UNION ALL SELECT 36
    UNION ALL SELECT 37 UNION ALL SELECT 38 UNION ALL SELECT 39 UNION ALL SELECT 40
    UNION ALL SELECT 41 UNION ALL SELECT 42 UNION ALL SELECT 43 UNION ALL SELECT 44
    UNION ALL SELECT 45
    UNION ALL SELECT 46
    UNION ALL SELECT 47
    UNION ALL SELECT 48
    UNION ALL SELECT 49
    UNION ALL SELECT 50
    UNION ALL SELECT 51
    UNION ALL SELECT 52
    UNION ALL SELECT 53
    UNION ALL SELECT 54
    UNION ALL SELECT 55
    UNION ALL SELECT 56
    UNION ALL SELECT 57
    UNION ALL SELECT 58
    UNION ALL SELECT 59
    UNION ALL SELECT 60
    UNION ALL SELECT 61
    UNION ALL SELECT 62
    UNION ALL SELECT 63
    UNION ALL SELECT 64
    UNION ALL SELECT 65
    UNION ALL SELECT 66
    UNION ALL SELECT 67
    UNION ALL SELECT 68
    UNION ALL SELECT 69
    UNION ALL SELECT 70
    UNION ALL SELECT 71
    ) AS rand_rows;

##### order_items

-- Inserting 100 random rows into the order_items table with varying order_id and randomly assigned item_id
INSERT INTO order_items (order_item_id, order_id, item_id, quantity, subtotal)
SELECT
    order_item_id,
    FLOOR(RAND() * 71) + 1, -- Random order_id between 1 and 71
    FLOOR(RAND() * 50) + 1, -- Random item_id between 1 and 50
    FLOOR(RAND() * 5) + 1,  -- Random quantity between 1 and 5
    ROUND(RAND() * 100, 2)   -- Random subtotal between 0 and 100 (with two decimal places)
FROM
    (SELECT 1 as order_item_id UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
    UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8
    UNION ALL SELECT 9 UNION ALL SELECT 10 UNION ALL SELECT 11 UNION ALL SELECT 12
    UNION ALL SELECT 13 UNION ALL SELECT 14 UNION ALL SELECT 15 UNION ALL SELECT 16
    UNION ALL SELECT 17 UNION ALL SELECT 18 UNION ALL SELECT 19 UNION ALL SELECT 20
    UNION ALL SELECT 21 UNION ALL SELECT 22 UNION ALL SELECT 23 UNION ALL SELECT 24
    UNION ALL SELECT 25 UNION ALL SELECT 26 UNION ALL SELECT 27 UNION ALL SELECT 28
    UNION ALL SELECT 29 UNION ALL SELECT 30 UNION ALL SELECT 31 UNION ALL SELECT 32
    UNION ALL SELECT 33 UNION ALL SELECT 34 UNION ALL SELECT 35 UNION ALL SELECT 36
    UNION ALL SELECT 37 UNION ALL SELECT 38 UNION ALL SELECT 39 UNION ALL SELECT 40
    UNION ALL SELECT 41 UNION ALL SELECT 42 UNION ALL SELECT 43 UNION ALL SELECT 44
    UNION ALL SELECT 45 UNION ALL SELECT 46 UNION ALL SELECT 47 UNION ALL SELECT 48
    UNION ALL SELECT 49 UNION ALL SELECT 50 UNION ALL SELECT 51 UNION ALL SELECT 52
    UNION ALL SELECT 53 UNION ALL SELECT 54 UNION ALL SELECT 55 UNION ALL SELECT 56
    UNION ALL SELECT 57 UNION ALL SELECT 58 UNION ALL SELECT 59 UNION ALL SELECT 60
    UNION ALL SELECT 61 UNION ALL SELECT 62 UNION ALL SELECT 63 UNION ALL SELECT 64
    UNION ALL SELECT 65 UNION ALL SELECT 66 UNION ALL SELECT 67 UNION ALL SELECT 68
    UNION ALL SELECT 69 UNION ALL SELECT 70 UNION ALL SELECT 71 
    UNION ALL SELECT 72
UNION ALL SELECT 73
UNION ALL SELECT 74
UNION ALL SELECT 75
UNION ALL SELECT 76
UNION ALL SELECT 77
UNION ALL SELECT 78
UNION ALL SELECT 79
UNION ALL SELECT 80
UNION ALL SELECT 81
UNION ALL SELECT 82
UNION ALL SELECT 83
UNION ALL SELECT 84
UNION ALL SELECT 85
UNION ALL SELECT 86
UNION ALL SELECT 87
UNION ALL SELECT 88
UNION ALL SELECT 89
UNION ALL SELECT 90
UNION ALL SELECT 91
UNION ALL SELECT 92
UNION ALL SELECT 93
UNION ALL SELECT 94
UNION ALL SELECT 95
UNION ALL SELECT 96
UNION ALL SELECT 97
UNION ALL SELECT 98
UNION ALL SELECT 99
UNION ALL SELECT 100
UNION ALL SELECT 101
UNION ALL SELECT 102
UNION ALL SELECT 103
UNION ALL SELECT 104
UNION ALL SELECT 105
UNION ALL SELECT 106
UNION ALL SELECT 107
UNION ALL SELECT 108
UNION ALL SELECT 109
UNION ALL SELECT 110
UNION ALL SELECT 111
UNION ALL SELECT 112
UNION ALL SELECT 113
UNION ALL SELECT 114
UNION ALL SELECT 115
UNION ALL SELECT 116
UNION ALL SELECT 117
UNION ALL SELECT 118
UNION ALL SELECT 119
UNION ALL SELECT 120
UNION ALL SELECT 121) AS rand_rows;


# payment_Transaction
-- Inserting 71 rows into the Payment_Transactions table with random data based on the given assumptions
INSERT INTO Payment_Transactions (transaction_id, order_id, payment_date, status_id, pay_type_id)
SELECT 
    transaction_id,
    FLOOR(RAND() * 71) + 1, -- Random order_id between 1 and 71
    NOW() - INTERVAL FLOOR(RAND() * 45) DAY, -- Random payment_date in the last 30 days
    FLOOR(RAND() * 2) + 1, -- Random status_id between 1 and 2
    FLOOR(RAND() * 2) + 1 -- Random pay_type_id between 1 and 2
FROM
    (SELECT 1 as transaction_id UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
    UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8
    UNION ALL SELECT 9 UNION ALL SELECT 10 UNION ALL SELECT 11 UNION ALL SELECT 12
    UNION ALL SELECT 13 UNION ALL SELECT 14 UNION ALL SELECT 15 UNION ALL SELECT 16
    UNION ALL SELECT 17 UNION ALL SELECT 18 UNION ALL SELECT 19 UNION ALL SELECT 20
    UNION ALL SELECT 21 UNION ALL SELECT 22 UNION ALL SELECT 23 UNION ALL SELECT 24
    UNION ALL SELECT 25 UNION ALL SELECT 26 UNION ALL SELECT 27 UNION ALL SELECT 28
    UNION ALL SELECT 29 UNION ALL  SELECT 30 UNION ALL SELECT 31 UNION ALL SELECT 32
    UNION ALL SELECT 33 UNION ALL SELECT 34 UNION ALL SELECT 35 UNION ALL SELECT 36
    UNION ALL SELECT 37 UNION ALL SELECT 38 UNION ALL SELECT 39 UNION ALL SELECT 40
    UNION ALL SELECT 41 UNION ALL SELECT 42 UNION ALL SELECT 43 UNION ALL SELECT 44
    UNION ALL SELECT 45 UNION ALL SELECT 46 UNION ALL SELECT 47 UNION ALL SELECT 48
    UNION ALL SELECT 49 UNION ALL SELECT 50 UNION ALL SELECT 51 UNION ALL SELECT 52
    UNION ALL SELECT 53 UNION ALL SELECT 54 UNION ALL SELECT 55 UNION ALL SELECT 56
    UNION ALL SELECT 57 UNION ALL SELECT 58 UNION ALL SELECT 59 UNION ALL SELECT 60
    UNION ALL SELECT 61 UNION ALL SELECT 62 UNION ALL SELECT 63 UNION ALL SELECT 64
    UNION ALL SELECT 65 UNION ALL SELECT 66 UNION ALL SELECT 67 UNION ALL SELECT 68
    UNION ALL SELECT 69 UNION ALL SELECT 70 UNION ALL SELECT 71  ) as rand_data;





