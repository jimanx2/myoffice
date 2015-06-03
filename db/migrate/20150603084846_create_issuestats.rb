class CreateIssuestats < ActiveRecord::Migration
  def change
    create_table :issuestats do |t|
        t.string :status

      t.timestamps null: false
    end
  end
end
