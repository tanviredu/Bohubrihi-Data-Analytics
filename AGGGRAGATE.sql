-- Solution 1
SELECT U.name,COUNT(O.order_id) AS TotalOrder FROM User_info U 
LEFT JOIN Orders O 
On U.ID = O.user_id
GROUP BY U.name
ORDER BY COUNT(O.order_id) DESC;

-- Solution 2
SELECT R.name,AVG(M.price) AS AVERAGE_PRICE FROM Restaurant_info R 
LEFT JOIN MenuItems M ON
R.restaurant_id = M.restaurant_id
GROUP By R.name
ORDER BY R.name ASC;

-- solution 3
SELECT R.name,SUM(O.total_amount) AS 'TOTAL SALES' FROM Restaurant_info R
LEFT JOIN Orders O ON
R.restaurant_id = O.restaurant_id
GROUP BY R.name
ORDER BY SUM(O.total_amount) DESC
LIMIT 1;

-- solution 4:
SELECT C.city_name,COUNT(O.order_id) AS 'Number Of Order' FROM city C
JOIN Restaurant_info R 
ON C.city_id = R.city_id
LEFT JOIN Orders O 
ON R.restaurant_id = O.restaurant_id
GROUP BY C.city_name
ORDER BY COUNT(O.order_id) DESC;
