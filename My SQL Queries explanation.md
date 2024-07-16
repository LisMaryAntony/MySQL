# MySQL

I build a project based on Library Management System using MySQL.
It keeps track of all information about books in the library, their cost, status and total number of books available in the library.

Initially, "CREATE DATABASE" query is used to create a new database named "Library". Then "SHOW DATABASES" query is used to display a list of all databases that are currently available on the MySQL server. After that, "USE" command sets the "Library" database as the default database for the current session.

6 tables are created using "CREATE TABLE" query with specified columns.
________________________________________________________________________
1, "CREATE TABLE" query creates a new table named "Branch" with specified columns including Branch_no - Set as PRIMARY KEY, Manager_Id, Branch_address, and Contact_no. 
2, "CREATE TABLE" query creates a new table named "Employee" with specified columns including Emp_Id – Set as PRIMARY KEY, Emp_name, Position, Salary, Branch_no - Set as FOREIGN KEY and it refer Branch_no in Branch table. 
3, "CREATE TABLE" query creates a new table named "Books" with specified columns including ISBN - Set as PRIMARY KEY, Book_title, Category, Rental_Price, Status (Give yes if book available and no if book not available), Author, Publisher. 
4, "CREATE TABLE" query creates a new table named "Customer" with specified columns including Customer_Id - Set as PRIMARY KEY, Customer_name, Customer_address, Reg_date.
5, "CREATE TABLE" query creates a new table named "IssueStatus" with specified columns including Issue_Id - Set as PRIMARY KEY, Issued_cust – Set as FOREIGN KEY and it refer customer_id in CUSTOMER table  Issued_book_name, Issue_date, Isbn_book – Set as FOREIGN KEY and it should refer isbn in BOOKS table. 
6, "CREATE TABLE" query creates a new table named "ReturnStatus" with specified columns including Return_Id - Set as PRIMARY KEY, Return_cust, Return_book_name, Return_date, Isbn_book2 - Set as FOREIGN KEY and it should refer isbn in BOOKS table . 

Then "DESC" query displays the structure of the particular tables.

Then "INSERT INTO (table_name) VALUES" statement is used to insert new rows into all the table in the database.

-----------------------------
Explanation of each queries:
-----------------------------

Q1: Retrieve the book title, category, and rental price of all available books. 
_______________________________________________________________________________
SELECT Book_title, Category, Rental_Price 
FROM Books 
WHERE Status = 'yes';

Explanation: SELECT: This clause specifies the columns to be retrieved from the table.
             Book_title, Category, Rental_Price: These are the columns to be included in the result set.
             FROM: This clause specifies the table from which to retrieve the data.
             Books: The name of the table from which the data is to be selected.
             WHERE: This clause specifies the condition that must be met for a row to be included in the result set.
             Status = 'yes': This condition filters the rows to include only those where the Status column has a value of 'yes'.

Q2: List the employee names and their respective salaries in descending order of salary. 
________________________________________________________________________________________
SELECT Emp_name, Salary 
FROM Employee 
ORDER BY Salary DESC;

Explanation: SELECT: This clause specifies the columns to be retrieved from the table.
             Emp_name, Salary: These are the columns to be included in the result set.
             FROM: This clause specifies the table from which to retrieve the data.
             Employee: The name of the table from which the data is to be selected.
             ORDER BY: This clause specifies the column(s) by which to sort the result set.
             Salary: The column to sort by.
             DESC: This keyword specifies that the sorting should be in descending order.

Q3: Retrieve the book titles and the corresponding customers who have issued those books. 
__________________________________________________________________________________________
SELECT B.Book_title, C.Customer_name 
FROM Books B 
JOIN IssueStatus I ON B.ISBN = I.Isbn_book 
JOIN Customer C ON I.Issued_cust = C.Customer_Id;

Explanation: SELECT: This clause specifies the columns to be retrieved from the tables.
             B.Book_title, C.Customer_name: These are the columns to be included in the result set. B and C are shotform for the Books and Customer tables, respectively.
             FROM: This clause specifies the primary table from which to start the join.
             Books B: Specifies the Books table and assigns it the shortform B.
             JOIN: This clause specifies an inner join between two tables.
             IssueStatus I: Specifies the IssueStatus table and assigns it the shortform I.
             ON B.ISBN = I.Isbn_book: This condition matches rows from the Books table with rows from the IssueStatus table where the ISBN column in the Books table is                                               equal to the Isbn_book column in the IssueStatus table.
             JOIN: This clause specifies an inner join between two tables.
             Customer C: Specifies the Customer table and assigns it the shortform C.
             ON I.Issued_cust = C.Customer_Id: This condition matches rows from the IssueStatus table with rows from the Customer table where the Issued_cust column in the                                                 IssueStatus table is equal to the Customer_Id column in the Customer table.

Q4: Display the total count of books in each category. 
______________________________________________________
SELECT Category, COUNT(*) AS Total_Books 
FROM Books 
GROUP BY Category;

Explanation: SELECT: This clause specifies the columns to be retrieved from the table.
             Category: This is the column from the Books table that represents the category of each book.
             COUNT(*): This is an aggregate function that counts the number of rows in each group. The * means it counts all rows.
             AS Total_Books: This renames the COUNT(*) result to Total_Books for readability in the output.
             FROM: This clause specifies the table from which to retrieve the data.
             Books: The name of the table from which the data is to be selected.
             GROUP BY: This clause groups the rows that have the same value in the specified column or columns into summary rows.
             Category: The column by which the results will be grouped.

Q5: Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000. 
__________________________________________________________________________________________________________
SELECT Emp_name, Position 
FROM Employee 
WHERE Salary > 50000;

Explanation: SELECT: Specifies the columns to be retrieved from the table.
             Emp_name, Position: Columns from the Employee table that represent the employee's name and position, respectively.
             FROM: Specifies the table from which to retrieve the data.
             Employee: The name of the table from which data is selected.
             WHERE: Filters the rows that meet a specified condition.
             Salary > 50000: Condition specifying that only rows where the Salary column is greater than 50000 will be included in the result set.

Q6:  List the customer names who registered before 2022-01-01 and have not issued any books yet. 
_________________________________________________________________________________________________
SELECT C.Customer_name 
FROM Customer C 
LEFT JOIN IssueStatus I ON C.Customer_Id = I.Issued_cust 
WHERE C.Reg_date < '2022-01-01' AND I.Issued_cust IS NULL;

Explanation: SELECT: Specifies the columns to be retrieved from the table.
             C.Customer_name: Retrieves the Customer_name column from the Customer table.
             FROM: Specifies the primary table from which to retrieve the data.
             Customer C: Shortform the Customer table as C for easier reference in the query.
             LEFT JOIN: Performs a left join between the Customer table (C) and the IssueStatus table (I).
             ON C.Customer_Id = I.Issued_cust: Specifies the join condition where the Customer_Id column in the Customer table matches the Issued_cust column in the                                                         IssueStatus table.
             WHERE: Filters the rows based on specified conditions.
             C.Reg_date < '2022-01-01': Condition that checks if the registration date (Reg_date) of customers (C) is before January 1st, 2022.
             I.Issued_cust IS NULL: Additional condition that checks if the Issued_cust column in the IssueStatus table (I) is NULL, indicating that no books have been                                           issued by that customer.

Q7: Display the branch numbers and the total count of employees in each branch. 
________________________________________________________________________________
SELECT Branch_no, COUNT(*) AS Total_Employees 
FROM Employee 
GROUP BY Branch_no;

Explanation: SELECT: Specifies the columns to be retrieved from the table.
             Branch_no: The column from the Employee table that represents the branch number to group by.
             COUNT(*): An aggregate function that counts the number of rows in each group. The * means it counts all rows.
             AS Total_Employees: Renames the result of the COUNT(*) function to Total_Employees for better readability in the output.
             FROM: Specifies the table from which to retrieve the data.
             Employee: The name of the table from which data is selected.
             GROUP BY: Groups the rows that have the same value in the specified column or columns into summary rows.
             Branch_no: The column by which the results will be grouped.

Q8:  Display the names of customers who have issued books in the month of June 2023.
_____________________________________________________________________________________
SELECT C.Customer_name 
FROM Customer C 
JOIN IssueStatus I ON C.Customer_Id = I.Issued_cust 
WHERE I.Issue_date BETWEEN '2023-06-01' AND '2023-06-30';

Explanation: SELECT: Specifies the columns to be retrieved from the table.
             C.Customer_name: Retrieves the Customer_name column from the Customer table.
             FROM: Specifies the primary table from which to retrieve the data.
             Customer C: Shortform the Customer table as C for easier reference in the query.
             JOIN: Performs an inner join between the Customer table (C) and the IssueStatus table (I).
             ON C.Customer_Id = I.Issued_cust: Specifies the join condition where the Customer_Id column in the Customer table matches the Issued_cust column in the                                                         IssueStatus table.
             WHERE: Filters the rows based on specified conditions.
             I.Issue_date BETWEEN '2023-06-01' AND '2023-06-30': Condition that checks if the Issue_date column in the IssueStatus table (I) falls within the specified date                                                                   range ('2023-06-01' to '2023-06-30').

Q9:  Retrieve book_title from book table containing history. 
_____________________________________________________________
SELECT Book_title 
FROM Books 
WHERE Category LIKE '%history%';

Explanation: SELECT: Specifies the columns to be retrieved from the table.
             Book_title: Retrieves the Book_title column from the Books table.
             FROM: Specifies the table from which to retrieve the data.
             Books: The name of the table from which data is selected.
             WHERE: Filters the rows based on specified conditions.
             Category LIKE '%history%': Condition that checks if the Category column in the Books table contains the substring "history".

Q10: Retrieve the branch numbers along with the count of employees for branches having more than 5 employees.
_____________________________________________________________________________________________________________
SELECT Branch_no, COUNT(*) AS Total_Employees 
FROM Employee 
GROUP BY Branch_no 
HAVING COUNT(*) > 5;

Explanation: SELECT: Specifies the columns to be retrieved from the table.
             Branch_no: The column from the Employee table that represents the branch number.
             COUNT(*): An aggregate function that counts the number of rows in each group. Here, it counts the number of employees for each branch.
             AS Total_Employees: Renames the result of the COUNT(*) function to Total_Employees for better readability in the output.
             FROM: Specifies the table from which to retrieve the data.
             Employee: The name of the table from which data is selected.
             GROUP BY: Groups the rows that have the same value in the specified column (Branch_no) into summary rows.
             Branch_no: The column by which the results will be grouped.
             HAVING: Filters the groups based on specified conditions after the GROUP BY clause has grouped the rows.
             COUNT(*) > 5: Condition that specifies to include only those groups (branches) where the count of employees (COUNT(*)) is greater than 5.

Q11: Retrieve the names of employees who manage branches and their respective branch addresses.
________________________________________________________________________________________________
SELECT E.Emp_name, B.Branch_address 
FROM Employee E 
JOIN Branch B ON E.Emp_Id = B.Manager_Id;

Explanation: SELECT: Specifies the columns to be retrieved from the tables.
             E.Emp_name: Retrieves the Emp_name column from the Employee table.
             B.Branch_address: Retrieves the Branch_address column from the Branch table.
             FROM: Specifies the primary table from which to retrieve the data.
             Employee E: Shortform the Employee table as E for easier reference in the query.
             JOIN: Performs an inner join between the Employee table (E) and the Branch table (B).
             ON E.Emp_Id = B.Manager_Id: Specifies the join condition where the Emp_Id column in the Employee table matches the Manager_Id column in the Branch table.

Q12: Display the names of customers who have issued books with a rental price higher than Rs. 25.
__________________________________________________________________________________________________
SELECT DISTINCT C.Customer_name 
FROM Customer C 
JOIN IssueStatus I ON C.Customer_Id = I.Issued_cust 
JOIN Books B ON I.Isbn_book = B.ISBN 
WHERE B.Rental_Price > 25;

Explanation: SELECT DISTINCT: Specifies that only unique values of Customer_name should be returned.
             C.Customer_name: Retrieves the Customer_name column from the Customer table.
             FROM: Specifies the primary table from which to retrieve the data.
             Customer C: Shortform the Customer table as C for easier reference in the query
             JOIN: Performs an inner join between the Customer table (C) and the IssueStatus table (I).
             ON C.Customer_Id = I.Issued_cust: Specifies the join condition where the Customer_Id column in the Customer table matches the Issued_cust column in the                                                         IssueStatus table.
             JOIN: Performs another inner join, this time between the IssueStatus table (I) and the Books table (B).
             ON I.Isbn_book = B.ISBN: Specifies the join condition where the Isbn_book column in the IssueStatus table matches the ISBN column in the Books table.
             WHERE: Filters the rows based on specified conditions.
             B.Rental_Price > 25: Condition that checks if the Rental_Price column in the Books table (B) is greater than 25.
             
