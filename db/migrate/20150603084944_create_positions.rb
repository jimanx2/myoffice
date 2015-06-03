class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
        t.string :name
        t.string :code
        t.integer :eligibilityleave

      t.timestamps null: false
    end
  end
end
