SELECT Country, sum(Quantity*UnitPrice) as revenue
FROM online_retail
GROUP by Country
ORDER by revenue DESC;