class CreateWorkerstatuses < ActiveRecord::Migration
  def change
    create_table :workerstatuses do |t|
        t.string :name
        t.integer :code

      t.timestamps null: false
    end
  end
end
