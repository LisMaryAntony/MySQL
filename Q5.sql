-- 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000. 

USE Library;

SELECT Emp_name, Position 
FROM Employee 
WHERE Salary > 50000;