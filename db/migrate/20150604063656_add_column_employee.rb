class AddColumnEmployee < ActiveRecord::Migration
  def change
      add_column :employees, :salary_id, :integer
  end
end
