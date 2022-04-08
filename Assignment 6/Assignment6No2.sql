-- Purpose create a query that Write a script that creates and calls a stored procedure named InsertCategory. 
-- Julia Majkowski IT2351 04/08/2022

DROP PROCEDURE IF EXISTS InsertCategory;
DELIMITER // 
CREATE PROCEDURE InsertCategory()
BEGIN
	DECLARE duplicate_entry_for_key TINYINT DEFAULT FALSE;
    -- Declare variable to hold value
    DECLARE CONTINUE HANDLER FOR 1062
    SET duplicate_entry_for_key  = TRUE;
    -- Declare handler
    INSERT INTO categories VALUES (5,'Winds');
    -- Select message to display based on final value
    IF duplicate_entry_for_key = TRUE THEN
    SELECT 'Row was not inserted - duplicate entry.' AS message;
    ELSE
    SELECT '1 row was inserted.' AS message;
    END IF;
    END//
    DELIMITER ;
    
    call InsertCategory();