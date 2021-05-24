# What is the most purchased item on the menu and how many times was it purchased by all customers?
select m.product_name, count(s.customer_id)as times_purchased
from sales s join menu m 
on s.product_id=m.product_id
group by m.product_id
order by times_purchased desc limit 1;