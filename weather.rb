require 'httparty'

class Weather
  attr_reader :zipcode
  def initialize(number)
    @zipcode = number

    #if number != ##### then puts this is not a valid zipcode
  end

  def get_weather
    weather_lookup = HTTParty.get("http://api.wunderground.com/api/8cd8b07cf03f2c20/conditions/q/#{@zipcode}.json")
    weather_lookup["current_observation"]["display_location"]
  end

  def forecast
    #@weather
    #weather["current_observation"]
  end
end


puts "Enter your zipcode!"
zip = Weather.new(gets.chomp).get_weather

puts zip
