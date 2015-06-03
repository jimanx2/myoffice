class CreateApprovalstats < ActiveRecord::Migration
  def change
    create_table :approvalstats do |t|
        t.string :name

      t.timestamps null: false
    end
  end
end
