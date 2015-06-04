class AddColumnTableClaims < ActiveRecord::Migration
  def change
       add_column :claims, :totalclaim, :float
  end
end
