class AddColumnApprovalTableclaim < ActiveRecord::Migration
  def change
      add_column :claims, :approvalstat_id, :integer
  end
end
