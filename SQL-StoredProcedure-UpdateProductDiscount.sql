-- Create a stored procedure for updating discount percentage

CREATE PROCEDURE
	spUpdateProductDiscount
	(@DiscountPercent int)
AS
BEGIN
	IF @DiscountPercent > 0 
	BEGIN
		UPDATE tblProducts SET DiscountPercent = @DiscountPercent
		SELECT 
			ProductID, 
			UPPER(ProductCode) AS ProductCode, 
			ProductName, 
			ROUND(PurchasePrice, 1) AS PurchasePrice, 
			DiscountPercent,
			YEAR(DateAdded) AS 'Year',
			MONTH(DateAdded) AS 'Month',
			DAY(DateAdded) AS 'Day'
		FROM tblProducts
	END
	ELSE
	BEGIN
		PRINT 'No updates made - The discount percent must be a positive number'
	END
END

EXEC spUpdateProductDiscount 30 