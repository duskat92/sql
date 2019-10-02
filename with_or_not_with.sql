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