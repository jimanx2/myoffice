class CreatePaymentstats < ActiveRecord::Migration
  def change
    create_table :paymentstats do |t|
        t.string :status

      t.timestamps null: false
    end
  end
end
