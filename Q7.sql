-- 7. Display the branch numbers and the total count of employees in each branch. 

USE Library;

SELECT Branch_no, COUNT(*) AS Total_Employees 
FROM Employee 
GROUP BY Branch_no;