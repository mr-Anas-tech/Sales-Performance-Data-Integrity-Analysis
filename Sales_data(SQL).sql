select * from sales_data
where "Transaction Date" between '2023-02-01' and '2023-02-28';

select Date("Transaction Date")as sale_day,
sum("Total Spent") as daily_rev
from sales_data
where "Transaction Date" between '2023-02-01' and '2023-02-28'
group by sale_day
order by sale_day;

select 
EXTRACT(Month From "Transaction Date") AS Months,
Count(*) as Total_transactions,
sum("Total Spent") AS monthly_revenue,
AVG("Total Spent") as Avg_value
from sales_data
group by Months
order by Months;
----In febrary recorded the lowest Transaction Volume(759 order) but achieve the high
----Average order value(9.22$)
--Then overall sales drop 13.35%:
--878-759=119
--199/878*100=13.35.