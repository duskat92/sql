select
	p.product_id
from
	eshop.products as p
where
	p.category_id = (
		select c.category_id
	from
		eshop.categories as c
	where
		c.category_name = 'Produce');

-- or

with task as (select c.category_id
	from
		eshop.categories as c
	where
		c.category_name = 'Produce')
select * from task join eshop.products as p on
p.category_id=task.category_id;


select * from eshop.orders as o
where
o.order_id%2 = 0;


-- and nieparzyste

select * from eshop.orders as o
where
o.order_id%2 = 1;

--and podzielne przez 10

select * from eshop.orders as o
where
o.order_id%10 != 0;

--and niepodzielne przez 10

select * from eshop.orders as o
where
not o.order_id%10 = 0;