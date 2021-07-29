--Ejercicio 13
--¿Cuantos empleados tienes por posicion y por ciudad?


USE Northwind
GO

SELECT title, city, count(EmployeeID)
FROM [Employees]
GROUP BY title, city, region