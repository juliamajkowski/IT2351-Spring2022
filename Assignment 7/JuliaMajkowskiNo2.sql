-- Purpose create a query that creates a trigger named products_before_update that checks the new value for the list_price column of the
-- products table. This trigger should raise an appropriate error if the UnitPrice is greater than 1200 or less than 100
-- Julia Majkowski IT2351 04/18/2022
USE julia_guitar_shop;
DELIMITER //
CREATE TRIGGER products_before_update -- create triger and provide a name
	BEFORE UPDATE ON products -- indicate trigger should run before update
    FOR EACH ROW
BEGIN
DECLARE list_price DECIMAL(10,2);
	SET list_price = NEW.list_price; -- indicates list_price is to be updated
    
	IF NEW.list_price > 1200 OR NEW.list_price < 100 THEN
		SIGNAL SQLSTATE 'HY000'
			SET MESSAGE_TEXT = 'List price is out of bounds.';
	END IF;
END //
DELIMITER ;
UPDATE products
SET list_price = 2500
WHERE product_id = 1;
