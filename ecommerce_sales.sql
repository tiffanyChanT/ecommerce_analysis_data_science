/*
What do we want to know about the data?
Sales
-Gross sales
-Profit
-how people buy (sales_channel)
-time of the year people buy the most?

Information about the clients
-Number of clients
-faire un portrait de nos clients
-gender
-age
-country
-repeat_costumer?

Quel genre de clients rapporte le plus?
*/
USE ecommerce
GO

/* INFORMATION ABOUT THE CLIENTS*/

select count(distinct ecommerce_sales_customer_analytics_150k.customer_id) from dbo.ecommerce_sales_customer_analytics_150k

select ecommerce_sales_customer_analytics_150k.gender,count(distinct ecommerce_sales_customer_analytics_150k.customer_id) from ecommerce_sales_customer_analytics_150k
group by ecommerce_sales_customer_analytics_150k.gender

/*Rassembler en groupes d'age*/
/*
alter table ecommerce_sales_customer_analytics_150k
drop column age_range

alter table ecommerce_sales_customer_analytics_150k
add age_range varchar(10)

update ecommerce_sales_customer_analytics_150k
set age_range = (CASE 
        WHEN customer_age < 20 THEN 'Under 20'
		WHEN customer_age BETWEEN 20 AND 30 THEN '20-30'
        WHEN customer_age BETWEEN 30 AND 40 THEN '30-40'
        WHEN customer_age BETWEEN 40 AND 50 THEN '40-50'
        WHEN customer_age BETWEEN 50 AND 60 THEN '50-60'
        WHEN customer_age BETWEEN 60 AND 70 THEN '60-70'
        ELSE '70+' 
    END)

select customer_age,age_range from ecommerce_sales_customer_analytics_150k
*/

select ecommerce_sales_customer_analytics_150k.age_range,count(distinct ecommerce_sales_customer_analytics_150k.customer_id) from ecommerce_sales_customer_analytics_150k
group by ecommerce_sales_customer_analytics_150k.age_range
order by ecommerce_sales_customer_analytics_150k.age_range

select ecommerce_sales_customer_analytics_150k.customer_country,count(distinct ecommerce_sales_customer_analytics_150k.customer_id) from ecommerce_sales_customer_analytics_150k
group by ecommerce_sales_customer_analytics_150k.customer_country

select ecommerce_sales_customer_analytics_150k.is_repeat_customer,count(distinct ecommerce_sales_customer_analytics_150k.customer_id) from ecommerce_sales_customer_analytics_150k
group by ecommerce_sales_customer_analytics_150k.is_repeat_customer

/*SALES*/
/*select * from ecommerce_sales_customer_analytics_150k*/


select sum(ecommerce_sales_customer_analytics_150k.gross_sales)
from ecommerce_sales_customer_analytics_150k

select sum(ecommerce_sales_customer_analytics_150k.net_sales)
from ecommerce_sales_customer_analytics_150k

select sum(ecommerce_sales_customer_analytics_150k.profit)
from ecommerce_sales_customer_analytics_150k

select ecommerce_sales_customer_analytics_150k.sales_channel,count(*) from ecommerce_sales_customer_analytics_150k
group by ecommerce_sales_customer_analytics_150k.sales_channel


/*Ajouter une colonne order_month*/
/*
alter table ecommerce_sales_customer_analytics_150k
add order_month int;
GO

update ecommerce_sales_customer_analytics_150k
set order_month = MONTH(order_date);

select order_date, order_month from ecommerce_sales_customer_analytics_150k
*/

select ecommerce_sales_customer_analytics_150k.order_month,count(*) from ecommerce_sales_customer_analytics_150k
group by ecommerce_sales_customer_analytics_150k.order_month
order by ecommerce_sales_customer_analytics_150k.order_month

/*Quel type de client rapporte le plus?*/
select ecommerce_sales_customer_analytics_150k.gender,count(ecommerce_sales_customer_analytics_150k.customer_id), sum(ecommerce_sales_customer_analytics_150k.profit) from ecommerce_sales_customer_analytics_150k
group by ecommerce_sales_customer_analytics_150k.gender

select ecommerce_sales_customer_analytics_150k.age_range,count(ecommerce_sales_customer_analytics_150k.customer_id), sum(ecommerce_sales_customer_analytics_150k.profit) from ecommerce_sales_customer_analytics_150k
group by ecommerce_sales_customer_analytics_150k.age_range
order by ecommerce_sales_customer_analytics_150k.age_range

select ecommerce_sales_customer_analytics_150k.customer_country,count(ecommerce_sales_customer_analytics_150k.customer_id), sum(ecommerce_sales_customer_analytics_150k.profit) from ecommerce_sales_customer_analytics_150k
group by ecommerce_sales_customer_analytics_150k.customer_country

