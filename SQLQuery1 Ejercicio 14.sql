--Ejercicio 14
--¿Cuánto tiempo llevan trabajando tus empleados?


USE Northwind
GO

SELECT LastName, FirstName, Title,
DATEDIFF(YEAR, HireDate, GETDATE()) AS [Work years in the company]
FROM [Employees]