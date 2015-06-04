class Employee < ActiveRecord::Base
    belongs_to :department
    has_many :leaves
    belongs_to :salary
    has_many :claims
end
