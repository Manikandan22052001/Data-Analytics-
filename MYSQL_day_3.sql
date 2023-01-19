use Orders;

select * from orders;
select * from  return_prod;

ALTER TABLE Return_Prod
RENAME COLUMN Status TO Return_Status;

# INNER JOIN
select Orders.Order_ID, orders.Product_Name, return_prod.Return_status from Orders
inner join return_prod on
Orders.Order_ID = return_prod.Order_ID
order by Orders.Product_Name;
# Left JOIN
select Orders.Order_ID, orders.Product_Name, return_prod.Return_status from Orders
left join return_prod on
Orders.Order_ID = return_prod.Order_ID
order by return_prod.Return_status desc;
# Right JOIN
select Orders.Order_ID, orders.Product_Name, return_prod.Return_status from Orders
right join return_prod on
Orders.Order_ID = return_prod.Order_ID
order by return_prod.Return_status desc;
# Full JOIN
select Orders.Order_ID, orders.Order_Date, orders.customer_name, Return_prod.Return_Status
from Orders
full join Return_prod on
Orders.Order_ID = Return_prod.Order_ID
order by Orders.Order_Date;
#Full join(Union) With left and right
select orders.order_ID, orders.Order_Date,orders.Product_Name,return_prod.Return_status 
from orders left join return_prod on orders.order_ID = return_prod.order_ID
union
select orders.order_ID, orders.Order_Date,orders.Product_Name,return_prod.Return_status 
from orders right join return_prod on orders.order_ID = return_prod.order_ID
order by Return_status desc;



