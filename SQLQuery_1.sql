CREATE DATABASE MARKET
USE MARKET
CREATE TABLE Product(
    Id INT PRIMARY KEY,
    [Name] nvarchar (20),
    Price DECIMAL (10,2)
)
ALTER TABLE Product
ADD Brand nvarchar(20)
INSERT INTO Product (Id, Name, Price, Brand)
VALUES 
(2, 'Bread', 0.80, 'BakuBread'),
(3, 'Cheese', 5.40, 'Milla'),
(4, 'Butter', 3.20, 'President')
