use food_delivery;
UPDATE Orders a 
JOIN User_info b ON b.id = a.user_id
SET order_date = DATE_ADD(registration_date, INTERVAL 1 DAY)
WHERE a.order_date<b.registration_date;

UPDATE Payment_Transactions a 
JOIN Orders b ON b.order_id = a.order_id
SET payment_date = DATE_ADD(order_date, INTERVAL 30 SECOND);



UPDATE order_items a 
JOIN MenuItems b ON a.item_id = b.item_id 
SET subtotal = quantity*b.price;

UPDATE Orders a 
JOIN 
(
	SELECT order_id, SUM(subtotal) total_amount_b
	FROM order_items 
	GROUP BY 1
) b ON a.order_id = b.order_id 
SET total_amount = total_amount_b ;