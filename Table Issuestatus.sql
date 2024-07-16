/*
5. IssueStatus  
Issue_Id - Set as PRIMARY KEY  
Issued_cust – Set as FOREIGN KEY and it refer customer_id in CUSTOMER table  Issued_book_name 
Issue_date 
Isbn_book – Set as FOREIGN KEY and it should refer isbn in BOOKS table 
*/

USE Library;

-- IssueStatus Table
CREATE TABLE IssueStatus (Issue_Id INT PRIMARY KEY,
    Issued_cust INT,
    Issued_book_name VARCHAR(255),
    Issue_date DATE,
    Isbn_book VARCHAR(20),
    FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN));
    
DESC IssueStatus;

-- Inserting data into IssueStatus table
INSERT INTO IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book) VALUES
(1, 1, 'Book One', '2020-06-01', '978-3-16-148410-0'),
(2, 2, 'Book Two', '2019-12-15', '978-1-234-56789-7'),
(3, 3, 'Book One', '2022-04-15', '978-3-16-148410-0'),
(4, 4, 'Book Two', '2023-05-20', '978-1-234-56789-7'),
(5, 5, 'Book Three', '2023-02-05', '978-1-4028-9462-6'),
(6, 6, 'Book Four', '2022-08-15', '978-0-300-14424-6'),
(7, 7, 'Book Five', '2022-08-01', '978-0-7432-7356-5'),
(8, 8, 'Book Six', '2022-09-10', '978-0-452-28423-4'),
(9, 9, 'Book Seven', '2023-10-25', '978-1-5011-8084-3'),
(10, 10, 'Book Eight', '2023-11-05', '978-0-06-245773-8'),
(11, 11, 'Book Nine', '2020-12-15', '978-1-4391-4884-6'),
(12, 12, 'Book Ten', '2023-04-25', '978-0-385-74073-4'),
(13, 13, 'Book Eleven', '2023-05-05', '978-0-316-76920-2'),
(14, 14, 'Book Twelve', '2023-05-15', '978-1-4555-7347-4'),
(15, 15, 'Book Thirteen', '2021-05-25', '978-1-5011-7329-6'),
(16, 16, 'Book Fourteen', '2023-06-05', '978-0-345-53484-2'),
(17, 17, 'Book Fifteen', '2023-06-15', '978-0-399-16517-6'),
(18, 18, 'Book Sixteen', '2019-07-25', '978-0-8129-8234-3'),
(19, 19, 'Book Seventeen', '2023-08-05', '978-0-14-312656-0'),
(20, 20, 'Book Eighteen', '2023-09-15', '978-0-7432-7357-2'),
(21, 21, 'Book One', '2022-01-01', '978-3-16-148410-0'),
(22, 21, 'Book Two', '2021-12-15', '978-1-234-56789-7'),
(23, 23, 'Book One', '2018-02-15', '978-3-16-148410-0'),
(24, 20, 'Book Two', '2019-11-20', '978-1-234-56789-7'),
(25, 25, 'Book Three', '2021-06-05', '978-1-4028-9462-6'),
(26, 1, 'Book Four', '2023-12-15', '978-0-300-14424-6'),
(27, 2, 'Book Five', '2024-03-01', '978-0-7432-7356-5'),
(28, 3, 'Book Six', '2024-03-10', '978-0-452-28423-4'),
(29, 4, 'Book Seven', '2024-03-25', '978-1-5011-8084-3'),
(30, 5, 'Book Eight', '2024-04-05', '978-0-06-245773-8'),
(31, 6, 'Book Nine', '2024-04-15', '978-1-4391-4884-6'),
(32, 7, 'Book Ten', '2024-04-25', '978-0-385-74073-4'),
(33, 8, 'Book Eleven', '2024-05-05', '978-0-316-76920-2'),
(34, 9, 'Book Twelve', '2024-05-15', '978-1-4555-7347-4'),
(35, 10, 'Book Thirteen', '2024-05-25', '978-1-5011-7329-6'),
(36, 11, 'Book Fourteen', '2024-05-15', '978-0-345-53484-2'),
(37, 12, 'Book Fifteen', '2024-05-13', '978-0-399-16517-6'),
(38, 13, 'Book Sixteen', '2024-05-25', '978-0-8129-8234-3'),
(39, 14, 'Book Seventeen', '2024-06-05', '978-0-14-312656-0'),
(40, 15, 'Book Eighteen', '2024-06-05', '978-0-7432-7357-2');

SELECT *FROM IssueStatus;