with get_base as (
select
	c.*,
	substring(c.pesel, 1, 2) as "year",
	substring(c.pesel, 3, 2) as "month",
	substring(c.pesel, 5, 2) as "day"
from
	eshop.citizen as c),
get_year as (
select
	gb.id,
	gb.full_name,
	gb.pesel,
	gb."month",
	gb."day",
	case
		when gb."month"::int>20
		and "month"::int<33 then concat('20', gb."year")
		else concat('19', gb."year")
	end as "year"
from
	get_base as gb ),
get_month as (
select
	gy.id,
	gy.full_name,
	gy.pesel,
	gy."day",
	gy."year",
	case
		when gy."month"::int>20
		and gy."month"::int<33 then gy."month"::int-20
		else gy."month"::int
	end as "month"
from
	get_year as gy),
modify_month as (
select
	gm.id,
	gm.full_name,
	gm.pesel,
	gm."day",
	gm."year",
	case
		when gm."month">0
		and gm."month"<10 then concat('0', gm."month")
		else gm."month"::text
	end as "month"
from
	get_month as gm) select
	mm.id,
	mm.full_name,
	mm.pesel,
	concat(mm."year", '-', mm."month", '-', mm."day" ) as birth_date,
	age(now()::timestamp, concat(mm."year", '-', mm."month", '-', mm."day" )::date),
	case
		when (mm."year"::int % 4 = 0
		and mm."year"::int % 100 != 0)
		or mm."year"::int % 400 = 0 then true
		else false
	end as leap_year
from
	modify_month as mm;