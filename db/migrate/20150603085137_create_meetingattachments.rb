class CreateMeetingattachments < ActiveRecord::Migration
  def change
    create_table :meetingattachments do |t|
        t.string :filename
        t.string :uri
        t.string :mimetype
        t.integer :minutemeeting_id

      t.timestamps null: false
    end
  end
end
