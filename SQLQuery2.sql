CREATE DATABASE RESTORAN
USE RESTORAN

CREATE TABLE Meals(
Id INT PRIMARY KEY IDENTITY,
[Name] NVARCHAR (20),
Price DECIMAL (10,2)
)

CREATE TABLE Tables(
Id INT PRIMARY KEY IDENTITY,
[No] INT 
)
CREATE TABLE Orders( 
Id INT,
TableId INT,
MealId INT,
[Date] DATE
)

ALTER TABLE Orders
ADD FOREIGN KEY(TableId) REFERENCES Tables (Id)

ALTER TABLE Orders
ADD FOREIGN KEY(MealId) REFERENCES Meals(Id)

INSERT INTO Meals ([Name], Price)
VALUES 
('Pizza', 12.50),
('Burger', 8.00),
('Pasta', 10.75),
('Salad', 6.20),
('Steak', 18.90);


INSERT INTO Tables ([No])
VALUES 
(1),
(2),
(3),
(4),
(5);


INSERT INTO Orders (Id, TableId, MealId, [Date])
VALUES
(1, 1, 2, '2025-01-10'),
(2, 2, 1, '2025-01-10'),
(3, 3, 4, '2025-01-11'),
(4, 1, 5, '2025-01-11'),
(5, 4, 3, '2025-01-12');


SELECT * FROM Meals;

SELECT 

SELECT COUNT * FROM  Tables;




SELECT *FROM Orders;






 