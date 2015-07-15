# encoding: utf-8

require 'helper'

class TestFakerNamePL < Test::Unit::TestCase
  def setup
    @tester = FFaker::NamePL
  end

  def test_name
    assert_match(/(\w+\.? ?){2,5}/, @tester.name)
  end
end
