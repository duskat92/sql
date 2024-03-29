with latest_order as(
select
	'latest order' as "label",
	o.order_date as "date"
from
	orders as o
order by
	o.order_date desc
limit 1),
oldest_order as(
select
	'oldest order' as "label1",
	o.order_date as "date"
from
	orders as o
order by
	o.order_date asc
limit 1) select
	*
from
	(
		select *
	from
		latest_order
union all
	select
		*
	from
		oldest_order) as ord
order by
	ord."date" asc;


	with best_employee as(
    select
    	'top_employee' as "label",
    	count(order_id),
    	employee_id
    from
    	eshop.orders as o
    group by
    	employee_id
    order by
    	count(order_id) desc
    limit 1),
    most_popular_category as(
    select
    	'top_category',
    	count(p.product_id),
    	p.category_id
    from
    	eshop.products as p
    group by
    	p.category_id
    order by
    	count(p.product_id) desc
    limit 1),
    top_shipper as (
    select
    	'top_shipper',
    	count(order_id),
    	ship_via
    from
    	eshop.orders
    group by
    	ship_via
    order by
    	count(order_id) desc
    limit 1) select
    	*
    from
    	((
    	select
    		*
    	from
    		best_employee)
    union all(
    select
    	*
    from
    	most_popular_category )
    union all (
    select
    *
    from
    top_shipper)) as ranking;