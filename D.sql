--1) Transaction with MORE THAN ONE product for sales transaction 
--CUSTOMER
INSERT INTO Customer VALUES('CTR222', 'Shilla', 'Female', 'August 22,2002', '085883163825', 'Jl.Sumur Batu No.44')

--PEN
INSERT INTO Pen VALUES('PEN333', 'Luxury Pen', '45000', '150')
INSERT INTO Pen VALUES('PEN372', 'Penny Pen', '20000', '110')

--STAFF
INSERT INTO Staff VALUES('STF444', 'Rosa', 'Female', 'January 21,1999', '085725469214', 'Jl.Lebah Hutan No.72', '2000000')

--SALES TRANSACTION
INSERT INTO SalesTransaction VALUES('SLT562', 'CTR222', 'STF444','June 14,2021', 'Cash')

--SALES TRANSACTION DETAILS
INSERT INTO SalesTransaction_Details VALUES('PEN332', 'SLT562','4')
INSERT INTO SalesTransaction_Details VALUES('PEN372	', 'SLT562','3')

--2) Transaction with MORE THAN ONE material for purchase transaction
