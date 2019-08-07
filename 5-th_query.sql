--pobierz wszystkie terytoria, które znajdują się w tym samym regionie co terytorium Atlanta.

select *
from
	eshop.territories as t
join eshop.region as r on
	t.region_id = r.region_id
join eshop.territories as t2 on
	t2.region_id=r.region_id
where t.territory_description='Atlanta';