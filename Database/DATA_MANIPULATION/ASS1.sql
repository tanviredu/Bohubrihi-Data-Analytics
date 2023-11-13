SELECT 
	R.name,M.name 
FROM 
	Restaurant_info R
LEFT JOIN
	MenuItems M
ON
	R.restaurant_id = M.restaurant_id;
