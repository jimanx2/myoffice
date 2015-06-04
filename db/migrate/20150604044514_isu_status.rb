class IsuStatus < ActiveRecord::Migration
  def change
    add_column :issues, :issuestat_id, :integer
  end
end
