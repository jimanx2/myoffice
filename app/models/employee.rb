class Employee < ActiveRecord::Base
    belongs_to :department
    has_many :leaves
    has_many :salaries
    has_many :claims
    has_many :issues
    has_many :meetings
    belongs_to :position
    
    def salary_paid
        salaries.select {|salary|
            salary.date.month == Time.now.month    
        }.count > 0 ? "PAID" : "UNPAID"
    end
end
