SELECT DISTINCT R.name  FROM Restaurant_info R WHERE restaurant_id IN
(
SELECT M.restaurant_id AS RestaurantID FROM MenuItems M WHERE M.price >10
);