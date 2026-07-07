create database swiggy_db;

show databases;

use swiggy_db;

-- create table Swiggy_Orders
CREATE TABLE Swiggy_Orders (
    order_id      INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city          VARCHAR(30),
    restaurant    VARCHAR(50),
    item_ordered  VARCHAR(50),
    price         DECIMAL(8,2),
    delivery_status VARCHAR(20)
);

INSERT INTO Swiggy_Orders VALUES
(1, 'Rohan Mehta',  'Mumbai',    'Bikanervala',     'Chole Bhature',  180.00, 'Delivered'),
(2, 'Priya Nair',   'Bangalore', 'Truffles',        'Cheese Burger',  220.00, 'Delivered'),
(3, 'Aman Gupta',   'Delhi',     'Haldiram',        'Raj Kachori',    150.00, 'Cancelled'),
(4, 'Sneha Reddy',  'Hyderabad', 'Paradise Biryani', 'Chicken Biryani', 320.00, 'Delivered'),
(5, 'Karan Malhotra','Mumbai',   'Domino''s',       'Farmhouse Pizza', 399.00, 'Pending');


create view Delivered_orders as
select order_id,customer_name,City,restaurant,item_ordered,price from Swiggy_orders
where delivery_status = "delivered";

select *from Delivered_orders;



create or replace view Delivered_orders as
select order_id,customer_name,City,restaurant,item_ordered,price ,delivery_status from Swiggy_orders
where delivery_status in ('delivered','pending');


select *from Delivered_orders;


create view City_Revenue as
select city, SUM(price) as total_revenue,count(*) as total_orders
from Swiggy_orders
Group by city;

select *from City_revenue

update city_revenue set total_revenue = 5000 where city = 'Mumbai';

DROP VIEW view_name