# encoding: utf-8

require 'ffaker/address'

module FFaker
  module AddressPL
    include FFaker::Address

    extend ModuleUtils
    extend self

    def street_name
      "ul. #{STREET.sample}"
    end

    def street_address
      "#{street_name} #{street_nbr}"
    end

    def street_nbr
      FFaker.numerify case rand(22)
        when 6..15 then '##'
        when 16..18 then '###'
        when 19 then '#a'
        when 20 then '#b'
        when 21 then '##a'
        when 22 then '##b'
        else '#'
      end
    end

    def zip_code
      FFaker.numerify ['##-###']
    end

    def city
      CITY.sample
    end

    def full_address
      "#{street_address}, #{zip_code} #{city}, Polska"
    end
  end
end
