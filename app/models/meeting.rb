class Meeting < ActiveRecord::Base
    belongs_to :employee
    belongs_to :meetingstat
    has_many :minutemeetings
end
