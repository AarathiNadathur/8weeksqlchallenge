# How many successful orders were delivered by each runner?
Select count(order_id) as successfully_delivered
from runner_orders
where pickup_time !="null";