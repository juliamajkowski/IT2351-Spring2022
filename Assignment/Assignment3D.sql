-- Purpose create a query that adds grouping by product name and the “with rollup” operator from part C
-- Julia Majkowski IT2351 02/28/2022

SELECT category_name, product_name, COUNT(product_name) AS "Number of products", SUM(quantity) AS "Orders" FROM categories c 
INNER JOIN products p on c.category_id = p.category_id INNER JOIN order_items o on p.product_id = o.product_id 
GROUP BY category_name, product_name WITH ROLLUP;