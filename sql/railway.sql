select a.full_name, a.full_name_mandarin, iata, jr_station_name, ticket_price_jpy as jr_$, 
duration as avg_jr_time
from airport_to_jr aj join airport a
on aj.airport_iata = a.iata
where jr_station_name = 'Tokyo'
