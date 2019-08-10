-- Create a stored procedure for inserting products

CREATE PROCEDURE 
	spInsertProduce
	(@catID int, 
	@prodID int, 
	@iName varchar, 
	@iPrice int, 
	@discount int)
AS
BEGIN
	--UPDATE tblProducts SET DateAdded = DATETIME
	IF @iPrice < 0 SET @iPrice = 0;


	Insert INTO tblProducts (CategoryID, 
	ProductCode, ProductName, ListPrice, 
	DiscountPercent, Description, DateAdded)
	Values (@CatID, @Prodid, @IName, @iPrice, 
	@Discount, ' ', GetDate())
END