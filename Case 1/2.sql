# How many days has each customer visited the restaurant?
Select customer_id, count(distinct(order_date)) as no_of_visits 
from sales 
group by customer_id;
