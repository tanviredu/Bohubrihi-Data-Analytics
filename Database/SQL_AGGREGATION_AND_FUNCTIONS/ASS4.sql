SELECT 
	C.city_name,
    COUNT(O.order_id) AS NumberOfOrder
FROM 
	Orders O
JOIN 
	Restaurant_info R
ON
	O.restaurant_id = R.restaurant_id
JOIN
	city C 
ON
	R.city_id = C.city_id

GROUP BY 
	C.city_name
ORDER BY 
	COUNT(O.order_id) DESC;
