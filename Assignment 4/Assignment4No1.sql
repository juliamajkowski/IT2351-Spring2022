-- Purpose create a query that returns the same result set as this SELECT statement, replacing the join with a subquery that uses the IN keyword.
-- SELECT DISTINCT category_name FROM categories c JOIN products p  ON c.category_id = p.category_id ORDER BY category_name
-- Julia Majkowski IT2351 03/14/2022

SELECT DISTINCT category_name FROM categories WHERE category_id IN (SELECT category_id FROM products) ORDER BY category_name;
