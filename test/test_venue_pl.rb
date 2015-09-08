# encoding: utf-8

require 'helper'

class TestVenuePL < Test::Unit::TestCase
  def test_name
    assert_match /1\+|[ a-z']+/i, FFaker::VenuePL.name
  end
end
