-- Purpose create a query that that returns these columns: The count of the number of orders in the orders table and the sum of the “Ship Value” 
-- Julia Majkowski IT2351 02/28/2022

SELECT COUNT(order_id) AS "number of orders", SUM(ship_amount) AS "ship value" FROM orders;

