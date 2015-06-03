class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
        t.integer :claimtype_id
        t.string :remark

      t.timestamps null: false
    end
  end
end
