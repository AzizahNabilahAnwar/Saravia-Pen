USE Saravia_Pen
GO

--1
SELECT
C.CustomerID,
C.CustomerName,
st.SalesTransactionDate, 
cast(sum(PenQty)AS varchar)AS SalesTransactionQuantity

FROM
Customer C JOIN SalesTransaction st ON
C.CustomerID = st.CustomerID 
JOIN SalesTransaction_Details std ON 
st.SalesTransactionID = std.SalesTransactionID 

WHERE
PenId LIKE 'PEN009' AND day(SalesTransactionDate) = 25

GROUP BY C.CustomerID, CustomerName, SalesTransactionDate

--2
SELECT
P.PenID, 
P.PenName,
cast(count(MaterialQty)AS varchar)AS TotalPenMaterial
FROM
Pen P JOIN PenMaterial_Details pmd 
ON P.PenID = pmd.PenID 
JOIN PenMaterial pm 
ON pm.MaterialID = pmd.MaterialID 
JOIN PurchaseTransaction_Details ptd 
ON pm.MaterialID = ptd.MaterialID
WHERE PenName = 'Milky %' AND MaterialQty > 6 Group by P.PenId, P.PenName

--3
SELECT
	CustomerName,
	[Sales Transaction Date] = FORMAT(slt.SalesTransactionDate, 'yyyy.MM.dd'),
	[Total Pen Type] = COUNT(PenID),
	[Total Quantity] = SUM (PenQTY)
	FROM Customer cst
	JOIN SalesTransaction slt
	ON cst.CustomerID = slt.CustomerID
	JOIN SalesTransaction_Details slt_d
	ON slt.SalesTransactionID = slt_d.SalesTransactionID
	WHERE MONTH(slt.SalesTransactionDate) = 9
	GROUP BY CustomerName, SalesTransactionDate, PenID
	HAVING SUM(PenQTY) > 10


--4. Display StaffName, Staff Gender (obtained from the first letter of staff’s gender), 
--CustomerName, AND Total Sales Transaction (obtained from the count of the sales transaction) 
--for every sales transaction that happened JOIN an even day AND the sum of quantity is 
--lower or equal to 10.

-- STATUS: NOT DONE

SELECT 
    stf.StaffName,
    [Staff Gender] = SUBSTRING(stf.StaffGender, 1, 1),
    cst.CustomerName,
    [Total Sales Transaction] = COUNT(slt.SalesTransactionID)
FROM SalesTransaction slt
JOIN Customer cst
ON slt.CustomerID = cst.CustomerID
JOIN Staff stf
ON slt.StaffID = stf.StaffID
JOIN SalesTransaction_Details slt_d
ON slt.SalesTransactionID = slt_d.SalesTransactionID
WHERE DAY(slt.SalesTransactionDate) % 2 = 0
GROUP BY StaffName, StaffGender, CustomerName
HAVING SUM(slt_d.PenQTY) >= 10


--5.	
--Display CustomerName (obtained from customer name in uppercase format), 
--CustomerGender, and SalesTransactionId for every sales transaction that 
--happened JOIN the 22th and the quantity is greater than the average quantity 
-- of all sales transaction. The result query doesn’t have duplicate rows.
--(alias subquery)

-- STATUS: NOT DONE

SELECT 
    [CustomerName] = UPPER(cst.CustomerName), 
    cst.CustomerGender, 
    slt.SalesTransactionID
FROM SalesTransaction slt
JOIN Customer cst
ON slt.CustomerID = cst.CustomerID
JOIN SalesTransaction_Details slt_d
ON slt_d.SalesTransactionID = slt.SalesTransactionID
WHERE DAY(slt.SalesTransactionDate) = 22
AND
slt_d.PenQTY > (SELECT AVG(PenQTY)
                      FROM SalesTransaction_Details
                      JOIN SalesTransaction
                      ON SalesTransaction.SalesTransactionID = SalesTransaction_Details.SalesTransactionID)
GROUP BY CustomerName, CustomerGender, slt.SalesTransactionID




-- 6.	Display VendorName, PurchaseDate 
--(obtained from purchases date in ‘Mon dd, yyyy’ format), 
--and MaterialName (obtained from the material of pen name in lowercase format) 
--for every purchase transaction with a pen material price is greater than the average price 
--of all materials and the vendor’s name ends with ‘ Industry’.
--(alias subquery)

-- STATUS: NOT DONE

SELECT 
    vdr.VendorName,
    [PurchaseDate] = FORMAT(pct.PurchaseTransactionDate, 'MMMM dd, yyyy'),
    pnm.MaterialName
FROM Vendor vdr
JOIN PurchaseTransaction pct
ON vdr.VendorID = pct.VendorID
JOIN PurchaseTransaction_Details pct_d
ON pct_d.PurchaseTransactionID = pct.PurchaseTransactionID
JOIN PenMaterial pnm
ON pnm.MaterialID = pct_d.MaterialID
WHERE vdr.VendorName = '%Industry%'
AND pnm.MaterialPrice > (SELECT AVG(MaterialPrice) 
                            FROM PenMaterial)
GROUP BY VendorName, PurchaseTransactionDate, MaterialName


-- 7.	Display Total Purchase Transaction (obtained from count of purchase transactions and 
-- ended with ‘ Transaction(s)’), VendorName, Staff Name (obtained from staff’s name from 
-- the first character until a character before space), and PurchaseTransactionDate for 
-- every purchase transaction with the quantity is lower than the average quantity of all 
-- purchase transaction and the purchase transaction happened JOIN Sunday.
--(alias subquery)

-- STATUS: NOT DONE

SELECT
    [Total Purchase Transaction] = FORMAT((SELECT COUNT(PurchaseTransactionID) FROM PurchaseTransaction), '# Transaction(s)'),
    VendorName,
    [Staff Name] = LEFT(StaffName,CHARINDEX(' ', StaffName + ' ')-1),
    PurchaseTransactionDate
FROM PurchaseTransaction pct
JOIN Vendor vdr
ON pct.VendorID = vdr.VendorID
JOIN Staff stf
ON pct.StaffID = stf.StaffID
JOIN PurchaseTransaction_Details pct_d
ON pct.PurchaseTransactionID = pct_d.PurchaseTransactionID
WHERE MaterialQTY < (SELECT AVG(MaterialQTY) 
        FROM PurchaseTransaction_Details pct_d
        JOIN PurchaseTransaction pct
        ON pct.PurchaseTransactionID = pct_d.PurchaseTransactionID)
AND FORMAT(pct.PurchaseTransactionDate, 'dddd') = 'Sunday'
GROUP BY VendorName, StaffName, PurchaseTransactionDate



-- 8.	Display VendorName, Transaction Date (obtained from purchases date in ‘dd mon yyyy’ 
--format), PenMaterialName, and Material Number (obtained from PenMaterialId by replacing the 
--first three characters with ‘PM’) for every purchase transaction with the pen material stock 
--is greater than the average of all pen material stock and the total price (obtained from the 
-- sum of transaction quantity multiplied with pen material price) is greater than 500000. 
-- Sort the result by vendor name in descending order.
-- (alias subquery)

-- STATUS: NOT DONE

SELECT
    vdr.VendorName,
    [Transaction Date] = FORMAT(pct.PurchaseTransactionDate, 'dd MM yyyy'),
    pnm.MaterialName,
    [Material Number] = CONCAT('PM', SUBSTRING(pnm.MaterialID, 4, 3))
FROM Vendor vdr
JOIN PurchaseTransaction pct
ON pct.VendorID = vdr.VendorID
JOIN PurchaseTransaction_Details pct_d
ON pct_d.PurchaseTransactionID = pct.PurchaseTransactionID
JOIN PenMaterial pnm
ON pct_d.MaterialID = pnm.MaterialID
WHERE MaterialStock > (SELECT AVG(MaterialStock) FROM PenMaterial)
AND (pct_d.MaterialQTY * pnm.MaterialPrice) > 500000
GROUP BY VendorName, MaterialName, PurchaseTransactionDate, pnm.MaterialID
ORDER BY VendorName DESC



--9

CREATE VIEW [ViewSalesTransaction]
AS
SELECT 
	StaffName, 
	CustomerName,
	[Total Sales Transaction] = COUNT(slt.SalesTransactionID),
	[Maximum Sales] = MAX(PenQTY)
FROM SalesTransaction slt
JOIN Staff stf 
ON slt.StaffID = stf.StaffID
JOIN Customer ctr
ON slt.CustomerID = ctr.CustomerID
JOIN SalesTransaction_Details pct_d
ON slt.SalesTransactionID = pct_d.SalesTransactionID
WHERE CustomerName LIKE '%c%'
GROUP BY CustomerName, StaffName
HAVING COUNT(slt.SalesTransactionID) > 2

Select *
FROM ViewSalesTransaction

DROP VIEW ViewSalesTransaction

-- 10

CREATE VIEW [ViewPurchaseDetail]
AS
SELECT 
	VendorName
	,[Total Purchase Quantity] = SUM(MaterialQTY)
	,[Total Purchase Transaction] = COUNT(pct.PurchaseTransactionID)
FROM PurchaseTransaction pct
JOIN Vendor vdr
ON vdr.VendorID = pct.VendorID
JOIN PurchaseTransaction_Details pct_d
ON pct_d.PurchaseTransactionID = pct.PurchaseTransactionID
RIGHT JOIN Staff stf
ON stf.StaffID = pct.StaffID
WHERE StaffGender = 'Male'
GROUP BY vdr.VendorID, VendorName, VendorAddress, VendorPhone, VendorEmail
HAVING COUNT(pct.PurchaseTransactionID) > 1

SELECT *
FROM ViewPurchaseDetail

DROP VIEW ViewPurchaseDetail








