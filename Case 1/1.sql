# What is the total amount each customer spent at the restaurant?

Select s.customer_id as Customer, sum(m.price) as total_bill 
from sales  s join  menu m 
on s.product_id=m.product_id 
group by Customer;
