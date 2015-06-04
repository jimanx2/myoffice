class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
        
        t.string :description
        t.integer :issueby_id
        t.integer :assign_id
        t.string :action
        t.string :remark

      t.timestamps null: false
    end
  end
end
