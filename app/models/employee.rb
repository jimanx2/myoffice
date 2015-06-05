class Employee < ActiveRecord::Base
    belongs_to :department
    has_many :leaves
    has_many :salaries
    has_many :claims
    has_many :issues
    has_many :meetings
    belongs_to :position
    belongs_to :paymentstat
end
