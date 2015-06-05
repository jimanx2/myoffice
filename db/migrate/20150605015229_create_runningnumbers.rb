class CreateRunningnumbers < ActiveRecord::Migration
  def change
    create_table :runningnumbers do |t|
      t.string :rntype
      t.string :code
      t.integer :counter

      t.timestamps null: false
    end
  end
end
