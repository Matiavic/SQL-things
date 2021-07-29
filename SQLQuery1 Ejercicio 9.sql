--Ejercicio 9
--¿Qué clientes no han comprado en los ultimos 20 meses?


USE Northwind
GO

SELECT c.CompanyName, MAX(o.Orderdate),
DATEDIFF(MONTH, MAX(o.OrderDate), GETDATE()) AS [Months Since Last Order]

FROM [Customers] c
INNER JOIN [Orders] o ON c.CustomerID = o.CustomerID
GROUP BY c.CompanyName
HAVING DATEDIFF(MONTH, MAX(o.OrderDate), GETDATE()) > 20
