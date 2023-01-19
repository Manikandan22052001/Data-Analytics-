use orders;

select * from orders;

select * from orders 
order by Row_ID limit 10;

select * from orders 
order by Row_ID limit 0,23;

select Region,count(Order_ID) as total_Order_ID 
from orders group by Region;

select Region,count(Order_ID) as total_Order_ID 
from orders group by Region
order by Region asc;

select Region,count(Order_ID) as total_Order_ID 
from orders group by Region
having Count(Order_ID)>=1000
order by Region asc;

select * from orders;

select Order_ID, Order_Date, Customer_Name,Product_category
from orders
where exists
(select Order_ID, Order_Date, Customer_Name,Product_category 
from orders where
order_id < 10 and order_id < 100 )
order by Order_id;

select Order_ID, Order_Date, Customer_Name,Product_category 
from orders where
order_id < 10 and order_id < 15;
