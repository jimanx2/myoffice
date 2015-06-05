class ChangeColumnEmployee < ActiveRecord::Migration
  def change
      remove_column :employees, :salary_id
      
  end
    
end
