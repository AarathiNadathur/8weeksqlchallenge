# How many unique customer orders were made?
select count(distinct(customer_id) )as Unique_customers
from customer_orders;
