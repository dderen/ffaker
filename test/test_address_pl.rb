# encoding: utf-8

require 'helper'

class TestAddressPL < Test::Unit::TestCase

  def setup
    @tester = FFaker::AddressPL
  end

  def test_street_name
    assert_match /[ a-z]+/, @tester.street_name
  end

  def test_street_address
    assert_match /[ a-z]+/, @tester.street_address
  end

  def test_street_nbr
    assert_match /[ 0-9]{1,3}[ab]]/, @tester.street_nbr
  end

  def test_zip_code
    assert_match /^\d{2}\-\d{3}$/, @tester.zip_code
  end

  def test_city
    assert_match /[ a-z]+/, @tester.city
  end

  def test_full_address
    assert_match /[ a-z]+]/, @tester.full_address
  end
end
