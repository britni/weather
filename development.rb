require './weather.rb'

puts "Want the current weather? Enter your Zip Code."
zipcode = gets.chomp
puts Weather.new(zipcode).forecast
