require 'minitest/autorun'
require 'minitest/pride'
require './weather.rb'

class WeatherTest < Minitest::Test
  def test_initialize
    assert Weather.new(27701)
  end

  def test_get_weather
    assert_equal Weather.new(27701).get_weather["display_location"]["full"], "Durham, NC"
  end

  def test_forecast
    assert_equal Weather.new(27701).forecast, "The weather in Durham, NC is 72.6 degrees Fahreinheit and Clear. Winds are Calm so it actually feels like 72.6 degrees."
  end
end
