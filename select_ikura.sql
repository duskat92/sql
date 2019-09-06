with pro as (
select
	'Ikura' as product_name),
ie as (
select
	e.employee_id as id
from
	eshop.products as p
join eshop.order_details as od on
	od.product_id = p.product_id
	and p.product_name ~ (
		select *
	from
		pro)
join eshop.orders as o on
	o.order_id = od.order_id
join eshop.employees as e on
	e.employee_id = o.employee_id),
ter as (
select
	*
from
	eshop.employee_territories as et
join ie on
	ie.id = et.employee_id
join eshop.territories as t on
	t.territory_id = et.territory_id
join eshop.region as r on
	r.region_id = t.region_id) select
	ter.employee_id,
	ter.territory_description,
	ter.region_description,
	(
		select *
	from
		pro)
from
	ter
order by
	ter.region_description,
	ter.territory_description,
	employee_id;