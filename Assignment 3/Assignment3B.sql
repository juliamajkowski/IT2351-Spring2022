-- Purpose create a query that shows the count of products and the maximum product item price
-- Julia Majkowski IT2351 02/28/2022

SELECT COUNT(product_id), MAX(list_price) FROM products;