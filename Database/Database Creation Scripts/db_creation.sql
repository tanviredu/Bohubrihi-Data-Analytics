-- Create the vechile_type table
CREATE TABLE vehicle_type (
    vehicle_type_id INTEGER PRIMARY KEY,
    vehicle_name VARCHAR(10)
);

-- Create the Cuisine_Type table
CREATE TABLE Cuisine_Type (
    cuisine_type_id INTEGER PRIMARY KEY,
    cuisine_name VARCHAR(20)
);

-- Create the Status table
CREATE TABLE Status (
    status_id INTEGER PRIMARY KEY,
    status VARCHAR(20)
);

-- Create the Payment_type table
CREATE TABLE Payment_type (
    pay_type_id INTEGER PRIMARY KEY,
    name VARCHAR(10)
);

-- Create the city table
CREATE TABLE city (
    city_id INTEGER PRIMARY KEY,
    city_name VARCHAR(20)
);

-- Create the User_info table
CREATE TABLE User_info (
    ID INT PRIMARY KEY,
    registration_date TIMESTAMP,
    name VARCHAR(50),
    phone CHAR(11),
    operating_system VARCHAR(10),
    otp_verified BOOLEAN,
    CITY_ID INTEGER,
    FOREIGN KEY (CITY_ID) REFERENCES city (city_id)
);

-- Create the Rider_info table
CREATE TABLE Rider_info (
    ID INT PRIMARY KEY,
    registration_date TIMESTAMP,
    name VARCHAR(255),
    phone CHAR(11),
    operating_system VARCHAR(10),
    vehicle_type_id INTEGER,
    city_id INTEGER,
    verified BOOLEAN,
    FOREIGN KEY (vehicle_type_id) REFERENCES vehicle_type (vehicle_type_id),
    FOREIGN KEY (city_id) REFERENCES city (city_id)
);

-- Create the Restaurant_info table
CREATE TABLE Restaurant_info (
    restaurant_id INTEGER PRIMARY KEY,
    name VARCHAR(20),
    address VARCHAR(50),
    contact_number CHAR(11),
    cuisine_type_id INTEGER,
    city_id INTEGER,
    FOREIGN KEY (cuisine_type_id) REFERENCES Cuisine_Type (cuisine_type_id),
    FOREIGN KEY (city_id) REFERENCES city (city_id)
);

-- Create the MenuItems table
CREATE TABLE MenuItems (
    item_id INTEGER PRIMARY KEY,
    restaurant_id INTEGER,
    name VARCHAR(20),
    description VARCHAR(100),
    price DECIMAL,
    availability BOOLEAN,
    has_photo BOOLEAN,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant_info (restaurant_id)
);

-- Create the Order table
CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    restaurant_id INTEGER,
    rider_id INTEGER,
    order_date DATETIME,
    total_amount DECIMAL,
    delivery_address VARCHAR(255),
    status_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES User_info (ID),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant_info (restaurant_id),
    FOREIGN KEY (status_id) REFERENCES Status (status_id),
    FOREIGN KEY (rider_id) REFERENCES rider_info (rider_id)
);

-- Create the Payment_Transactions table
CREATE TABLE Payment_Transactions (
    transaction_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    payment_date DATETIME,
    status_id integer,
    pay_type_id INTEGER,
    FOREIGN KEY (order_id) REFERENCES orders (order_id),
    FOREIGN KEY (pay_type_id) REFERENCES Payment_type (pay_type_id),
	FOREIGN KEY (status_id) REFERENCES Status (status_id)
);


-- Create the order_items table
CREATE TABLE order_items (
    order_item_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    item_id INTEGER,
    quantity INTEGER,
    subtotal DECIMAL,
    FOREIGN KEY (order_id) REFERENCES orders (order_id),
    FOREIGN KEY (item_id) REFERENCES MenuItems (item_id)
);


