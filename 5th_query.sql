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