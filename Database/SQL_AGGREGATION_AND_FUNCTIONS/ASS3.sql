SELECT
	R.name,
    SUM(O.total_amount) AS TotalSales
FROM 
	Restaurant_info R
JOIN 
	Orders O
ON
	R.restaurant_id = O.restaurant_id
GROUP BY
	R.name
ORDER BY
	TotalSales DESC
LIMIT 1;