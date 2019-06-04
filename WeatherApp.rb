require 'json'
require 'httparty'

city = ARGV[0]
url = "https://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=20610c490c528b811e063aa0d80b05b1"
response = HTTParty.get(url).to_s
weather = JSON.parse(response)

puts "Weather Description: #{weather['weather'].first.fetch('main')}"
puts "Temperature: #{(weather['main']['temp'] - 272.15).round} [°C]"
puts "Pressure: #{weather['main']['pressure']} [hPa]"
puts "Humidity: #{weather['main']['humidity']} [%]"
puts "Wind: #{weather['wind']['speed']} [m/s]"
puts "Longitude:  #{weather['coord']['lon']}"
puts "Latitude: #{weather['coord']['lat']}"
