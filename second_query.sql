--tacy pracownicy,
--którzy mają  income typu BONUS, i mają podwładnego (lub podwtładnych)
select distinct boss.title, boss.last_name, boss.employee_id, i.* from eshop.employees as boss
join eshop.employees as employee on employee.reports_to=boss.employee_id
join eshop.employee_income as ei on
	boss.employee_id = ei.employee_id
join eshop.income as i on ei.id=i.id
where i."type"= 'BONUS' ;