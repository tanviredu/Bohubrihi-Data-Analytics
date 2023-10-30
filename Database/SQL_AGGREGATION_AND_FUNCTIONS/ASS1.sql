SELECT 
    U.name,
    COUNT(O.order_id) AS Total_Order
FROM 
	User_info U
JOIN
	Orders O
ON
	O.user_id = U.ID
GROUP BY
	U.name
ORDER BY COUNT(O.order_id) DESC;
	