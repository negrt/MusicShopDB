-- Practice with SQL built-in functions

-----------------------------------------------------
-----------------------------------------------------

-- Practice with CAST and ROUND

SELECT
	PurchasePrice,
	DiscountPercent,
	CAST(ROUND(PurchasePrice * .01 * DiscountPercent, 2) As decimal(10,2))as DiscountAmount
FROM
	tblProducts

-----------------------------------------------------
-----------------------------------------------------

-- Practice with YEAR, DAY, and DATEADD

SELECT
	ShipDate,
	YEAR(ShipDate) as 'Year Shipped',
	DAY(ShipDate) as 'Day Shipped',
	DATEADD(DAY, 30, ShipDate)
FROM
	tblOrders

-----------------------------------------------------
-----------------------------------------------------

-- Practice with LEN, SUBSTRING, and RIGHT

SELECT
	len(cardnumber),
	SUBSTRING(cardnumber, 13, 4) as LastFourDigits,
	SUBSTRING(cardnumber, len(cardnumber) - 4, 4) as newLastFourDigits,
	RIGHT(cardnumber, 4) as RightExample,
	('XXXX-XXXX-XXXX-' + substring(cardnumber, len(cardnumber) - 4, 4)) AS CardNumber
FROM 
	tblOrders

-----------------------------------------------------
-----------------------------------------------------

-- Practice with DATEADD,and DATEIFF

SELECT
	OrderID,
	OrderDate,
	DATEADD(DAY, 2, OrderDate) AS 'ApproxShipDate',
	ShipDate,
	DATEDIFF(DAY, OrderDate, Shipdate) AS 'DaysToShip'
FROM 
	tblOrders
WHERE 
	OrderDate >= '2016-03-01' AND
	  OrderDate < '2016-03-31'