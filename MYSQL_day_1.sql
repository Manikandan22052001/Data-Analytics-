use orders;

select * from orders;

select * from orders where Order_ID = 3;

select * from orders where Order_Priority = "Low" and Profit >= 1000;

select * from orders where Order_Priority = "High" or Profit >= 1000;

select * from orders order by unit_price desc;

select count(Order_ID) from orders;

select avg(Unit_Price) from Orders;

select Order_ID, Product_Category, Unit_Price, Profit from Orders;

select Order_ID, Product_Category, Unit_Price, Profit from Orders where profit >= 500 order by Order_ID;

select min(profit) from orders;

select max(profit) from orders;