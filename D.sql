--1) Transaction with MORE THAN ONE product for sales transaction 
--Fill the tables:
--CUSTOMER
INSERT INTO Customer VALUES('CTR222', 'Shilla', 'Female', 'August 22,2002', '085883163825', 'Jl.Sumur Batu No.44')

--PEN
INSERT INTO Pen VALUES('PEN333', 'Luxury Pen', '45000', '150')
INSERT INTO Pen VALUES('PEN372', 'Penny Pen', '20000', '110')

--STAFF
INSERT INTO Staff VALUES('STF444', 'Rosa', 'Female', 'January 21,1999', '085725469214', 'Jl.Lebah Hutan No.72', '2000000')

--Simulate the transactions:
--SALES TRANSACTION
INSERT INTO SalesTransaction VALUES('SLT562', 'CTR222', 'STF444','June 14,2020', 'Cash')

--SALES TRANSACTION DETAILS
INSERT INTO SalesTransaction_Details VALUES('PEN333', 'SLT562','4')
INSERT INTO SalesTransaction_Details VALUES('PEN372', 'SLT562','3')

--2) Transaction with MORE THAN ONE material for purchase transaction
--Fill the tables:
--STAFF
INSERT INTO Staff VALUES('STF412', 'Jerry', 'Male', 'May 04,2000', '085815741374', 'Jl.Kemayoran Barat No.13', '3000000')

--PEN MATERIAL
INSERT INTO PenMaterial VALUES('PML123', 'INK', '15000', '100')
INSERT INTO PenMaterial VALUES('PML142', 'Plastic', '10000', '120')

--VENDOR
INSERT INTO Vendor VALUES('VDR723', 'Mirabi', 'Jl.Glodok No.62','085753892319', 'mirabi@gmail.com')

--Simulate the transactions:
--PURCHASE TRANSACTION
INSERT INTO PurchaseTransaction VALUES('PCT721', 'STF412','VDR723', 'January 26,2019', 'Debit')

--PURCHASE TRANSACTION DETAILS
INSERT INTO PurchaseTransaction_Details VALUES('PML123', 'PCT721', '100')
INSERT INTO PurchaseTransaction_Details VALUES('PML142', 'PCT721', '120')