-- 11. Retrieve the names of employees who manage branches and their respective branch addresses.

USE Library;

SELECT E.Emp_name, B.Branch_address 
FROM Employee E 
JOIN Branch B ON E.Emp_Id = B.Manager_Id;