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