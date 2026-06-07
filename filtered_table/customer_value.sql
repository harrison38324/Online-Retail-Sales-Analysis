WITH avg_spend as (
select avg(total_spend) as  avg_spend
FROM top_customers
where CustomerID is not null
)
SELECT
t.*,
CASE
WHEN t.total_spend > 1.5*a.avg_spend then 'high_value'
when t.total_spend BETWEEN 0.5*a.avg_spend and 1.5*a.avg_spend THEN 'medium_value'
ELSE 'low_value'
end
as customer_value
FROM top_customers t 
cross join avg_spend a
WHERE t.CustomerID is not null