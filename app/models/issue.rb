class Issue < ActiveRecord::Base
    belongs_to :assignee, class_name: "Employee", foreign_key: "assign_id"
    belongs_to :issuer, class_name: "Employee", foreign_key: "issueby_id"
    belongs_to :issuestat
  has_many :comments
end
