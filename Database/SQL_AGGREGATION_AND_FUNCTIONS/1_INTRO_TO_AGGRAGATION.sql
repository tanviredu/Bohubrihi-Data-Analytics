USE food_delivery;
-- AGGRAGATION FUNCTION
-- COUNT()
-- SUM()
-- AVG()
-- MAX()
-- MIN()

-- SELECT * FROM MenuItems;
-- TASK
-- how many items are there in each restaurant

SELECT R.name, COUNT(M.name)
FROM MenuItems M 
JOIN Restaurant_info R
ON M.restaurant_id = R.restaurant_id
GROUP BY M.restaurant_id;


--
SELECT COUNT(*) FROM MenuItems;
SELECT COUNT(DISTINCT name) AS TOTAL_COUNT FROM MenuItems; 


-- FIND THE AVERAGE PRICE , MINIMUM PRIEC AND MAXIUM PRICE
-- IN THE MENU

SELECT 
	ROUND(AVG(price),2) AS AVG_PRICE,
	MAX(price) AS MAX_PRICE,
    MIN(price) AS MIN_PRICE
FROM 
	MenuItems;

