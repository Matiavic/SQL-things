--Ejercicio 10
--Número de ordenes por clientes


USE Northwind
GO

SELECT c.CompanyName,
(SELECT COUNT(OrderID) FROM [Orders] o 
where c.CustomerID = o.CustomerID ) as [Number of orders]
FROM [Customers] c
ORDER BY   [Number of orders] DESC
