require 'httparty'

class Weather
  attr_reader :zipcode
  def initialize(number)
    @zipcode = number
    weather_lookup_raw = HTTParty.get("http://api.wunderground.com/api/8cd8b07cf03f2c20/conditions/q/#{@zipcode}.json")
    @weather_lookup = weather_lookup_raw["current_observation"]
  end

  def get_weather
    @weather_lookup
  end

  def forecast
    "The weather in #{@weather_lookup["display_location"]["full"]} is #{@weather_lookup["temp_f"]} degrees Fahreinheit and #{@weather_lookup["weather"]}. Winds are #{@weather_lookup["wind_string"]} so it actually feels like #{@weather_lookup["feelslike_f"]} degrees."
  end
end
