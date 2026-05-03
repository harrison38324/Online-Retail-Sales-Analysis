SELECT InvoiceDate, sum(UnitPrice*Quantity) as revenue
FROM online_retail
GROUP By InvoiceDate
ORDER By InvoiceDate;