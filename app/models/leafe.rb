class Leafe < ActiveRecord::Base
    belongs_to :employee
    belongs_to :approver, class_name: "Employee", foreign_key: "approveby_id"
    belongs_to :approvalstat
    belongs_to :leavetype
end
