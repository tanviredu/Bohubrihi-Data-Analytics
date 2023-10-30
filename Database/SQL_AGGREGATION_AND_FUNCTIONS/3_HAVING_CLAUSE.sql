-- find the avg price of a perticuar item
-- you have to group by the item based on their name
-- and then in the aggragation  function you have to use
-- the avg function

SELECT * FROM MenuItems;

SELECT 
	name,
    ROUND(AVG(price),2) AS AVG_PRICE 
FROM 
	MenuItems
GROUP BY
	name
Having 
	AVG(price) > 60;