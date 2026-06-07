SELECT t.total_spend,
	case 
	when t10.CustomerID is null then 'not top10'
	else 'top10'
	END
	as if_top10
FROM top_customers t
LEFT JOIN top10_customer t10 on t.CustomerID = t10.CustomerID
where t.CustomerID is not null;