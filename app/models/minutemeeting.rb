class Minutemeeting < ActiveRecord::Base
    belongs_to :meeting
    has_many :meetingattachments
end
