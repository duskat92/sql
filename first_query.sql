select
	*
from
	eshop.products as p
join eshop.categories as c on
	p.category_id = c.category_id