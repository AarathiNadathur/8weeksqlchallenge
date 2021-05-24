# Which item was purchased first by the customer after they became a member?
with cte as (
select s.*,datediff(s.order_date, me.join_date) as datedif
from sales s join members me on 
s.customer_id = me.customer_id
)
select cte.customer_id,m.product_id,m.product_name , min(cte.datedif)
from cte inner join menu m on cte.product_id=m.product_id where cte.datedif>0 group by cte.customer_id;