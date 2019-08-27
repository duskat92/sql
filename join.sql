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