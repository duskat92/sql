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