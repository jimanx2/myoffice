class Position < ActiveRecord::Base
    has_many :rates
    has_many :employees
end
