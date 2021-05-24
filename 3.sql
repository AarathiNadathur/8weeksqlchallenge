# What was the first item from the menu purchased by each customer?
with cte as(select s.customer_id,s.product_id,m.product_name, 
rank() over (partition by s.customer_id order by s.order_date asc)rnk
FROM sales s join menu m
on s.product_id=m.product_id)
select cte.customer_id,cte.product_name,cte.product_id  from cte where rnk=1;
