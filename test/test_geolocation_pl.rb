# encoding: utf-8

require 'helper'

class TestGeolocationPL < Test::Unit::TestCase

  def setup
    @tester = FFaker::NamePL
  end

  def test_lat
    assert_match /[0-9]+/, FFaker::GeolocationPL.lat.to_s
  end

  def test_lng
    assert_match /[0-9]+/, FFaker::GeolocationPL.lng.to_s
  end
end
