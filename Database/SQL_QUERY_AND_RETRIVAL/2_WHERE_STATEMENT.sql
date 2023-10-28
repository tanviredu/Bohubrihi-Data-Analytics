
-- if you wnat to add a condition 
-- in the in a select condition 
-- you need to add a where condition
-- three type of oparator
-- 1) comparison operator > greater then,< less then ,>= greater than equal
-- ,<= less than equal, = equal, <> not  ,!= also not

-- TASK
-- SELECT ALL THE ITEM WHICH HAS Price MORE THAN 40

SELECT 
	* 
FROM
	MenuItems
WHERE
	price >40;

-- fetch all item except the item which has price 77
SELECT * FROM MenuItems WHERE price <> 77;

-- LOGICAL OPERATOR
-- Logical Operator are three
-- AND,OR,NOT

-- TASK 1
-- FIND ALL THE ITEM NAME WHICH HAS PRICE GREATER THEN 40 AND AVAILABLE
SELECT 
	name,price,availability 
FROM
	MenuItems
WHERE 
	(price > 40) AND (availability = 1);
-- special operator
-- like, between, in

-- find items whose price is 45,80 and 77

SELECT * FROM MenuItems
WHERE price IN(45,80,77);

-- task:
-- find all the item whoose price between 70 to 80
SELECT * FROM MenuItems
WHERE price BETWEEN 70 AND 80;

-- task
-- find all the element except the elements whoose price
-- between 70 to 80

SELECT * FROM MenuItems
WHERE price NOT BETWEEN 70 AND 80;


-- Like is used for pattern matching
-- task:gather all the name from the user table 
-- whoose name starts with J
SELECT 
	name
FROM 
	User_info
WHERE name LIKE 'J%';

-- fetch all the name whose name ends with n
-- remember operator is case sensitive
SELECT 
	name 
FROM
	User_info
WHERE 
	name LIKE '%n';

