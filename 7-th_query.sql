with chosen_order as (
select
	*
from
	eshop.orders as o
where
	o.order_id = 10344) select
	ch_o.order_id as ch_o_order,
	ch_o.employee_id as ch_o_employee,
	ch_o.ship_via as ch_o_ship,
	o2.order_id as o2_order,
	o2.employee_id as o2_employee,
	o2.ship_via as o2_ship
from
	chosen_order as ch_o
join eshop.orders as o2 on
	o2.employee_id = ch_o.employee_id
where o2.ship_via=ch_o.ship_via;



--2 roz
select
	o1.order_id as o1_order_id,
	o1.employee_id as o1_employee_id,
	o1.ship_via as o1_ship_via,
	o2.order_id as o2_order_id,
	o2.employee_id as o2_employee_id,
	o2.ship_via as o2_ship_via
from
	eshop.orders as o1
join eshop.orders as o2 on
	o2.employee_id = o1.employee_id
where
	o1.order_id = 10344
	and o2.ship_via = o1.ship_via
order by
	o2.order_id asc;

-- 3 rozw

select
	o1.order_id as o1_order_id,
	o1.employee_id as o1_employee_id,
	o1.ship_via as o1_ship_via,
	o2.order_id as o2_order_id,
	o2.employee_id as o2_employee_id,
	o2.ship_via as o2_ship_via
from
	eshop.orders as o1
join eshop.orders as o2 on
	o2.employee_id = o1.employee_id
	and o2.ship_via = o1.ship_via
where
	o1.order_id = 10344
order by
	o2.order_id asc;