class Salary < ActiveRecord::Base
    belongs_to :employee
    belongs_to :paymenttype
    belongs_to :paymentstat
    belongs_to :rate
end
