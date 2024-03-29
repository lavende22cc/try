with poor_date as (
	select landing_airport_iata as iata, date, avg(ticket_price) as avg_fly_$
	from airport_to_flight
	group by landing_airport_iata, date
	order by avg(ticket_price) asc
	limit 30
), poor_t_ as (
	select p.iata, p.date, ticket_price, departure_time, landing_time, duration as fly_duration, airline
	from poor_date p, airport_to_flight f
	where p.date = f.date and p.iata = f.landing_airport_iata
), poor_t1_pri as (
	select *
	from poor_t_ p
	join airport_to_jr aj on p.iata = aj.airport_iata
	where aj.jr_station_name = 'Tokyo'
	and ticket_price <= 10000
), poor_1_pri as (
	select full_name, full_name_mandarin, p.iata, airline,
	departure_time, landing_time, avg(fly_duration) as avg_duration, avg(ticket_price) as avg_ticket_$
	from poor_t1_pri p
	join airport a on p.iata = a.iata
	group by full_name, full_name_mandarin, p.iata, airline, departure_time, landing_time
	order by avg(ticket_price)
	limit 5
)
select * from poor_1_pri;
