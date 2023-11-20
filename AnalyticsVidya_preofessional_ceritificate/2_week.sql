-- SELECT THE STARTING AND ENDING DATE OF THE ORDERS FROM ORDER TABLE 
-- SELECT MIN(order_date) AS 'STARTING DATE', MAX(order_date) AS 'ENDING DATE' FROM orders;
-- HOW MANY ORDER IN JUNE JU:Y AUGUEST AND SEPTEMBER 
-- USING WHERE CLAUSE

 -- SELECT YEAR(order_date) AS 'YEAR',MONTH(order_date) AS 'MONTH' ,COUNT(order_id) AS 'TOAL ORDER' FROM orders
 -- GROUP BY YEAR(order_date),MONTH(order_date)
 -- ORDER BY YEAR(order_date),MONTH(order_date) ASC;

-- SELECT COUNT(order_id) AS 'ORDER QUANTITY' from orders 
-- WHERE MONTH(order_date) > 7 AND MONTH(order_date) <9;

-- WRITE THE SAME QUERY WITH BETWEEN


-- SELECT * FROM orders;

-- SELECT COUNT(order_id) AS 'ORDER QUANTITY'
-- FROM orders
-- WHERE order_date BETWEEN '2022-08-01' AND '2022-08-31' 


-- SELECT order_date AS 'ORDER_DATE', count(order_id) AS 'ORDER QUANTITY' FROM orders 
-- GROUP BY order_date
-- ORDER BY order_date ASC;

-- DECREASE THE MONTHLY REVENEW IN THE TOTAL MONTH
