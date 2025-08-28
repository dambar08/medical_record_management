class CreateAnnouncements < ActiveRecord::Migration[8.0]
  def change
    create_table :announcements do |t|
      t.string :title
      t.string :announcement_type
      t.text :message

      t.timestamps
    end
  end
end
