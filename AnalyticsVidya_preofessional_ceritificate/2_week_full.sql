-- SELECT 
--    MONTH(order_date) AS MONTHS, 
--    COUNT(order_id) AS TOTAL_ORDERS
-- FROM 
--    orders 
-- GROUP BY 
--    MONTH(order_date);


-- SELECT MONTH(order_date) AS ORDER_MONTH,SUM(final_price) AS TotalReveneu
-- FROM orders
-- GROUP BY ORDER_MONTH
-- ORDER BY ORDER_MONTH ASC;


-- SELECT MONTH(order_date) AS ORDER_MONTH, SUM(final_price) AS TotalReveneu,SUM(discount) AS TOTAL_DISCOUNT
-- FROM orders
-- GROUP BY ORDER_MONTH
-- ORDER BY ORDER_MONTH ASC;

-- SELECT 
--    MONTH(order_date) AS month,
--    SUM(final_price) AS TotalReveneu,
--    SUM(discount)/SUM(final_price) AS DISCOUNT_SALES_RATIO,
--    SUM(discount) AS TOTAL_DISCOUNT
-- FROM 
--    orders
-- GROUP BY
--    month 
-- ORDER BY 
--    month ASC;

-- so the discount does not have any affect in Sales Reduction

-- weekday and weekend affect
-- 1 for sunday
-- 7 for saturday

-- find the weekday affect
-- SELECT SUM(final_price) AS TotalReveneu,COUNT(order_id) AS Order_Count,
-- CASE 
--    WHEN dayofweek(order_date) = 1 THEN "weekend"
--    WHEN dayofweek(order_date) = 7 THEN "weekend"
--    ELSE "weekday"
-- END AS WorkORWeekend
-- FROM orders
-- GROUP BY WorkORWeekend
-- ORDER BY WorkORWeekend ASC;


-- SELECT COUNT(order_id) FROM orders where order_date = '2022-09-01';


-- SELECT SUM(final_price) FROM orders WHERE order_date >= '2022-06-15' AND order_date <= '2022-06-30';


-- SELECT COUNT(restaurant_id) FROM restaurants WHERE cuisine = "Italian";

-- SELECT COUNT(order_id) FROM orders WHERE order_date = "2022-08-22" AND final_price > 40;

-- SELECT COUNT(order_id) 
-- FROM orders 
-- WHERE (DAYOFWEEK(order_date) = 1 OR DAYOFWEEK(order_date) = 7) 
--      AND (order_date >= '2022-09-04' AND order_date <= '2022-09-10');

-- SELECT COUNT(order_id) FROM orders WHERE driver_id = "10" AND MONTH(order_date) = 7 AND YEAR(order_date) = "2022" AND total_price > 50;

-- SELECT cuisine,COUNT(restaurant_id) FROM restaurants
-- GROUP BY cuisine;
-- SELECT order_date,
--       COUNT(order_id) AS num_orders
-- FROM orders
-- WHERE MONTH(order_date) = 9 AND YEAR(order_date) = 2022
--      AND DAYOFWEEK(order_date) = 2
-- GROUP BY order_date;

-- SELECT COUNT(order_id) FROM orders WHERE order_date = "2022-07-01" AND final_price <35;

