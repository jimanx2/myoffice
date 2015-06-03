class CreateClaimtypes < ActiveRecord::Migration
  def change
    create_table :claimtypes do |t|
        t.string :name

      t.timestamps null: false
    end
  end
end
