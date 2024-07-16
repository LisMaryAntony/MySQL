/*
3. Books  
ISBN - Set as PRIMARY KEY  
Book_title  
Category  
Rental_Price  
Status [Give yes if book available and no if book not available]  
Author  
Publisher
*/

USE Library;

-- Books Table

CREATE TABLE Books (ISBN VARCHAR(20) PRIMARY KEY,
    Book_title VARCHAR(100),
    Category VARCHAR(50),
    Rental_Price DECIMAL(10, 2),
    Status VARCHAR(3),
    Author VARCHAR(100),
    Publisher VARCHAR(100));
    
DESC Books;

-- Inserting data into Books table
INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher) VALUES
('978-3-16-148410-0', 'Book One', 'Fiction', 10.00, 'Yes', 'Author A', 'Publisher A'),
('978-1-234-56789-7', 'Book Two', 'Non-Fiction', 15.00, 'Yes', 'Author B', 'Publisher B'),
('978-1-4028-9462-6', 'Book Three', 'Fiction', 12.00, 'Yes', 'Author C', 'Publisher C'),
('978-0-300-14424-6', 'Book Four', 'Non-Fiction', 18.00, 'No', 'Author D', 'Publisher D'),
('978-0-7432-7356-5', 'Book Five', 'Science', 20.00, 'Yes', 'Author E', 'Publisher E'),
('978-0-452-28423-4', 'Book Six', 'History', 25.00, 'No', 'Author F', 'Publisher F'),
('978-1-5011-8084-3', 'Book Seven', 'Fiction', 10.00, 'No', 'Author G', 'Publisher G'),
('978-0-06-245773-8', 'Book Eight', 'Non-Fiction', 15.00, 'Yes', 'Author H', 'Publisher H'),
('978-1-4391-4884-6', 'Book Nine', 'Science', 22.00, 'No', 'Author I', 'Publisher I'),
('978-0-385-74073-4', 'Book Ten', 'History', 27.00, 'Yes', 'Author J', 'Publisher J'),
('978-0-316-76920-2', 'Book Eleven', 'Fiction', 13.00, 'Yes', 'Author K', 'Publisher K'),
('978-1-4555-7347-4', 'Book Twelve', 'Non-Fiction', 19.00, 'No', 'Author L', 'Publisher L'),
('978-1-5011-7329-6', 'Book Thirteen', 'Science', 21.00, 'Yes', 'Author M', 'Publisher M'),
('978-0-345-53484-2', 'Book Fourteen', 'History', 24.00, 'Yes', 'Author N', 'Publisher N'),
('978-0-399-16517-6', 'Book Fifteen', 'Fiction', 11.00, 'No', 'Author O', 'Publisher O'),
('978-0-8129-8234-3', 'Book Sixteen', 'Non-Fiction', 16.00, 'No', 'Author P', 'Publisher P'),
('978-0-14-312656-0', 'Book Seventeen', 'Science', 23.00, 'No', 'Author Q', 'Publisher Q'),
('978-0-7432-7357-2', 'Book Eighteen', 'History', 26.00, 'No', 'Author R', 'Publisher R'),
('978-1-5011-8085-0', 'Book Nineteen', 'Fiction', 14.00, 'Yes', 'Author S', 'Publisher S'),
('978-0-06-245774-5', 'Book Twenty', 'Non-Fiction', 17.00, 'No', 'Author T', 'Publisher T');

SELECT *FROM Books;