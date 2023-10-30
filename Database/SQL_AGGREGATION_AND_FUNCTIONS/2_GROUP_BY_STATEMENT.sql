-- GROUP BY
-- STATEMENT
-- IT ALLOWS TO AGGARATE DATA FOR CATEGORY LEVEL
-- WE NEED CAEGORICAL COLUMN TO USE GROUP BY (MOST OF THE CASE, SOME EXCEPTION LIKE: AGE)
-- AGE CAN BE NUMERICAL
-- syntax
-- SELECT COL1,AGG(COL2) AS COLUMN_NAME
-- FROM TABLE
-- WHERE (EXPRESSION IF ANY)
-- GROUP BY COL1;
-- HAVING (EXPRESSION)
-- ORDER BY


SELECT * FROM MenuItems;

-- FIND THE NUMBER OF RESTAURENT OF HAVING A A SPICIFIC ITEM
SELECT 
	name,
	COUNT(restaurant_id) AS RESTAURANT_COUNT
FROM 
	MenuItems
GROUP BY
	name
HAVING 
	COUNT(restaurant_id) > 1
ORDER BY
	COUNT(restaurant_id) DESC;

-- task
-- agter grouping the restaurant based on the item
-- find the avg max and min price of that group

SELECT 
	name,
	COUNT(restaurant_id) AS RESTAURANT_COUNT,
    ROUND(AVG(price),2) AS AVG_PRICE,
    MAX(price) AS MAX_PRICE,
    MIN(price) AS MIN_PRICE
    
FROM 
	MenuItems
GROUP BY
	name
HAVING 
	COUNT(restaurant_id) > 1
ORDER BY
	COUNT(restaurant_id) DESC;
    
-- task 
-- show the restaurant too
-- means in a particular item
-- number of restaurant
-- the restaurent and therit price
-- you can group by a table using multiple
-- column

SELECT 
	name,
	-- COUNT(restaurant_id) AS RESTAURANT_COUNT,
    restaurant_id,
    ROUND(AVG(price),2) AS AVG_PRICE
    
FROM 
	MenuItems
GROUP BY
	name,
    restaurant_id
-- HAVING 
-- 	COUNT(restaurant_id) > 1
ORDER BY
	COUNT(restaurant_id) DESC;
