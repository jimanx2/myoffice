class Salary < ActiveRecord::Base
    has_many :employees
    belongs_to :paymenttype
    belongs_to :paymentstat
end
