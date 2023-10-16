USE ABC;
SELECT * FROM CogData LIMIT 1;
SELECT RowID,OrderID,OrderDate,CustomerName,Industry,Region
FROM CogData;
SELECT DISTINCT CustomerName,Industry,Region FROM CogData;
SELECT DISTINCT CustomerName,Industry,Region FROM CogData WHERE Region='West' ORDER BY Region;
SELECT DISTINCT CustomerName,Industry,Region FROM CogData WHERE Region='West' ORDER BY Industry;

-- Aggraration
-- Task : which industry is the most profitable in the West
SELECT
	Industry,Region,Round(SUM(SaleAmount),2) AS SalesAmount
FROM CogData
WHERE Region = "West"
GROUP BY Industry
ORDER BY SalesAmount DESC;