USE Northwind;

SELECT 
p.ProductName producto,
c.CategoryName categoria

FROM Products p
INNER JOIN Categories c
ON p.CategoryID = c.CategoryID;

--EJERCICIO 1
CREATE VIEW ListadoProductos
AS
SELECT 
p.ProductName producto,
c.CategoryName categoria,
s.CompanyName proveedor


FROM Products p
INNER JOIN Categories c
ON p.CategoryID = c.CategoryID
INNER JOIN Shippers s
ON p.SupplierID = s.ShipperID
;

--Para consultar la vista
SELECT producto, categoria, proveedor FROM ListadoProductos;

--EJERCICIO 2
ALTER VIEW ListadoProductos
AS
SELECT 
p.ProductName producto,
c.CategoryName categoria,
s.ProductID productosincluidosenlaorden


FROM Products p
INNER JOIN Categories c
ON p.CategoryID = c.CategoryID
LEFT JOIN  dbo.[Order Details] s
ON OrderID = s.OrderID
;

SELECT * FROM ListadoProductos;

--EJERCICIO 3
ALTER VIEW ListadoProductos
AS
SELECT 
p.ProductName producto,
c.CategoryName categoria,
s.ProductID productosincluidosenlaorden
FROM Products p
FULL JOIN Categories c
ON p.CategoryID = c.CategoryID
FULL JOIN  dbo.[Order Details] s
ON OrderID = s.OrderID
WHERE OrderID IS  NOT NULL
;

