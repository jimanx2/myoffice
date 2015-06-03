class CreateClaimattachments < ActiveRecord::Migration
  def change
    create_table :claimattachments do |t|
        t.string :filename
        t.string :uri
        t.string :mimetype
        t.integer :claim_id

      t.timestamps null: false
    end
  end
end
