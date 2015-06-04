class Claim < ActiveRecord::Base
    belongs_to :employee
    belongs_to :claimtype
    has_many :claimattachments
    belongs_to :approvalstat
end
