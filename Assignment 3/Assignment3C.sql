-- Purpose create a query that returns one row for each category (group by) that has products (inner join) with these columns:
-- a) The Category Name column from the Categories table
-- b) The count of the products in the Products table (join these two tables)
-- c) The sum of the quantity for the products from the order items table
-- d) Sort the result set so the category with the most products appears first
-- Julia Majkowski IT2351 02/28/2022

SELECT category_name, COUNT(product_name) AS "Number of products", SUM(quantity) AS "Orders" FROM categories c 
INNER JOIN products p on c.category_id = p.category_id INNER JOIN order_items o on p.product_id = o.product_id 
GROUP BY(category_name) ORDER BY COUNT(quantity) DESC;