use ecommerce
go

select * from product_catalog

select count(distinct order_items.product_id) from order_items


select order_items.product_id,sum(order_items.quantity) as total_quantity,sum(order_items.profit) as total_profit 
into quantity_profit_product
from order_items
group by order_items.product_id


select product_catalog.product_category,sum(order_items.quantity) as total_quantity,sum(order_items.profit) as total_profit
into quantity_profit_category
from order_items
LEFT JOIN product_catalog ON order_items.product_id=product_catalog.product_id
group by product_catalog.product_category

select * from quantity_profit_category
order by total_quantity

select * from quantity_profit_product
order by total_quantity
