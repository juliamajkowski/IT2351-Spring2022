-- Purpose create a query that creates an event that inserts a test row in the categories table just one time. 
-- Show all the events in the guitar database and, drop the event that you created. Submit screenshots as well as your code for all of the commands issued. 
-- Julia Majkowski IT2351 04/19/2022

SET GLOBAL event_scheduler = ON;
-- turn on event scheduler
DELIMITER //
CREATE EVENT insert_test_row
-- create event 
ON SCHEDULE AT NOW() 
-- set schedule to execute now
DO BEGIN
	INSERT INTO categories(catefory_id, category_name) VALUES (20, "test");
    -- insert into categories
END//