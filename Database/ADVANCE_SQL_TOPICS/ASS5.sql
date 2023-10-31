SELECT PT.name,COUNT(O.order_id) AS ORDER_COUNT FROM Orders O
JOIN Payment_Transactions PTR
ON O.order_id = PTR.order_id
JOIN Payment_type PT
ON PTR.pay_type_id = PT.pay_type_id
GROUP BY PT.name;