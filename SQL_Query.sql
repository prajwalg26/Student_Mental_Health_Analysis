CREATE DATABASE [Tableau Project 1]

USE [Tableau Project 1] 

SELECT * 
FROM [dbo].[Depression+Student+Dataset]

SELECT Gender, COUNT(*)
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Gender

UPDATE [dbo].[Depression+Student+Dataset]
SET Gender = 'F' WHERE Gender = 'Female'

UPDATE [dbo].[Depression+Student+Dataset]
SET Gender = 'M' WHERE Gender = 'Male'


SELECT Age, COUNT(*)
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Age 
ORDER BY Age DESC

ALTER TABLE [dbo].[Depression+Student+Dataset]
ADD Age_Group VARCHAR(max)

UPDATE [dbo].[Depression+Student+Dataset]
SET Age_Group = 
CASE WHEN Age BETWEEN 18 AND 24 THEN 'A1'
ELSE CASE WHEN Age BETWEEN 25 AND 32 THEN 'A2'
ELSE 'A3' END END 

SELECT * 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME LIKE 'Depression+Student+Dataset'

SELECT * 
FROM [dbo].[Depression+Student+Dataset]

ALTER TABLE [dbo].[Depression+Student+Dataset]
ADD Index_Column INT IDENTITY(1,1) 

ALTER TABLE [dbo].[Depression+Student+Dataset]
ALTER COLUMN [Depression] VARCHAR(max)

UPDATE [dbo].[Depression+Student+Dataset]
SET Depression = 'No' WHERE Depression = '0'

UPDATE [dbo].[Depression+Student+Dataset]
SET Depression = 'Yes' WHERE Depression = '1'