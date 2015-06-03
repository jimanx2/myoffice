class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :employeenum
      t.integer :department_id
      t.integer :position_id
      t.string :phonenum
      t.string :email
      t.string :address
      t.integer :eligibilityleave
        
      t.timestamps null: false
    end
  end
end
