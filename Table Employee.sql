/*
2. Employee  
Emp_Id – Set as PRIMARY KEY  
Emp_name  
Position  
Salary
Branch_no - Set as FOREIGN KEY and it refer Branch_no in Branch table  
*/

USE Library;

-- Employee Table
CREATE TABLE Employee (Emp_Id INT PRIMARY KEY,
    Emp_name VARCHAR(100),
    Position VARCHAR(50),
    Salary DECIMAL(10, 2),
    Branch_no INT,
    FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no));
   
DESC Employee;
   
    -- Inserting data into Employee table
INSERT INTO Employee VALUES
(1, 'Alice Smith', 'Librarian', 60000.00, 1),
(2, 'Bob Johnson', 'Assistant', 40000.00, 1),
(3, 'Charlie Brown', 'Librarian', 62000.00, 2),
(4, 'David Wilson', 'Assistant', 42000.00, 2),
(5, 'Eve Adams', 'Manager', 80000.00, 3),
(6, 'Frank Harris', 'Clerk', 35000.00, 3),
(7, 'Grace Lee', 'Librarian', 59000.00, 4),
(8, 'Hank Walker', 'Assistant', 41000.00, 4),
(9, 'Ivy Martinez', 'Manager', 83000.00, 5),
(10, 'Jack Lewis', 'Clerk', 34000.00, 5),
(11, 'Karen Young', 'Librarian', 57000.00, 6),
(12, 'Leo Scott', 'Assistant', 43000.00, 6),
(13, 'Mia King', 'Manager', 79000.00, 7),
(14, 'Noah Wright', 'Clerk', 36000.00, 7),
(15, 'Olivia Baker', 'Librarian', 61000.00, 8),
(16, 'Paul Allen', 'Assistant', 44000.00, 8),
(17, 'Quinn Carter', 'Manager', 81000.00, 9),
(18, 'Ryan Foster', 'Clerk', 33000.00, 9),
(19, 'Sophia Diaz', 'Librarian', 56000.00, 10),
(20, 'Thomas Hill', 'Assistant', 45000.00, 10);

SELECT *FROM Employee;