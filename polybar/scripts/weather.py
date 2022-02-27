import openweather
from datetime import datetime


# create client
ow = openweather.OpenWeather()

# find weather stations near me
stations = ow.find_stations_near(
    7.0,  # longitude
    50.0, # latitude
    100   # kilometer radius
)

# iterate results
for station in stations:
    print(station)

# get current weather at Cologne/Bonn airport
# (station id = 4885)
print(ow.get_weather(4885))

# historic weather
start_date = datetime(2013, 9, 10)
end_date = datetime(2013, 9, 15)

# default: hourly interval
print(ow.get_historic_weather(4885, start_date, end_date))

# daily aggregates
print(ow.get_historic_weather(4885, start_date, end_date, "day"))