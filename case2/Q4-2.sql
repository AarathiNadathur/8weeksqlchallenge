# How many of each type of pizza was delivered?
select pizza_id,count(pizza_id) as Pizza_count 
from customer_orders
group by pizza_id;
