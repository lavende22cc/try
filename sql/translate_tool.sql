select jr_station_eng from jr_station
where jr_station_mandarin ilike '首爾' 
or jr_station_eng ilike 'tokyo'
/*if return size = 0 print("please be careful to your input format...")
print("otherwise" + "首爾" + " is not yet supported")*/
