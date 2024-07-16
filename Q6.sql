-- 6. List the customer names who registered before 2022-01-01 and have not issued any books yet. 

USE Library;

SELECT C.Customer_name 
FROM Customer C 
LEFT JOIN IssueStatus I ON C.Customer_Id = I.Issued_cust 
WHERE C.Reg_date < '2022-01-01' AND I.Issued_cust IS NULL;