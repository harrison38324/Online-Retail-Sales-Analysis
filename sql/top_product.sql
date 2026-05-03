SELECT Description, sum(quantity*UnitPrice) as sale_amount
FROM online_retail
GROUP by Description
ORDER by sale_amount DESC;