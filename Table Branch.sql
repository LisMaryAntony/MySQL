/* Attributes for the tables: 

1. Branch
Branch_no - Set as PRIMARY KEY  
Manager_Id  
Branch_address  
Contact_no 
*/

USE Library;

-- Branch Table
CREATE TABLE Branch (Branch_no INT PRIMARY KEY,
    Manager_Id INT,
    Branch_address VARCHAR(255),
    Contact_no VARCHAR(15));
    
DESC Branch;

-- Inserting data into Branch table

INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no) VALUES
(1, 101, 'Pala Civil', '999123456'),
(2, 102, 'Kottayam Collectorate', '999567812'),
(3, 103, 'Ernakulam Junction', '999789034'),
(4, 104, 'Pala B.Ed College', '999101056'),
(5, 105, 'Kottayam Junction', '999672020'),
(6, 106, 'Ernakulam Vytilla', '999833030'),
(7, 107, 'Maharajas Juntion', '999894040'),
(8, 108, 'Muttuchira', '999405050'),
(9, 109, 'Kaduthuruthy', '999036060'),
(10, 110, 'Kuravilangad', '999957070');

SELECT *FROM Branch;