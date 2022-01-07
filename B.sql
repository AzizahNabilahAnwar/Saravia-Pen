CREATE DATABASE Saravia_Pen;

--B--
CREATE TABLE Customer(
CustomerID CHAR(6) PRIMARY KEY CHECK (CustomerID LIKE 'CTR[0-9][0-9][0-9]'),
CustomerName VARCHAR(50) NOT NULL,
CustomerGender VARCHAR(6) NOT NULL,
CustomerDoB DATE NOT NULL,
CustomerPhone VARCHAR(12) CHECK (DATALENGTH(CustomerPhone) = 12) NOT NULL,
CustomerAddress VARCHAR(100) NOT NULL
);
GO

CREATE TABLE Staff(
StaffID CHAR(6) PRIMARY KEY CHECK (StaffID LIKE 'STF[0-9][0-9][0-9]'),
StaffName VARCHAR(50) CHECK (DATALENGTH (StaffName) >= 3) NOT NULL, --ini syntax udah benar atau belum? sesuai ga sama yg di soal?
                                                                    --tapi kan yg di soal diminta ">= 3 CHARACTER (a,b,c).
																	--sedangkan ini ketika kita masukkin "Lii" dia tetap sukses ke execute.
StaffGender VARCHAR(6) CHECK (StaffGender = 'Male' OR StaffGender = 'Female') NOT NULL,
StaffDoB DATE NOT NULL,
StaffPhone VARCHAR(12) NOT NULL,
StaffAddress VARCHAR(100) NOT NULL,
Salary INT NOT NULL
);
GO

CREATE TABLE SalesTransaction(
SalesTransactionID CHAR(6) PRIMARY KEY CHECK (SalesTransactionID LIKE 'SLT[0-9][0-9][0-9]'),
CustomerID CHAR(6) FOREIGN KEY REFERENCES Customer(CustomerID),
StaffID CHAR(6) FOREIGN KEY REFERENCES Staff(StaffID),
SalesTransactionDate DATE CHECK (YEAR (SalesTransactionDate) = 2020) NOT NULL,
SalesTransactionPType VARCHAR(10) NOT NULL,
);
GO

CREATE TABLE Pen(
PenID CHAR(6) PRIMARY KEY CHECK (PenID LIKE 'PEN[0-9][0-9][0-9]'),
PenName VARCHAR(20) CHECK (PenName LIKE '%Pen') NOT NULL,
PenPrice INT CHECK (PenPrice BETWEEN '10000' AND '50000') NOT NULL,
PenStock INT NOT NULL
);
GO

CREATE TABLE SalesTransaction_Details(
PenID CHAR(6) REFERENCES Pen(PenID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
SalesTransactionID CHAR(6)  REFERENCES SalesTransaction(SalesTransactionID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
PenQTY INT NOT NULL
);
GO

ALTER TABLE SalesTransaction_Details
ADD CONSTRAINT PK_SalesTransaction_Details PRIMARY KEY (PenID, SalesTransactionID)

CREATE TABLE PenMaterial(
MaterialID CHAR(6) PRIMARY KEY CHECK (MaterialID LIKE 'PML[0-9][0-9][0-9]'),
MaterialName VARCHAR(20) NOT NULL,
MaterialPrice INT NOT NULL,
MaterialStock INT CHECK (MaterialStock >= 100) NOT NULL
);
GO

CREATE TABLE PenMaterial_Details(
PenID CHAR(6) REFERENCES Pen(PenID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
MaterialID CHAR(6) REFERENCES PenMaterial(MaterialID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL
);
GO

ALTER TABLE PenMaterial_Details
ADD CONSTRAINT PK_PenMaterial_Details PRIMARY KEY (PenID, MaterialID)

CREATE TABLE Vendor(
VendorID CHAR(6) PRIMARY KEY CHECK (VendorID LIKE 'VDR[0-9][0-9][0-9]'),
VendorName VARCHAR(20) NOT NULL,
VendorAddress VARCHAR(50) NOT NULL,
VendorPhone VARCHAR(12) NOT NULL,
VendorEmail VARCHAR(50) CHECK (VendorEmail LIKE '%@%') NOT NULL
);
GO

CREATE TABLE PurchaseTransaction(
PurchaseTransactionID CHAR(6) PRIMARY KEY CHECK (PurchaseTransactionID LIKE 'PCT[0-9][0-9][0-9]'),
StaffID CHAR(6) FOREIGN KEY REFERENCES Staff(StaffID),
VendorID CHAR(6) FOREIGN KEY REFERENCES Vendor(VendorID),
PurchaseTransactionDate DATE NOT NULL,
PurchaseTransactionPType VARCHAR(10) NOT NULL
);
GO

CREATE TABLE PurchaseTransaction_Details(
MaterialID CHAR(6) REFERENCES PenMaterial(MaterialID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
PurchaseTransactionID CHAR(6) REFERENCES PurchaseTransaction(PurchaseTransactionID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
MaterialQTY INT NOT NULL
);
GO

ALTER TABLE PurchaseTransaction_Details
ADD CONSTRAINT PK_PurchaseTransaction_Details PRIMARY KEY (MaterialID, PurchaseTransactionID)

DROP DATABASE Saravia_Pen;
DROP TABLE Pen;
DROP TABLE PurchaseTransaction;
DROP TABLE SalesTransaction;
DROP TABLE Customer;
DROP TABLE Staff;
DROP TABLE Vendor;
DROP TABLE PenMaterial;
DROP TABLE SalesTransaction_Details;
DROP TABLE PenMaterial_Details;
DROP TABLE PurchaseTransaction_Details;

