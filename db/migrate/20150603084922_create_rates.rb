class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
        t.integer :position_id
        t.float :amount

      t.timestamps null: false
    end
  end
end
