class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
        t.string :objective
        t.datetime :startdate
        t.datetime :enddate
        t.integer :meetingstat_id
        t.string :remark
        t.integer :employee_id

      t.timestamps null: false
    end
  end
end
