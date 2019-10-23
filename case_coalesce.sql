--ex 1

select
	o.order_id,
	o.freight,
	coalesce (
	case
		when o.freight >= 59 then 'heavy'
		when o.freight > 10 then 'light'
		when o.freight >= 0 then 'very light'
	end,
	'unkown')
from
	ESHOP.orders as o
order by
	o.order_id;


-- Ex. 2

select
	p.product_id,
	case
		when p.unit_price > 30 then 'very expensive'
		when p.unit_price > 20 then 'expensive'
		when p.unit_price is null then 0
		else 'cheap'
	end
from
	ESHOP.PRODUCTS as p
order by
	p.product_id;

	-- Ex 3
	select
    	count(*),
    	coalesce(c.region, 'unknow')
    from
    	eshop.customers as c
    group by
    	coalesce(c.region, 'unknow')
    order by
    	count(*) desc;