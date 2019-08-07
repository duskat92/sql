--wywietl wszystkie zamowienia, dostarczane przez dostrczane przez tego samego shippera,
-- co shipper w zamowieniu od id =10249
 select
	s.company_name,
	o2.ship_via,
	o2.order_id
from
	eshop.orders as o
join eshop.shippers as s on
	o.ship_via = s.shipper_id
join eshop.orders as o2 on
	o2.ship_via = s.shipper_id
where
	o.order_id = 10249;