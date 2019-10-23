 select
	count(od.order_id) as od_count, e.last_name
from
	eshop.products as p
join eshop.order_details as od on
	p.product_id = od.product_id
join eshop.orders as o on
	o.order_id=od.order_id
join eshop.employees as e on
	e.employee_id=o.employee_id
where
	p.product_name = 'Chang' and (e.last_name='Peacock' or e.last_name='King')
group by e.last_name
having count(od.order_id)>=2;

 select
	r.region_id as r_id,
	r.region_description as r_desc,
	t.territory_description,
	t.territory_id as t_id,
	e.employee_id as e_id,
	o.order_id as o_id,
	p.product_id
from
	eshop.region as r
join eshop.territories as t on
	r.region_id = t.region_id
join eshop.employee_territories as e_t on
	e_t.territory_id=t.territory_id
join eshop.employees as e on
	e.employee_id=e_t.employee_id
join eshop.orders as o on
	o.employee_id=e_t.employee_id
join eshop.order_details as o_d on
	o_d.order_id=o.order_id
join eshop.products as p on
	p.product_id=o_d.product_id
where p.product_name = 'Ikura';