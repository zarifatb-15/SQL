--ddl
--create alter drop truncate
CREATE DATABASE PA401
DROP DATABASE PA401
USE PA401
DROP DATABASE PA401
USE Master
ALTER DATABASE PA401 SET SINGLE_USER WITH ROLLBACK IMMEDIATE
DROP DATABASE PA401
CREATE TABLE Students
(
Id INT,
[Name] NVARCHAR(20),
Age INT
) 
USE PA401
DROP TABLE Students
EXEC sp_rename 'Students','Student'
EXEC sp_rename 'Student','Students'
EXEC sp_rename 'Students.Name','Ad'
EXEC sp_rename 'Students.Name','Name'
USE PA401
EXEC sp_rename 'Students.Ad','Name'
--dml
--insert/delete/update/      --dql /selecet
SELECT*FROM Students
SELECT * FROM Students WHERE Id=3
SELECT*FROM Students WHERE [Name]='Zarifa'
SELECT*FROM Students WHERE Age>18
SELECT*FROM Students WHERE Id BETWEEN 1 AND 2
SELECT *FROM Students WHERE Id IN (1)
SELECT*FROM Students WHERE Id=4 OR [Name]='Zara'
SELECT*FROM Students WHERE [Name] LIKE '%Z%'
SELECT*FROM Students WHERE [Name] LIKE '%AV%'
SELECT *FROM Students WHERE Age LIKE '%5%'
SELECT Id FROM Students
SELECT Id StudentId FROM Students
SELECT Id ClassID, Age FROM Students
SELECT Id studentid, [Name] studentname, Age studentage FROM Students
use PA401

DELETE FROM Students WHERE [Name] LIKE 'Z%'
SELECT *FROM Students
UPDATE Students SET [Name]='Ayel' WHERE Id=2
UPDATE Students SET [Name]='Aysel' WHERE Id=2
INSERT INTO Students (Id,[Name],Age)
VALUES (1,'Zarifa', 25)
INSERT INTO Students(Id,[Name],Age)
VALUES(4, 'Aytan',27)
DELETE FROM Students WHERE Id=4
