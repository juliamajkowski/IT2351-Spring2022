-- Purpose create a query that returns these columns from the Products table:
-- a) The list_price column
-- b) A column that uses the FORMAT function to return the list_price column with 1 digit to the right of the decimal point
-- c) A column that uses the CONVERT function to return the list_price column as a signed integer
-- d) A column that uses the CAST function to return the list_price column as a signed integer 
-- Julia Majkowski IT2351 03/14/2022

SELECT list_price, FORMAT(list_price, 1) AS "Price with Decimal", CONVERT(list_price, SIGNED) AS "Signed Int Convert", 
CAST(list_price AS SIGNED) AS "Signed Int Cast" FROM products;