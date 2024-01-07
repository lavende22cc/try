with wealthy_date as (
	select landing_airport_iata as iata, date, avg(ticket_price) as avg_fly_$
	from airport_to_flight
	group by landing_airport_iata, date
	order by avg(ticket_price) desc
	limit 30
)

select w.iata, w.date, ticket_price, departure_time, landing_time, duration, airline
from wealthy_date w
join airport_to_flight f
on w.date = f.date
