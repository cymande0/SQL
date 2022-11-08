USE AdventureWorks2019

/*1.2.5*/
USE AdventureWorks2019
GO

SELECT *
	FROM Production.Product p;

SELECT *
	FROM Production.Product p
	WHERE p.Color = 'Blue';
	
SELECT * FROM Production.ScrapReason

SELECT 
*
	FROM HumanResources.Employee e
	WHERE e.BirthDate >= '1980-01-01' 
	AND e.Gender = 'M'

SELECT 
*
	FROM HumanResources.Employee e

SELECT 
	e.JobTitle
	,e.BirthDate
	,e.Gender
	,e.VacationHours
	FROM HumanResources.Employee e
	WHERE (e.Gender = 'M' AND e.VacationHours BETWEEN 90 AND 99)
		OR (e.Gender = 'F' AND e.VacationHours BETWEEN 80 AND 89)


SELECT 
	e.JobTitle
	,e.BirthDate
	,e.Gender
	,e.VacationHours
	FROM HumanResources.Employee e
	WHERE ((e.Gender = 'M' AND e.VacationHours BETWEEN 90 AND 99)
		OR (e.Gender = 'F' AND e.VacationHours BETWEEN 80 AND 89))
		AND e.BirthDate > '1990-01-01'

SELECT 
	*
	FROM HumanResources.Employee e
	WHERE e.JobTitle IN ( 'Marketing Specialist', 'Control Specialist','Benefits Specialist','Accounts Receivable Specialist');


SELECT 
	*
	FROM HumanResources.Employee e
	WHERE e.JobTitle LIKE '%Specialist%'


SELECT 
	*
	FROM HumanResources.Employee e
	WHERE e.JobTitle LIKE '%Specialist%'
	AND	e.JobTitle LIKE '%Marketing%'

SELECT 
	*
	FROM HumanResources.Employee e
	WHERE e.JobTitle LIKE '%Specialist%'
	OR	e.JobTitle LIKE '%Marketing%'


SELECT *
	FROM Production.Product p
	WHERE p.Name LIKE '%[0-9]%'

SELECT p.Name
	FROM Production.Product p
	WHERE p.Name LIKE '%[0-9][0-9]%'

SELECT p.Name
	FROM Production.Product p
	WHERE p.Name LIKE '%[0-9][0-9]%[^0-9]'

SELECT Name 
	FROM Production.Product
	WHERE
	Name LIKE '____'

SELECT 
	sod.UnitPrice * sod.OrderQty AS Price
	FROM Sales.SalesOrderDetail sod
	ORDER BY Price DESC

SELECT sod.UnitPrice - sod.UnitPriceDiscount
	FROM Sales.SalesOrderDetail sod

SELECT cc.CardType + '-' + cc.CardNumber
	FROM Sales.CreditCard cc;

SELECT soh.SalesOrderNumber + '-' +soh.PurchaseOrderNumber
	FROM Sales.SalesOrderHeader soh

SELECT CONCAT(soh.SalesOrderNumber, '-', soh.PurchaseOrderNumber)
	FROM Sales.SalesOrderHeader soh

SELECT UnitPrice*OrderQty AS Total
	FROM Sales.SalesOrderDetail;

SELECT (UnitPrice-UnitPriceDiscount)*OrderQty AS TotalWithDiscount
	FROM Sales.SalesOrderDetail;

SELECT 
	 SalesOrderNumber
	 ,ProductID
	 ,UnitPrice
	 ,TaxAmt
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID

SELECT 
	 sod.ProductID
	 ,sod.SalesOrderID
	 ,sod.OrderQty * sod.UnitPrice AS Total
FROM Sales.SalesOrderDetail sod
WHERE sod.OrderQty * sod.UnitPrice > 10000

SELECT e.BirthDate
	FROM HumanResources.Employee e
	ORDER BY e.BirthDate DESC

SELECT e.BirthDate
	FROM HumanResources.Employee e
	ORDER BY e.BirthDate ASC

SELECT YEAR(GETDATE()) - YEAR(e.BirthDate) AS Age
	FROM HumanResources.Employee e
	ORDER BY Age DESC;

SELECT 
	p.ProductID
	,p.Name
	,p.ListPrice
	,p.Class
	,p.Style
	,p.Color
	FROM Production.Product p
	ORDER BY p.Class, p.Style;

SELECT 
	p.ProductID
	,p.Name
	,p.ListPrice
	,p.Class
	,p.Style
	,p.Color
FROM Production.Product p
ORDER BY 4,5








