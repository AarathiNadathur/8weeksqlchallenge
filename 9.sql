# If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?
with cte as(select m.product_id,
case
when m.product_name="curry" then m.price*10
when m.product_name="sushi" then m.price*10*2
when m.product_name="ramen" then m.price*10
end as points
from  menu m)
select s.customer_id,sum(cte.points)as total_points from cte join sales s
on s.product_id=cte.product_id  group by s.customer_id;
