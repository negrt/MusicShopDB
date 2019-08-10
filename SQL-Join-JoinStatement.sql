SELECT
	C.LastName + ', ' + C.FirstName AS 'Full Name',
	O.OrderDate AS 'Date Ordered',
	P.ProductName AS 'Name',
	OI.ItemPrice AS 'Price',
	OI.DiscountAmount AS 'Discount',
	OI.Quantity AS 'Quantity'
FROM
	tblProducts P
	JOIN tblOrderItems OI
		ON OI.ProductID = P.ProductID
	JOIN tblOrders O
		ON O.OrderID = OI.OrderID
	JOIN tblCustomers C
		ON C.CustomerID = O.CustomerID
ORDER BY
	C.LastName,
	O.OrderDate,
	P.ProductName