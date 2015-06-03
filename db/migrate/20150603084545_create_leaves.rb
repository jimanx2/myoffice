class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.integer :employee_id
      t.datetime :startdate
      t.datetime :enddate
        t.string :remark
        t.integer :approveby_id
        t.integer :approvalstat_id
        t.integer :leavetype_id

      t.timestamps null: false
    end
  end
end
