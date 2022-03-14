-- Purpose create a query that answers the question: What products are sold that are above the average item price.
-- Including product name as well as the item_prices.
-- **hint – first use a subquery to show the product names replacing a join as above and then add the subquery to control the prices 
-- Julia Majkowski IT2351 03/14/2022

SELECT product_name, list_price FROM products WHERE product_id IN (SELECT product_id FROM order_items
 WHERE item_price > (SELECT AVG(item_price) FROM order_items));