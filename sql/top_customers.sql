SELECT sum(UnitPrice*Quantity) as total_spend,CustomerID 
FROM online_retail 
Group by CustomerID
ORDER by total_spend DESC;