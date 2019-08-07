-- pokaż imię/nazwisko innych klientów, których obsługuje pracownik, obsługujący również klienta o id=5

 select
	c."FirstName",
	c."LastName",
	e."EmployeeId",
	c2."FirstName",
	c2."LastName"
from
	public."Customer" as c
join public."Employee" as e on
	c."SupportRepId" = e."EmployeeId"
join public."Customer" as c2 on
	c2."SupportRepId"=e."EmployeeId"
where c."CustomerId"=5;

-- II rozwiązanie

with base_customer as (
select
	c."SupportRepId" as empl_id
from
	public."Customer" as c
where
	c."CustomerId" = 5)
select bc.empl_id,c."FirstName", c."LastName" from base_customer as bc join public."Customer" as c on c."SupportRepId" = bc.empl_id;

-- III rozwiązanie

select
	c."FirstName",
	c."LastName",
	e."EmployeeId"
from
	public."Customer" as c
join public."Employee" as e on
	c."SupportRepId" = e."EmployeeId"
where
	e."EmployeeId" = (
		select c2."SupportRepId"
	from
		public."Customer" as c2
	where
		c2."CustomerId" = 5);