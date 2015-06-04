class Issue < ActiveRecord::Base
    belongs_to :employee
    belongs_to :issuestat
end
