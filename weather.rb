require 'httparty'

class Weather
  attr_reader :zipcode
  def initialize(number)
    @zipcode = number

    #if number != ##### then puts this is not a valid zipcode
  end

  def get_weather
    weather_lookup = HTTParty.get("http://api.wunderground.com/api/8cd8b07cf03f2c20/conditions/q/#{@zipcode}.json")
    weather_lookup["current_observation"]
  end

  def forecast
    get_weather
    puts "The weather in #{get_weather["display_location"]["full"]} is #{get_weather["temp_f"]} degrees Fahreinheit and #{get_weather["weather"]}. Winds are #{get_weather["wind_string"]} so it actually feels like #{get_weather["feelslike_f"]} degrees."
  end
end


#puts "Enter your zipcode!"
zip = Weather.new(27713).forecast

puts zip
