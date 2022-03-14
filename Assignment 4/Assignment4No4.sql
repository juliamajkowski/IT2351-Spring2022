-- Purpose create a query that returns the following information from the email_address column in the customers table.
-- a) Email address
-- b) The length of the email address with the alias “Length”
-- c) The location of the “@” sign with the alias “@”
-- d) The email address username (before the “@”) with the alias “Username”
-- e) The email address domain (after the “@”) with the alias “Domain”
-- Julia Majkowski IT2351 03/14/2022

SELECT email_address, CHAR_LENGTH(email_address) AS "Length", LOCATE("@", email_address) AS "@", SUBSTRING_INDEX(email_address, "@", 1) 
AS "Username", SUBSTRING_INDEX(email_address, "@", -1) AS "Domain" FROM customers;
