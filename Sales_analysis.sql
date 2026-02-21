create database sales_analysis;
use sales_analysis;

create table online_sales(order_id int,order_date date,amount decimal(10,20),product_id int);

insert into online_sales values(1,'2024-01-15',500,101),
(2,'2024-01-15',300,102),
(3,'2024-02-23',400,103),
(4,'2024-02-28',390,104),
(5,'2024-03-12',600,105),
(6,'2024-03-18',200,106);

select*from online_sales;

select month(order_date) as Months,sum(amount) as Total_revenue 
from online_sales group by Months;

select count(*) as Total_orders 
from online_sales;

select month(order_date) as months ,avg(amount) as avg_amount
from online_sales Group by months;

select year(order_date) as year,
month(order_date) as month,
sum(amount) as total_revenue,
count(distinct order_id) as order_volume
 from online_sales
 group by year(order_date),month(order_date)
 order by year,month
 limit 2;

 
 