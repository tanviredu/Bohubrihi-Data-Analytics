SELECT * FROM MenuItems;
-- if more then 10 price
-- high value product
-- else low value 
-- if the price of any item is greater or equal 60 then flag them as
-- high value other low value in w new column
SELECT 
	A.name,
	A.restaurant_id,
    A.price, 
	CASE
		WHEN 
			A.price >= 60 THEN "HIGH VALUE"
		ELSE
			"LOW VALUE"
    END AS PRICE_SENSITIVITY
FROM 
	MenuItems A;
    
--  now how many of them are High Price and HOw many of them are low price
-- that will need a Subquery

SELECT PRICE_SENSITIVITY,COUNT(*) AS COUNT_OF_PRICE_SENSITIVITY FROM
(SELECT 
	A.name,
	A.restaurant_id,
    A.price, 
	CASE
		WHEN A.price BETWEEN 1 AND 30 THEN "LOW VALUE"
        WHEN A.price BETWEEN 31 AND 60 THEN "MID VALUE"
        WHEN A.price BETWEEN 61 AND 100 THEN "HiGH VALUE"
			
		ELSE
			"UNDEFINED"
    END AS PRICE_SENSITIVITY
FROM 
	MenuItems A
) AS B
GROUP BY PRICE_SENSITIVITY;