# In the first week after a customer joins the program (including their join date) they earn 2x points on all items, not just sushi - how many points do customer A and B have at the end of January?
Select s.customer_id, sum(20 * m.price) as jan_price
    from sales s join menu m on s.product_id = m.product_id
    join members me on s.customer_id = me.customer_id
    where s.order_date >= me.join_date and  s.order_date < (me.join_date + 7)
    group by s.customer_id
    order by s.customer_id asc;