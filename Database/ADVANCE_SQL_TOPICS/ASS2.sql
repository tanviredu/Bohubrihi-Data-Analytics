USE food_delivery;
SELECT * FROM Orders;
SELECT * FROM User_info;

-- with subquery
SELECT (SELECT U.name AS UserName FROM User_info U WHERE ID = UID),OrderID,TotalAmount FROM 
(SELECT O.user_id AS UID,O.order_id AS OrderID,O.total_amount as TotalAmount FROM Orders O WHERE O.total_amount
> (SELECT AVG(OIN.total_amount) FROM Orders OIN)) AS A;


-- with join -- final answer
SELECT U.name AS UserName, O.order_id AS Order_ID, O.total_amount AS TOTAL_AMOUNT
FROM User_info U
JOIN Orders O ON U.ID = O.user_id
WHERE O.total_amount > (
    SELECT AVG(OIN.total_amount) FROM Orders OIN
);