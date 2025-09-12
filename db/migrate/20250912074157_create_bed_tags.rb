class CreateBedTags < ActiveRecord::Migration[8.0]
  def change
    create_table :bed_tags do |t|
      t.string :name
      t.timestamps
    end
  end
end
