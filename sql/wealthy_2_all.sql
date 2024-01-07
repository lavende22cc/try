with wealthy_date as (
	select landing_airport_iata as iata, date, avg(ticket_price) as avg_fly_$
	from airport_to_flight
	group by landing_airport_iata, date
	order by avg(ticket_price) desc
	limit 30
), wealthy_t_ as (
	select w.iata, w.date, ticket_price, departure_time, landing_time, duration as fly_duration, airline
	from wealthy_date w, airport_to_flight f
	where w.date = f.date and w.iata = f.landing_airport_iata
), wealthy_t2_all as (
	select *
	from wealthy_t_ w
	join airport_to_jr aj on w.iata = aj.airport_iata
	where aj.jr_station_name = 'Tokyo' 
	and ticket_price between 15000 and 30000
), wealthy_2_all as (
	select full_name, full_name_mandarin, w.iata, airline,
	departure_time, landing_time, fly_duration, avg(ticket_price) as avg_ticket_$
	from wealthy_t2_all w
	join airport a on w.iata = a.iata
	group by full_name, full_name_mandarin, w.iata, airline, departure_time, landing_time, fly_duration
	order by fly_duration asc, avg_ticket_$ asc
	limit 5
)
select * from wealthy_2_all;
