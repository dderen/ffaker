# encoding: utf-8

require 'ffaker/name'

module FFaker
  module NamePL
    include FFaker::Name

    extend ModuleUtils
    extend self

    PREFIXES = ['Dr med', 'Dr', 'Prof.', 'Inż.', 'Mgr']

    def name
      case rand(30)
      when 0 then "#{prefix} #{first_name} #{last_name}"
      else        "#{first_name} #{last_name}"
      end
    end

    def first_name
      FIRST_NAME.sample
    end

    def last_name
      LAST_NAME.sample
    end

    def prefix
      PREFIXES.sample
    end
  end
end
