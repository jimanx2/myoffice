class Rate < ActiveRecord::Base
    has_many :salaries
    belongs_to :position
    belongs_to :workerstatus
end
