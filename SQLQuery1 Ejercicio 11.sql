--Ejercicio 11
--Encuentra la duración de dias entre órdenes de cada cliente


USE Northwind
GO

SELECT a.CustomerID, a.OrderDate, b.OrderDate,
DATEDIFF(DAY, a.OrderDate, b.OrderDate) as [Days between two orders]
FROM [Orders] a
INNER JOIN [Orders] b ON a.OrderID = b.OrderID - 1