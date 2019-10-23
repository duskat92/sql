 select
	p.product_id,
	p.product_name,
	od.product_id as od_product_id,
	od.order_id as od_order_id,
	od2.order_id as od2_order_id,
	od2.product_id as od2_product_id
from
	eshop.products as p
join eshop.order_details as od on
	p.product_id = od.product_id
join eshop.order_details as od2 on
	od2.order_id=od.order_id
where
	p.product_name = 'Chang';

-- do a full join or left join