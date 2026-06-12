SELECT
CustomerID,
sum(UnitPrice*Quantity) as total_spend,
count(DISTINCT InvoiceDate) as visit_count,
CASE
WHEN count(DISTINCT InvoiceDate)>1 THEN 'repetitive'
WHEN count(DISTINCT InvoiceDate) = 1 THEN 'single'
END
as repetitiveness
FROM online_retail
WHERE CustomerID is not NULL
GROUP by CustomerID