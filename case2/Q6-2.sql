# What was the maximum number of pizzas delivered in a single order?
Select c.order_id, count(c.pizza_id) as no_of_delivered 
from customer_orders c join runner_orders r
on c.order_id=r.order_id
where r.pickup_time <> "null"
group by c.order_id;