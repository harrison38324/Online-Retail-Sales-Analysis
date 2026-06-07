SELECT CustomerID
from top_customers
where CustomerID is not NULL
order by total_spend DESC
limit 10