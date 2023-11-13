SELECT 
	name,registration_date
FROM
	User_info
WHERE
	operating_system = 'Android'
AND
	registration_date >= '2023-07-14'
ORDER BY
	registration_date ASC;