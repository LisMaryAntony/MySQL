-- 9. Retrieve book_title from book table containing history. 

USE Library;

SELECT Book_title 
FROM Books 
WHERE Category LIKE '%history%';