SELECT 
	 R.name,
     R.contact_number,
     
     M.availability,
     COALESCE(M.name,"No Menu Items") as "menu item"
FROM 
	Restaurant_info R
LEFT JOIN
	MenuItems M
ON
	R.restaurant_id = M.restaurant_id;