class CreateLocationTagMaps < ActiveRecord::Migration[8.0]
  def change
    create_table :location_tag_maps do |t|
      t.belongs_to :location, null: false, foreign_key: true
      t.belongs_to :location_tag, null: false, foreign_key: true
      t.timestamps
    end

    add_index :location_tag_maps, [ :location_id, :location_tag_id ], unique: true
  end
end
