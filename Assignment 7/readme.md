To delete a cusotmer from the customers table, creating and executing a stored procedure is a smart way to go because 
the procedure will likely be needed again at some point in the future. I would beign the procedure by declaring a variable to hold the name of the customer
to be deleted. Then I would perform the necessary steps to remove that name from the table followed by an If else loop to display a message for 
whether the deletion was successful or not.
