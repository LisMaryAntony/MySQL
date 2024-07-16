/*
4. Customer  
Customer_Id - Set as PRIMARY KEY  
Customer_name  
Customer_address  
Reg_date 
*/

USE Library;

-- Customer Table
CREATE TABLE Customer (Customer_Id INT PRIMARY KEY,
    Customer_name VARCHAR(100),
    Customer_address VARCHAR(255),
    Reg_date DATE);
    
DESC Customer;

-- Inserting data into Customer table
INSERT INTO Customer VALUES
(1, 'Antony Mathew', 'Pallivathuckal', '2020-01-01'),
(2, 'Emmanual Philip', 'Thekkevayalil', '2019-12-15'),
(3, 'Aleena Iju', 'Puthenpurackal', '2022-03-01'),
(4, 'Binoy Davis', 'Puthuchira', '2023-04-12'),
(5, 'Jancy George', 'Mukalel', '2022-05-23'),
(6, 'Shilpa Shaji', 'Manachira', '2022-06-15'),
(7, 'Albert Joseph', 'Kollapallil', '2022-07-18'),
(8, 'Alen Binoy', 'Mukidikatil', '2022-08-20'),
(9, 'Amal John', 'Kallukalayil', '2023-09-25'),
(10, 'Sreejith Anil', 'Sreevilasam', '2023-10-05'),
(11, 'Anila Mathew', 'Pallivathukal', '2020-11-12'),
(12, 'Ashwathi Thampi', 'Amaravathi', '2022-12-01'),
(13, 'Aswin S', 'Devinilayam', '2023-01-10'),
(14, 'Jerry Joseph', 'Mananchira', '2023-02-14'),
(15, 'Linju George', 'Palathara', '2021-03-19'),
(16, 'David John', 'Chenganasseril', '2024-04-22'),
(17, 'Misha Hari', 'Harivandam', '2023-05-25'),
(18, 'Lakshmi S', 'Nilayam', '2019-06-17'),
(19, 'Sandra Gijo', 'Puthenpurakal', '2023-07-19'),
(20, 'Joseph Andrew', 'Cheriyamkunnel', '2023-08-21'),
(21, 'Radhika KS', 'Jalaveed', '2021-12-15'),
(22, 'Christy George', 'Pulikan', '2021-11-30'),
(23, 'Tina Sebastian', 'Marangolil', '2018-01-30'),
(24, 'Priya Mary', 'Kizhakkevattukulam', '2019-10-20'),
(25, 'Megha Manoj', 'Devinivas', '2021-05-30');

SELECT *FROM customer;