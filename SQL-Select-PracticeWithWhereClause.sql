-- Practice with where clause

SELECT
	PurchasePrice
FROM
	tblProducts
WHERE
	PurchasePrice > 
	(SELECT AVG(PurchasePrice) 
	FROM tblProducts)
ORDER BY
	PurchasePrice DESC

------------
------------

SELECT
	CategoryName
FROM
	tblCategories c
WHERE
	NOT EXISTS 
	(SELECT CategoryName
	FROM tblProducts p
	WHERE c.CategoryID = p.CategoryID)

------------
------------

SELECT
	p.ProductName,
	p.DiscountPercent
FROM 
	tblProducts p
WHERE
	p.DiscountPercent NOT IN
	(SELECT pr.DiscountPercent
	FROM tblProducts pr
	WHERE p.ProductName <> pr.ProductName)
ORDER BY
	ProductName ASC