--mamy produkt o takiej nazwie: 'Teatime Chocolate Biscuits'
-- wyświetl wszystkie nazwy produtków z jego kategorii

 select
	p.product_name,
	c.category_name,
	c.category_id,
	p2.product_name
from
	eshop.products as p
join eshop.categories as c on
	p.category_id = c.category_id
join eshop.products as p2 on
	p2.category_id = c.category_id
where
	p.product_name = 'Teatime Chocolate Biscuits';