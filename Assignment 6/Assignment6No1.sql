-- Purpose create a query that that creates and calls a stored procedure named ProductCount. 
-- Julia Majkowski IT2351 04/08/2022

USE julia_guitar_shop;
DROP PROCEDURE IF EXISTS ProductCount;
-- Change statement delimiter  to // 
DELIMITER //
CREATE PROCEDURE ProductCount()
BEGIN 
-- declare a decimal to hold the output of the count
	DECLARE products_var INT;
    -- assign the count function into products_var
    SELECT COUNT(product_id)
    INTO products_var
    FROM products;
    -- output the selected message based on the value of products_var
    IF products_var >= 18 THEN
    SELECT CONCAT(products_var, ' The number of products is greater than or equal to 18') AS message;
    ELSE SELECT 'The number of products is less than 18' AS message;
    END IF;
    END//
    -- Change statement delimiter from // to semicolon
    DELIMITER ;
    Call ProductCount()