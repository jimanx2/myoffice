class CreateTicketcomments < ActiveRecord::Migration
  def change
    create_table :ticketcomments do |t|
      t.integer :issue_id
      t.integer :employee_id
      t.string :remark

      t.timestamps null: false
    end
  end
end
