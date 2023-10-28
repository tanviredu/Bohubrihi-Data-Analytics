SELECT * FROM MenuItems;

-- ORDER BY is used for ordering data for ascending
-- or desceding value
-- ORDER BY ASC
-- ORDER BY DESC
-- if not mentined then it is sorted in asc
-- IT CAN HAVE MULTIPLE COLUMN

-- sort the MenuItems on restaurant_id asc
SELECT * FROM MenuItems ORDER BY restaurant_id ASC;

-- sort it desc
SELECT * FROM MenuItems ORDER BY restaurant_id DESC;

-- task
-- sort the menuitems by restaurant_id ascending and then further sort by
-- the table by price

-- explanation it will first sort it by restaurant id then in each 
-- restaurant it will sort the price ascending order

SELECT restaurant_id,name,price
FROM MenuItems
ORDER BY restaurant_id ASC,price ASC;

-- task sort the menuitems my restaurant id ascending then in each restaurant
-- sort the item by price like the highest price will be first
SELECT restaurant_id,name,price
FROM MenuItems
ORDER BY restaurant_id ASC,price DESC;


-- LIMIT . it will limit the row in select statement 
-- good for data exploration

SELECT * FROM User_info LIMIT 5; -- it will return 5 row

