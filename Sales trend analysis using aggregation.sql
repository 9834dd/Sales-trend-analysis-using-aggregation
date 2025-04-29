#create database sales;
use sales;
#QUESTION1: USE EXTRACT (MONTH_NAME FROM ORDER DATE)FOR MONTH?
select extract(month from order_date) as month_number,monthname(order_date) as month_name from orders;
#QUESTION2:USE GROUP BY (YEAR/MONTH)?
SELECT SUM(profit),monthname(order_date) FROM details join orders on details.Order_id =orders.Order_id group by monthname(order_date); #( BY month)
select sum(profit),year(order_date) from details join orders on details.order_id=orders.order_id group by year(order_date);   #( BY YEAR)

#question 3: USE SUM FOR REVENUE?
SELECT sum(Amount) as revenue,year(order_date) from details join orders on details.order_id=orders.order_id group by year(order_date);
#question 4:count(distinct order_id ) for volume?
select distinct count(order_id) from orders;
#question count of distinct _id per(month/year)?
select distinct count(order_id),year(order_date) from orders group by year(order_date);
select distinct count(order_id),monthname(order_date) from orders group by monthname(order_date);
#question5:USE ORDER BY SORTING?
SELECT SUM(PROFIT) as total_profit,monthname(order_date) from details join orders on details.order_id=orders.order_id group by monthname(order_date) order by total_profit desc limit 5;
#question 6:LIMIT RESULT FOR SPECIFIC TIME PERIOD?
select sum(Amount) as revenue,monthname(order_date) from details join orders on details.order_id=orders.order_id group by monthname(order_date) limit 3;
#Quesion7:calculate total monthally revenue?
select sum(Amount),monthname(order_date) from details join orders on details.order_id=orders.order_id group by monthname(order_date);


