 select distinct
	p.product_id as p_product_id,
	p.product_name as p_product_name,
	p.category_id as p_category_id,
	od.order_id as od_order_id,
	p2.product_id as p2_product_id
from
	eshop.products as p
join eshop.order_details as od
on p.product_id=od.product_id
join eshop.products as p2
on p2.category_id=p.category_id
where od.order_id=10250
order by p.product_id desc, p.category_id desc, p2.product_id desc;



-- wyświetl wszystkie produkty, z tej samej kategorii co produkt zamówiony w powyższym zamówieniu
-- 10250 order_ird