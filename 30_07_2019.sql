alter table
	products drop
		column if exists supplier_id;

select
	*
from
	products;

create
	table
		if not exists eshop.product_supplier ( id int2 not null,
		product_id int2 not null,
		supplier_id int2 not null,
		constraint pk_product_supplier primary key (id),
		constraint fk_product_product_id foreign key (product_id) references products(product_id),
		constraint fk_supplier_supplier_id foreign key (supplier_id) references suppliers(supplier_id) );

select
	*
from
	eshop.product_supplier;

insert
	into
		eshop.product_supplier
	values (1,
	2,
	1);

insert
	into
		eshop.product_supplier
	values (2,
	2,
	2);

insert
	into
		eshop.product_supplier
	values (3,
	2,
	3);

insert
	into
		eshop.product_supplier
	values (4,
	4,
	1);

insert
	into
		eshop.product_supplier
	values (5,
	6,
	2);

insert
	into
		eshop.product_supplier
	values (6,
	3,
	1);

insert
	into
		eshop.product_supplier
	values (7,
	8,
	3);

insert
	into
		eshop.product_supplier
	values (8,
	5,
	2); 

select * from eshop.product_supplier;
	
select
		s.company_name,
		s.supplier_id,
		p.product_id,
		p.product_name,
		p.unit_price
	from
		eshop.suppliers as s
	join eshop.product_supplier as ps on
		s.supplier_id = ps.supplier_id
	join eshop.products as p on p.product_id=ps.product_id
	where p.unit_price>=21
	order by s.supplier_id asc, p.product_id asc ;