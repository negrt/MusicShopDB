CREATE VIEW vOrderItemsProducts
as
SELECT 
	o.OrderID, 
	o.OrderDate, 
	o.TaxAmount, 
	o.ShipDate,
	(oi.ItemPrice - oi.DiscountAmount) AS 'Final Price',
	oi.Quantity,
	((oi.ItemPrice - oi.DiscountAmount) * oi.Quantity) AS ItemTotal,
	oi.ItemPrice,
	oi.DiscountAmount,
	p.ProductID,
	p.ProductName
FROM 
	tblOrders o
		JOIN tblOrderItems oi
			ON oi.OrderID = o.OrderID
		JOIN tblProducts p
			ON oi.ProductID = p.ProductID