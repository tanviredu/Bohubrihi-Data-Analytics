-- Question 1:
SELECT Userinfo.Name AS UserName, COUNT(orders.orderid) AS TotalOrders
FROM Userinfo LEFT JOIN orders ON Userinfo.ID = orders.userid GROUP BY UserName
ORDER BY TotalOrders DESC; 
-- Question 2: 

SELECT Restaurantinfo.name AS RestaurantName, AVG(MenuItems.price) AS AveragePrice
FROM Restaurantinfo LEFT JOIN MenuItems ON Restaurantinfo.restaurantid = MenuItems.restaurantid
GROUP BY RestaurantName ORDER BY RestaurantName ASC;
-- Question 3:
SELECT Restaurantinfo.name AS RestaurantName, SUM(orders.totalamount) AS TotalSales
FROM Restaurantinfo LEFT JOIN orders ON Restaurantinfo.restaurantid = orders.restaurantid
GROUP BY RestaurantName ORDER BY TotalSales DESC
LIMIT 1;

-- Question 4:

SELECT city.cityname AS CityName, COUNT(orders.orderid) AS TotalOrders
FROM orders
LEFT JOIN Restaurantinfo ON orders.restaurantid = Restaurantinfo.restaurantid
JOIN city ON Restaurantinfo.cityid = city.cityid GROUP BY CityName
ORDER BY Total_Orders DESC