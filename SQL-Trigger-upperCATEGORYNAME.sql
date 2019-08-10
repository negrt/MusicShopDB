-- Make the category name upper case during an insert

CREATE TRIGGER upperCATEGORYNAME
ON tblCategories
AFTER INSERT
AS
BEGIN
	SELECT CategoryID, UPPER(CategoryName) AS CategoryName
	FROM tblCategories
END
GO

-- Tester

INSERT INTO tblCategories (CategoryName)
VALUES ('Microphone');


SELECT * FROM tblCategories