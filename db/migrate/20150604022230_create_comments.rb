class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
        t.integer :employee_id
        t.integer :issue_id
        t.string :text

      t.timestamps null: false
    end
  end
end
