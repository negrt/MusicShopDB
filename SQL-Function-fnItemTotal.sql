-- Create a function that calculates and returns the item total for a specified item

CREATE FUNCTION fnItemTotal
(
	@ItemID INT
)
RETURNS INT
AS
BEGIN
	RETURN 
		(SELECT (dbo.fnDiscountPrice(@ItemID) * Quantity) AS 'Total' 
		FROM tblOrderItems
		WHERE ItemID = @ItemID)
END

-- Tester

SELECT dbo.fnItemTotal(2)