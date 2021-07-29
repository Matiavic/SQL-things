--Ejercicio 15
--¿Cuántos empleados son mmayores de 70 años?


USE Northwind
GO

SELECT FirstName, LastName, Title,
DATEDIFF(YEAR, BirthDate, GETDATE()) AS AGE
FROM [Employees]
WHERE DATEDIFF(YEAR, BirthDate, GETDATE()) >= 70