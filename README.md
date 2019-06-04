In order to run this app one should type ``` ruby WeatherApp.rb <city> ```. One will receive current conditions and
precise coordinates of a given city.

WeatherApp.rb is a simple app that uses openweathermap.org API to obtain weather conditions of a given location. It
captures command line argument with a ARGV then HTTParty makes a request that returns JSON with all the required data
and response is parsed with JSON gem.
