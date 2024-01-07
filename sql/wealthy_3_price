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
), wealthy_t3_pri as (
	select *
	from wealthy_t_ w
	join airport_to_jr aj on w.iata = aj.airport_iata
	where aj.jr_station_name = 'Tokyo' 
	and ticket_price >= 20000
), wealthy_3_pri as (
	select full_name, full_name_mandarin, w.iata, airline,
	departure_time, landing_time, avg(fly_duration) as avg_duration, avg(ticket_price) as avg_ticket_$
	from wealthy_t3_pri w
	join airport a on w.iata = a.iata
	group by full_name, full_name_mandarin, w.iata, airline, departure_time, landing_time
	order by avg(ticket_price) desc
	limit 5
)
select * from wealthy_3_pri;
