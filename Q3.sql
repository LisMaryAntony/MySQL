-- 3. Retrieve the book titles and the corresponding customers who have issued those books. 

USE Library;

SELECT B.Book_title, C.Customer_name 
FROM Books B 
JOIN IssueStatus I ON B.ISBN = I.Isbn_book 
JOIN Customer C ON I.Issued_cust = C.Customer_Id;