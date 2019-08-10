-- Create a function that return the discount price for a specified item

CREATE FUNCTION fnDiscountPrice
(
	@ItemID INT
)
RETURNS INT
AS
BEGIN
	RETURN 
		(SELECT (ItemPrice - DiscountAmount) AS 'The Discounted Price'
		FROM tblOrderItems
		WHERE ItemID = @ItemID)
END

-- Tester

SELECT dbo.fnDiscountPrice(1)