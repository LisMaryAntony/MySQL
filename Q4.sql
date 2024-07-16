-- 4. Display the total count of books in each category.

USE Library;

SELECT Category, COUNT(*) AS Total_Books 
FROM Books 
GROUP BY Category;