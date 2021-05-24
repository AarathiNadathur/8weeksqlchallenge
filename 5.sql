# Which item was the most popular for each customer?
with MyRowSet as
(
	select sales.customer_id, menu.product_name, count(sales.product_id) as TotalPurchased,
	ROW_NUMBER() over(partition by sales.customer_id order by count(sales.product_id) desc) as RowNum
	from sales
	inner join menu on sales.product_id=menu.product_id
	group by sales.customer_id, menu.product_name
)
select MyRowSet.customer_id, MyRowSet.product_name as PopularMenu
from MyRowSet
where RowNum = 1