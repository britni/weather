require 'minitest/autorun'
require 'minitest/pride'
require './weather.rb'

class WeatherReportTest < Minitest::Test
  def test_initialize
    assert Weather.new(27701)
  end

  def test_get_weather
    assert Weather.new(27701).get_weather["display_location"]["full"] == "Durham, NC"
  end
end
