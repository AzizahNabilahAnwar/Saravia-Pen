--E1
SELECT * FROM Customer
SELECT * FROM SalesTransaction
SELECT * FROM SalesTransaction_Details

SELECT Customer.CustomerID, CustomerName, SalesTransactionDate, SUM(PenQTY) AS [Sales Transaction Quantity]
FROM 
Customer LEFT JOIN SalesTransaction
ON SalesTransaction.CustomerID = Customer.CustomerID
INNER JOIN SalesTransaction_Details
ON SalesTransaction.SalesTransactionID = SalesTransaction_Details.SalesTransactionID
WHERE SalesTransaction_Details.PenID = 'PEN009' AND DAY (SalesTransaction.SalesTransactionDate) =25
GROUP BY Customer.CustomerID, Customer.CustomerName, SalesTransaction.SalesTransactionDate
ORDER BY SalesTransactionDate