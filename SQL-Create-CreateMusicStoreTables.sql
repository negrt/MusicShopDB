-- Create Sam Ashe Music Store Tables

CREATE TABLE tblCustomers(
	CustomerID		INT	PRIMARY	KEY	IDENTITY, --identity means auto increment
	FirstName		VARCHAR	(25) NOT NULL,
	LastName		VARCHAR (25) NOT NULL,
	CustomerType		CHAR (1) NULL,
	PrimaryContactNum	BIGINT NULL,
	Email			VARCHAR (60) NULL,
	BillingAddressID	INT NULL,
	ShippingAddressID	INT NULL,
	DateAdded		SMALLDATETIME NOT NULL
);

----------------
----------------

CREATE TABLE tblAddress(
AddressID	INT PRIMARY KEY IDENTITY,
CustomerID	INT REFERENCES tblCustomers(CustomerID),
Line1		VARCHAR (60) NOT NULL,
Line2		VARCHAR (60) DEFAULT NULL, 
City		VARCHAR	(25) NOT NULL,
[State]		VARCHAR	(25) NOT NULL, 
Zip			INT NOT NULL,
Phone		VARCHAR (12) NOT NULL,
Disabled	INT			 NOT NULL		DEFAULT 0 
);
--Brackets around state to ensure compiler does not get confused with keyword
--Disabled is if the customer no longer wants to use the address

----------------
----------------

CREATE TABLE tblCategories(
	CategoryID	INT PRIMARY KEY IDENTITY,
	CategoryName	VARCHAR	(25) NOT NULL
);

----------------
----------------


CREATE TABLE tblVendors(
	VendorID		INT PRIMARY KEY IDENTITY,
	VendorName		VARCHAR	(50) NOT NULL,
	Line1			VARCHAR(50) NOT NULL,
	Line2			VARCHAR(50) NULL,
	Email			VARCHAR(60) NULL,
	City			VARCHAR(25) NOT NULL,
	[State]		VARCHAR(25) NOT NULL,
	Zip			INT NOT NULL,
	Country		VARCHAR(60) NOT NULL	
);

----------------
----------------

CREATE TABLE tblProductssss(
	ProductID		INT PRIMARY KEY IDENTITY,
	CategoryID		INT REFERENCES tblCustomers(CustomerID),
	ProductCode		VARCHAR(50) NOT NULL,
	ProductName		VARCHAR(50) NOT NULL,
	[Description]		VARCHAR(1000) NOT NULL,
	PurchasePrice		FLOAT(50) NOT NULL,
	DiscountPercent	FLOAT NOT NULL,
	DateAdded		SMALLDATETIME(50) NOT NULL,
	RentalPrice		FLOAT NOT NULL,
	VendorID		INT REFERENCES tblVendors(VendorID)
);
