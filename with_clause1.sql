with emp_from_north as (select
	distinct e.employee_id as id
from
	eshop.region as r
join eshop.territories as t on
	r.region_id=t.region_id
join eshop.employee_territories as e_t on
	e_t.territory_id=t.territory_id
join eshop.employees as e on
	e.employee_id=e_t.employee_id
where r.region_description='Northern')
select * from emp_from_north join eshop.orders as o on
o.employee_id=emp_from_north.id;