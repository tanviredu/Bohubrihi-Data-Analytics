SELECT 
    R.name,
	ROUND(AVG(M.price),2) AS average_price
FROM 
	Restaurant_info R
JOIN
    MenuItems M
ON
	R.restaurant_id = M.restaurant_id
GROUP BY 
	R.name
ORDER BY 
	R.name ASC;