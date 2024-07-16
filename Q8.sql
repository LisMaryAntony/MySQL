-- 8. Display the names of customers who have issued books in the month of June 2023.

USE Library;

SELECT C.Customer_name 
FROM Customer C 
JOIN IssueStatus I ON C.Customer_Id = I.Issued_cust 
WHERE I.Issue_date BETWEEN '2023-06-01' AND '2023-06-30';