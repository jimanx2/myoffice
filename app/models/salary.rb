class Salary < ActiveRecord::Base
    belongs_to :employees
    belongs_to :paymenttype
    belongs_to :paymentstat
    belongs_to :rate
end
