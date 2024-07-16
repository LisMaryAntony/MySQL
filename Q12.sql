-- 12.  Display the names of customers who have issued books with a rental price higher than Rs. 25.

USE Library;

SELECT DISTINCT C.Customer_name 
FROM Customer C 
JOIN IssueStatus I ON C.Customer_Id = I.Issued_cust 
JOIN Books B ON I.Isbn_book = B.ISBN 
WHERE B.Rental_Price > 25;