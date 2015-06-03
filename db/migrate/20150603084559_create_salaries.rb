class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
        t.integer :rate_id
        t.datetime :date
        t.integer :paymenttype_id
        t.integer :paymentstat_id

      t.timestamps null: false
    end
  end
end
