

SELECT R.name AS RestaurantName,COALESCE(SUM(O.total_amount),0) AS TOTAL_AMOUNT FROM Restaurant_info R
LEFT JOIN Orders O
ON R.restaurant_id = O.restaurant_id
GROUP BY R.name;