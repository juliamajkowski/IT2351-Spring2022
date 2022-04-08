-- Purpose create a query that creates and calls a stored function named new_price
-- Julia Majkowski IT2351 04/08/2022
DELIMITER //
-- create function  taking in a parameter of item id
CREATE FUNCTION new_price
(
item_id_param INT
)
-- set return type to formatted decimal since the value is displayed as a monetary amount
RETURNS DECIMAL(9,2)
-- set as deterministic since we want it to always calcullate data the same way
DETERMINISTIC READS SQL DATA
BEGIN
DECLARE new_price_var DECIMAL(9,2);
-- calculate new price based on list price and discount amount
SELECT item_price - discount_amount
INTO new_price_var
FROM order_items
WHERE item_id = item_id_param;

RETURN new_price_var;
END//
-- call function
SELECT order_id, item_price, new_price(item_id) AS new_item_price
FROM order_items;