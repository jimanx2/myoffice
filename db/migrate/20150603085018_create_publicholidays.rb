class CreatePublicholidays < ActiveRecord::Migration
  def change
    create_table :publicholidays do |t|
        t.datetime :date
        t.string :name

      t.timestamps null: false
    end
  end
end
