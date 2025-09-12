class CreateBedLocations < ActiveRecord::Migration[8.0]
  def change
    create_table :bed_locations do |t|
      t.belongs_to :bed
      t.belongs_to :location
      t.integer :row
      t.integer :column
      t.timestamps
    end
  end
end
