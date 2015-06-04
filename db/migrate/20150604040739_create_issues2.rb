class CreateIssues2 < ActiveRecord::Migration
  def change
    add_column :issues, :title, :string
  end
end
