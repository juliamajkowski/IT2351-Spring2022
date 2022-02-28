-- Purpose create a query that continues from part D using an IF GROUPING to remove null values
-- Julia Majkowski IT2351 02/28/2022

SELECT IF(GROUPING(category_name) = 1, 'Grand Total', category_name) AS category_name, 
IF(GROUPING(product_name) = 1, 'Category Total', product_name) AS product_name , SUM(quantity) 
FROM categories c INNER JOIN products p on c.category_id = p.category_id INNER JOIN order_items o on p.product_id = o.product_id 
GROUP BY category_name, product_name WITH ROLLUP;