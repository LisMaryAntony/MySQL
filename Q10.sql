-- 10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees

USE Library;

SELECT Branch_no, COUNT(*) AS Total_Employees 
FROM Employee 
GROUP BY Branch_no 
HAVING COUNT(*) > 5;