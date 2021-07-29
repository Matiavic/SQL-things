--Ejercicio 2
--Encuentra el producto que tiene el segundo precio mas alto
--Product ID 29, 123.79

--(n-1)
--1-1 = 0 --Posición 1
--2-1 = 1 --Posocion 2
--3-1=  2 --Posicion 3


USE Northwind
GO
SELECT ProductName, UnitPrice 
FROM [Products] p1
WHERE 0 = (SELECT COUNt(DISTINCT UnitPrice)
FROM Products p2
WHERE p2.UnitPrice > p1.UnitPrice)