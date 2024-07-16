/*
6. ReturnStatus  
Return_Id - Set as PRIMARY KEY  
Return_cust  
Return_book_name  
Return_date  
Isbn_book2 - Set as FOREIGN KEY and it should refer isbn in BOOKS table 
*/

USE Library;

-- ReturnStatus Table
CREATE TABLE ReturnStatus (Return_Id INT PRIMARY KEY,
    Return_cust INT,
    Return_book_name VARCHAR(255),
    Return_date DATE,
    Isbn_book2 VARCHAR(20),
    FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN));
   
DESC ReturnStatus;

-- Inserting data into ReturnStatus table
INSERT INTO ReturnStatus (Return_Id, Return_Cust, Return_book_name, Return_date, Isbn_book2) VALUES
(1, 1, 'Book One', '2021-06-01', '978-3-16-148410-0'),
(2, 2, 'Book Two', '2020-12-15', '978-1-234-56789-7'),
(3, 3, 'Book One', '2023-04-15', '978-3-16-148410-0'),
(4, 4, 'Book Two', '2024-05-20', '978-1-234-56789-7'),
(5, 5, 'Book Three', '2024-02-05', '978-1-4028-9462-6'),
(6, 6, 'Book Four', '2023-08-15', '978-0-300-14424-6'),
(7, 7, 'Book Five', '2023-08-01', '978-0-7432-7356-5'),
(8, 8, 'Book Six', '2023-09-10', '978-0-452-28423-4'),
(9, 9, 'Book Seven', '2024-05-25', '978-1-5011-8084-3'),
(10, 10, 'Book Eight', '2024-06-05', '978-0-06-245773-8'),
(11, 11, 'Book Nine', '2021-12-15', '978-1-4391-4884-6'),
(12, 12, 'Book Ten', '2024-04-25', '978-0-385-74073-4'),
(13, 13, 'Book Eleven', '2024-05-05', '978-0-316-76920-2'),
(14, 14, 'Book Twelve', '2024-05-15', '978-1-4555-7347-4'),
(15, 15, 'Book Thirteen', '2022-05-25', '978-1-5011-7329-6'),
(16, 16, 'Book Fourteen', '2024-06-05', '978-0-345-53484-2'),
(17, 17, 'Book Fifteen', '2024-06-15', '978-0-399-16517-6'),
(18, 18, 'Book Sixteen', '2020-07-25', '978-0-8129-8234-3'),
(19, 19, 'Book Seventeen', '2024-06-05', '978-0-14-312656-0'),
(20, 20, 'Book Eighteen', '2024-05-15', '978-0-7432-7357-2'),
(21, 21, 'Book One', '2023-01-01', '978-3-16-148410-0'),
(22, 22, 'Book Two', '2022-12-15', '978-1-234-56789-7'),
(23, 23, 'Book One', '2019-02-15', '978-3-16-148410-0'),
(24, 24, 'Book Two', '2022-11-20', '978-1-234-56789-7'),
(25, 25, 'Book Three', '2023-12-05', '978-1-4028-9462-6');

SELECT *FROM ReturnStatus;