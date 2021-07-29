--Ejercicio 15
--�Cu�ntos empleados son mmayores de 70 a�os?


USE Northwind
GO

SELECT FirstName, LastName, Title,
DATEDIFF(YEAR, BirthDate, GETDATE()) AS AGE
FROM [Employees]
WHERE DATEDIFF(YEAR, BirthDate, GETDATE()) >= 70