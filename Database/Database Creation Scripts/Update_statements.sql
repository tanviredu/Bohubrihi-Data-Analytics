

#### update order table
UPDATE orders a 
JOIN user_info b ON b.id = a.user_id
SET order_date = DATE_ADD(registration_date, INTERVAL 1 DAY)
WHERE a.order_date<b.registration_date;


###update payment_transactoin table

UPDATE payment_transactions a 
JOIN orders b ON b.order_id = a.order_id
SET payment_date = DATE_ADD(order_date, INTERVAL 30 SECOND);


#Maintaining consistency between item's price and subtotal


UPDATE order_items a 
JOIN menuitems b ON a.item_id = b.item_id 
SET subtotal = quantity*b.price;

UPDATE orders a 
JOIN 
(
	SELECT order_id, SUM(subtotal) total_amount_b
	FROM order_items 
	GROUP BY 1
) b ON a.order_id = b.order_id 
SET total_amount = total_amount_b ;

