class AddColumnSalary < ActiveRecord::Migration
  def change
      add_column :salaries, :employee_id, :integer
      
  end
end
