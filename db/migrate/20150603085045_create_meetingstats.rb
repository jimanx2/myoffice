class CreateMeetingstats < ActiveRecord::Migration
  def change
    create_table :meetingstats do |t|
        t.string :name

      t.timestamps null: false
    end
  end
end
