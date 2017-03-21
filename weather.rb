require 'httparty'

class weather
  attr_reader :zipcode
  def initialize(@zipcode)
  
end

puts "What is your Zip Code?"
zipcode = gets.chomp

weather = HTTParty.get("http://api.wunderground.com/api/8cd8b07cf03f2c20/conditions/q/#{zipcode}.json")

puts weather["current_observation"]["display_location"]
