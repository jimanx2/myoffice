class Approvalstat < ActiveRecord::Base
    has_many :leaves
    has_many :claims
end
