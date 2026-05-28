create database ecommerce_project;
use ecommerce_project;
show tables;

select count(*) from ecommerce_order;

select * from ecommerce_order limit 10;

select sum(avg_order_value_eur) from ecommerce_order;

select country , count(*) as total_orders from ecommerce_order group by country order by total_orders desc;

-- select country , count(*) from ecommerce_order group by country order by count(*) asc;

select count(*) from ecommerce_order where is_fraud = 1;

select count(*) from ecommerce_order where is_returned = 1;

select count(*) from ecommerce_order where payment_method = 'credit card';

select count(*) from ecommerce_order where country = 'germany';

select payment_method,count(*) from ecommerce_order group by payment_method;

select country, sum(avg_order_value_eur) as revenue from ecommerce_order group by country order by revenue desc;

select max(avg_order_value_eur) from ecommerce_order;

select min(avg_order_value_eur) from ecommerce_order;

select round (sum(is_fraud) * 100 / count(*),2) as fraud_percentage from ecommerce_order;

select country , sum(is_fraud) from ecommerce_order group by country order by sum(is_fraud) desc; 

select case when previous_orders >= 10 then 'Loyal' when previous_orders >=5 then 'Regural' else 'New' end as customer_type, count(*) as total_customers from ecommerce_order group by customer_type;

select year(str_to_date(order_date,'%Y-%m-%d')) as year, month(str_to_date(order_date,'%Y-%m-%d')) as month , count(*) as total_order from ecommerce_order group by year,month order by year , month ;

