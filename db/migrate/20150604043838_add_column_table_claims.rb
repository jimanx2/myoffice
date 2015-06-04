class AddColumnTableClaims < ActiveRecord::Migration
  def change
       add_column :claims, :totalclaim, :float
       add_column :claims, :employee_id, :integer
  end
end
