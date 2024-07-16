-- 1. Retrieve the book title, category, and rental price of all available books.

USE Library;

SELECT Book_title, Category, Rental_Price 
FROM Books 
WHERE Status = 'yes';