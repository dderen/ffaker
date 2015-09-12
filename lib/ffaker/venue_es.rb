# encoding: utf-8

module FFaker
  module VenueES
    extend ModuleUtils
    extend self

    def name
      VENUE_LIST.sample
    end
  end
end
