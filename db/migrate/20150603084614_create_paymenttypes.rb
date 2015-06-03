class CreatePaymenttypes < ActiveRecord::Migration
  def change
    create_table :paymenttypes do |t|
        t.string :name

      t.timestamps null: false
    end
  end
end
