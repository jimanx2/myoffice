class CreateMinutemeetings < ActiveRecord::Migration
  def change
    create_table :minutemeetings do |t|
        t.string :title
        t.integer :meeting_id
        t.string :remark

      t.timestamps null: false
    end
  end
end
