class AddColumnTableRate < ActiveRecord::Migration
  def change
      add_column :rates, :workerstatus_id, :integer
  end
end
